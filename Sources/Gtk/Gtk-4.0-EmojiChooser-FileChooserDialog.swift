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

// MARK: - EmojiChooser Class

/// The `EmojiChooserProtocol` protocol exposes the methods and properties of an underlying `GtkEmojiChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmojiChooser`.
/// Alternatively, use `EmojiChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkEmojiChooser` popover is used by text widgets such as `GtkEntry` or
/// `GtkTextView` to offer users a convenient way to insert Emoji characters.
/// 
/// GtkEmojiChooser emits the `GtkEmojiChooser::emoji`-picked signal when an
/// Emoji is selected.
/// 
/// # CSS nodes
/// (plain Language Example):
/// ```plain
/// popover
/// ├── box.emoji-searchbar
/// │   ╰── entry.search
/// ╰── box.emoji-toolbar
///     ├── button.image-button.emoji-section
///     ├── ...
///     ╰── button.image-button.emoji-section
/// ```
/// 
/// Every `GtkEmojiChooser` consists of a main node called popover.
/// The contents of the popover are largely implementation defined
/// and supposed to inherit general styles.
/// The top searchbar used to search emoji and gets the .emoji-searchbar
/// style class itself.
/// The bottom toolbar used to switch between different emoji categories
/// consists of buttons with the .emoji-section style class and gets the
/// .emoji-toolbar style class itself.
public protocol EmojiChooserProtocol: PopoverProtocol {
        /// Untyped pointer to the underlying `GtkEmojiChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEmojiChooser` instance.
    var emoji_chooser_ptr: UnsafeMutablePointer<GtkEmojiChooser>! { get }

}

/// The `EmojiChooserRef` type acts as a lightweight Swift reference to an underlying `GtkEmojiChooser` instance.
/// It exposes methods that can operate on this data type through `EmojiChooserProtocol` conformance.
/// Use `EmojiChooserRef` only as an `unowned` reference to an existing `GtkEmojiChooser` instance.
///
/// The `GtkEmojiChooser` popover is used by text widgets such as `GtkEntry` or
/// `GtkTextView` to offer users a convenient way to insert Emoji characters.
/// 
/// GtkEmojiChooser emits the `GtkEmojiChooser::emoji`-picked signal when an
/// Emoji is selected.
/// 
/// # CSS nodes
/// (plain Language Example):
/// ```plain
/// popover
/// ├── box.emoji-searchbar
/// │   ╰── entry.search
/// ╰── box.emoji-toolbar
///     ├── button.image-button.emoji-section
///     ├── ...
///     ╰── button.image-button.emoji-section
/// ```
/// 
/// Every `GtkEmojiChooser` consists of a main node called popover.
/// The contents of the popover are largely implementation defined
/// and supposed to inherit general styles.
/// The top searchbar used to search emoji and gets the .emoji-searchbar
/// style class itself.
/// The bottom toolbar used to switch between different emoji categories
/// consists of buttons with the .emoji-section style class and gets the
/// .emoji-toolbar style class itself.
public struct EmojiChooserRef: EmojiChooserProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEmojiChooser` instance.
    /// For type-safe access, use the generated, typed pointer `emoji_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EmojiChooserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEmojiChooser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEmojiChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEmojiChooser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEmojiChooser>?) {
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

    /// Reference intialiser for a related type that implements `EmojiChooserProtocol`
    @inlinable init<T: EmojiChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EmojiChooserProtocol>(_ other: T) -> EmojiChooserRef { EmojiChooserRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkEmojiChooser`.
    @inlinable init() {
        let rv = gtk_emoji_chooser_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EmojiChooser` type acts as a reference-counted owner of an underlying `GtkEmojiChooser` instance.
/// It provides the methods that can operate on this data type through `EmojiChooserProtocol` conformance.
/// Use `EmojiChooser` as a strong reference or owner of a `GtkEmojiChooser` instance.
///
/// The `GtkEmojiChooser` popover is used by text widgets such as `GtkEntry` or
/// `GtkTextView` to offer users a convenient way to insert Emoji characters.
/// 
/// GtkEmojiChooser emits the `GtkEmojiChooser::emoji`-picked signal when an
/// Emoji is selected.
/// 
/// # CSS nodes
/// (plain Language Example):
/// ```plain
/// popover
/// ├── box.emoji-searchbar
/// │   ╰── entry.search
/// ╰── box.emoji-toolbar
///     ├── button.image-button.emoji-section
///     ├── ...
///     ╰── button.image-button.emoji-section
/// ```
/// 
/// Every `GtkEmojiChooser` consists of a main node called popover.
/// The contents of the popover are largely implementation defined
/// and supposed to inherit general styles.
/// The top searchbar used to search emoji and gets the .emoji-searchbar
/// style class itself.
/// The bottom toolbar used to switch between different emoji categories
/// consists of buttons with the .emoji-section style class and gets the
/// .emoji-toolbar style class itself.
open class EmojiChooser: Popover, EmojiChooserProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmojiChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEmojiChooser>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmojiChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEmojiChooser>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmojiChooser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmojiChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmojiChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEmojiChooser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmojiChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEmojiChooser>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEmojiChooser`.
    /// i.e., ownership is transferred to the `EmojiChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEmojiChooser>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EmojiChooserProtocol`
    /// Will retain `GtkEmojiChooser`.
    /// - Parameter other: an instance of a related type that implements `EmojiChooserProtocol`
    @inlinable public init<T: EmojiChooserProtocol>(emojiChooser other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkEmojiChooser`.
    @inlinable override public init() {
        let rv = gtk_emoji_chooser_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EmojiChooserPropertyName: String, PropertyNameProtocol {
    case autohide = "autohide"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case cascadePopdown = "cascade-popdown"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case defaultWidget = "default-widget"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasArrow = "has-arrow"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
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
    case mnemonicsVisible = "mnemonics-visible"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case pointingTo = "pointing-to"
    case position = "position"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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
}

public extension EmojiChooserProtocol {
    /// Bind a `EmojiChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EmojiChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EmojiChooser property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EmojiChooserPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EmojiChooser property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EmojiChooserPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EmojiChooser
public extension EmojiChooserProtocol {
    /// The `emoji`-picked signal is emitted when the user selects an
    /// Emoji.
    /// - Note: Representation of signal named `emoji-picked`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter text: the Unicode sequence for the picked Emoji, in UTF-8
    @discardableResult
    func onEmojiPicked(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EmojiChooserRef, _ text: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EmojiChooserRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EmojiChooserRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return signalConnectData(
            detailedSignal: "emoji-picked", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: EmojiChooser Class: EmojiChooserProtocol extension (methods and fields)
public extension EmojiChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEmojiChooser` instance.
    @inlinable var emoji_chooser_ptr: UnsafeMutablePointer<GtkEmojiChooser>! { return ptr?.assumingMemoryBound(to: GtkEmojiChooser.self) }



}



// MARK: - Entry Class

/// The `EntryProtocol` protocol exposes the methods and properties of an underlying `GtkEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Entry`.
/// Alternatively, use `EntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkEntry` widget is a single line text entry
/// widget. A fairly large set of key bindings are supported
/// by default. If the entered text is longer than the allocation
/// of the widget, the widget will scroll so that the cursor
/// position is visible.
/// 
/// When using an entry for passwords and other sensitive information,
/// it can be put into “password mode” using `gtk_entry_set_visibility()`.
/// In this mode, entered text is displayed using a “invisible” character.
/// By default, GTK picks the best invisible character that is available
/// in the current font, but it can be changed with
/// `gtk_entry_set_invisible_char()`.
/// 
/// GtkEntry has the ability to display progress or activity
/// information behind the text. To make an entry display such information,
/// use `gtk_entry_set_progress_fraction()` or `gtk_entry_set_progress_pulse_step()`.
/// 
/// Additionally, GtkEntry can show icons at either side of the entry. These
/// icons can be activatable by clicking, can be set up as drag source and
/// can have tooltips. To add an icon, use `gtk_entry_set_icon_from_gicon()` or
/// one of the various other functions that set an icon from an icon name or a
/// paintable. To trigger an action when the user clicks an icon,
/// connect to the `GtkEntry::icon`-press signal. To allow DND operations
/// from an icon, use `gtk_entry_set_icon_drag_source()`. To set a tooltip on
/// an icon, use `gtk_entry_set_icon_tooltip_text()` or the corresponding function
/// for markup.
/// 
/// Note that functionality or information that is only available by clicking
/// on an icon in an entry may not be accessible at all to users which are not
/// able to use a mouse or other pointing device. It is therefore recommended
/// that any such functionality should also be available by other means, e.g.
/// via the context menu of the entry.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry[.flat][.warning][.error]
/// ├── text[.readonly]
/// ├── image.left
/// ├── image.right
/// ╰── [progress[.pulse]]
/// ```
/// 
/// GtkEntry has a main node with the name entry. Depending on the properties
/// of the entry, the style classes .read-only and .flat may appear. The style
/// classes .warning and .error may also be used with entries.
/// 
/// When the entry shows icons, it adds subnodes with the name image and the
/// style class .left or .right, depending on where the icon appears.
/// 
/// When the entry shows progress, it adds a subnode with the name progress.
/// The node has the style class .pulse when the shown progress is pulsing.
/// 
/// For all the subnodes added to the text node in various situations,
/// see `GtkText`.
/// 
/// # GtkEntry as GtkBuildable
/// 
/// The GtkEntry implementation of the GtkBuildable interface supports a
/// custom <attributes> element, which supports any number of <attribute>
/// elements. The <attribute> element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify `PangoAttribute` values for
/// this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```
/// <object class="GtkEnry">
///   <attributes>
///     <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
///     <attribute name="background" value="red" start="5" end="10"/>
///   </attributes>
/// </object>
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
/// GtkEntry uses the `GTK_ACCESSIBLE_ROLE_TEXT_BOX` role.
public protocol EntryProtocol: WidgetProtocol, CellEditableProtocol, EditableProtocol {
        /// Untyped pointer to the underlying `GtkEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntry` instance.
    var entry_ptr: UnsafeMutablePointer<GtkEntry>! { get }

}

/// The `EntryRef` type acts as a lightweight Swift reference to an underlying `GtkEntry` instance.
/// It exposes methods that can operate on this data type through `EntryProtocol` conformance.
/// Use `EntryRef` only as an `unowned` reference to an existing `GtkEntry` instance.
///
/// The `GtkEntry` widget is a single line text entry
/// widget. A fairly large set of key bindings are supported
/// by default. If the entered text is longer than the allocation
/// of the widget, the widget will scroll so that the cursor
/// position is visible.
/// 
/// When using an entry for passwords and other sensitive information,
/// it can be put into “password mode” using `gtk_entry_set_visibility()`.
/// In this mode, entered text is displayed using a “invisible” character.
/// By default, GTK picks the best invisible character that is available
/// in the current font, but it can be changed with
/// `gtk_entry_set_invisible_char()`.
/// 
/// GtkEntry has the ability to display progress or activity
/// information behind the text. To make an entry display such information,
/// use `gtk_entry_set_progress_fraction()` or `gtk_entry_set_progress_pulse_step()`.
/// 
/// Additionally, GtkEntry can show icons at either side of the entry. These
/// icons can be activatable by clicking, can be set up as drag source and
/// can have tooltips. To add an icon, use `gtk_entry_set_icon_from_gicon()` or
/// one of the various other functions that set an icon from an icon name or a
/// paintable. To trigger an action when the user clicks an icon,
/// connect to the `GtkEntry::icon`-press signal. To allow DND operations
/// from an icon, use `gtk_entry_set_icon_drag_source()`. To set a tooltip on
/// an icon, use `gtk_entry_set_icon_tooltip_text()` or the corresponding function
/// for markup.
/// 
/// Note that functionality or information that is only available by clicking
/// on an icon in an entry may not be accessible at all to users which are not
/// able to use a mouse or other pointing device. It is therefore recommended
/// that any such functionality should also be available by other means, e.g.
/// via the context menu of the entry.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry[.flat][.warning][.error]
/// ├── text[.readonly]
/// ├── image.left
/// ├── image.right
/// ╰── [progress[.pulse]]
/// ```
/// 
/// GtkEntry has a main node with the name entry. Depending on the properties
/// of the entry, the style classes .read-only and .flat may appear. The style
/// classes .warning and .error may also be used with entries.
/// 
/// When the entry shows icons, it adds subnodes with the name image and the
/// style class .left or .right, depending on where the icon appears.
/// 
/// When the entry shows progress, it adds a subnode with the name progress.
/// The node has the style class .pulse when the shown progress is pulsing.
/// 
/// For all the subnodes added to the text node in various situations,
/// see `GtkText`.
/// 
/// # GtkEntry as GtkBuildable
/// 
/// The GtkEntry implementation of the GtkBuildable interface supports a
/// custom <attributes> element, which supports any number of <attribute>
/// elements. The <attribute> element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify `PangoAttribute` values for
/// this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```
/// <object class="GtkEnry">
///   <attributes>
///     <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
///     <attribute name="background" value="red" start="5" end="10"/>
///   </attributes>
/// </object>
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
/// GtkEntry uses the `GTK_ACCESSIBLE_ROLE_TEXT_BOX` role.
public struct EntryRef: EntryProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEntry` instance.
    /// For type-safe access, use the generated, typed pointer `entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntry>?) {
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

    /// Reference intialiser for a related type that implements `EntryProtocol`
    @inlinable init<T: EntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EntryProtocol>(_ other: T) -> EntryRef { EntryRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new entry.
    @inlinable init() {
        let rv = gtk_entry_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new entry with the specified text buffer.
    @inlinable init<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) {
        let rv = gtk_entry_new_with_buffer(buffer.entry_buffer_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new entry with the specified text buffer.
    @inlinable static func newWith<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_entry_new_with_buffer(buffer.entry_buffer_ptr))) else { return nil }
        return rv
    }
}

/// The `Entry` type acts as a reference-counted owner of an underlying `GtkEntry` instance.
/// It provides the methods that can operate on this data type through `EntryProtocol` conformance.
/// Use `Entry` as a strong reference or owner of a `GtkEntry` instance.
///
/// The `GtkEntry` widget is a single line text entry
/// widget. A fairly large set of key bindings are supported
/// by default. If the entered text is longer than the allocation
/// of the widget, the widget will scroll so that the cursor
/// position is visible.
/// 
/// When using an entry for passwords and other sensitive information,
/// it can be put into “password mode” using `gtk_entry_set_visibility()`.
/// In this mode, entered text is displayed using a “invisible” character.
/// By default, GTK picks the best invisible character that is available
/// in the current font, but it can be changed with
/// `gtk_entry_set_invisible_char()`.
/// 
/// GtkEntry has the ability to display progress or activity
/// information behind the text. To make an entry display such information,
/// use `gtk_entry_set_progress_fraction()` or `gtk_entry_set_progress_pulse_step()`.
/// 
/// Additionally, GtkEntry can show icons at either side of the entry. These
/// icons can be activatable by clicking, can be set up as drag source and
/// can have tooltips. To add an icon, use `gtk_entry_set_icon_from_gicon()` or
/// one of the various other functions that set an icon from an icon name or a
/// paintable. To trigger an action when the user clicks an icon,
/// connect to the `GtkEntry::icon`-press signal. To allow DND operations
/// from an icon, use `gtk_entry_set_icon_drag_source()`. To set a tooltip on
/// an icon, use `gtk_entry_set_icon_tooltip_text()` or the corresponding function
/// for markup.
/// 
/// Note that functionality or information that is only available by clicking
/// on an icon in an entry may not be accessible at all to users which are not
/// able to use a mouse or other pointing device. It is therefore recommended
/// that any such functionality should also be available by other means, e.g.
/// via the context menu of the entry.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry[.flat][.warning][.error]
/// ├── text[.readonly]
/// ├── image.left
/// ├── image.right
/// ╰── [progress[.pulse]]
/// ```
/// 
/// GtkEntry has a main node with the name entry. Depending on the properties
/// of the entry, the style classes .read-only and .flat may appear. The style
/// classes .warning and .error may also be used with entries.
/// 
/// When the entry shows icons, it adds subnodes with the name image and the
/// style class .left or .right, depending on where the icon appears.
/// 
/// When the entry shows progress, it adds a subnode with the name progress.
/// The node has the style class .pulse when the shown progress is pulsing.
/// 
/// For all the subnodes added to the text node in various situations,
/// see `GtkText`.
/// 
/// # GtkEntry as GtkBuildable
/// 
/// The GtkEntry implementation of the GtkBuildable interface supports a
/// custom <attributes> element, which supports any number of <attribute>
/// elements. The <attribute> element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify `PangoAttribute` values for
/// this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```
/// <object class="GtkEnry">
///   <attributes>
///     <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
///     <attribute name="background" value="red" start="5" end="10"/>
///   </attributes>
/// </object>
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
/// GtkEntry uses the `GTK_ACCESSIBLE_ROLE_TEXT_BOX` role.
open class Entry: Widget, EntryProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEntry>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEntry>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEntry>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEntry`.
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEntry>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EntryProtocol`
    /// Will retain `GtkEntry`.
    /// - Parameter other: an instance of a related type that implements `EntryProtocol`
    @inlinable public init<T: EntryProtocol>(entry other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new entry.
    @inlinable public init() {
        let rv = gtk_entry_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new entry with the specified text buffer.
    @inlinable public init<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) {
        let rv = gtk_entry_new_with_buffer(buffer.entry_buffer_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new entry with the specified text buffer.
    @inlinable public static func newWith<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_entry_new_with_buffer(buffer.entry_buffer_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum EntryPropertyName: String, PropertyNameProtocol {
    case activatesDefault = "activates-default"
    /// A list of Pango attributes to apply to the text of the entry.
    /// 
    /// This is mainly useful to change the size or weight of the text.
    /// 
    /// The `PangoAttribute`'s `start_index` and `end_index` must refer to the
    /// `GtkEntryBuffer` text, i.e. without the preedit string.
    case attributes = "attributes"
    case buffer = "buffer"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// The auxiliary completion object to use with the entry.
    case completion = "completion"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case enableEmojiCompletion = "enable-emoji-completion"
    /// A menu model whose contents will be appended to
    /// the context menu.
    case extraMenu = "extra-menu"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    case hasFrame = "has-frame"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Which IM (input method) module should be used for this entry.
    /// See `GtkIMContext`.
    /// 
    /// Setting this to a non-`nil` value overrides the
    /// system-wide IM module setting. See the GtkSettings
    /// `GtkSettings:gtk`-im-module property.
    case imModule = "im-module"
    /// Additional hints (beyond `GtkEntry:input`-purpose) that
    /// allow input methods to fine-tune their behaviour.
    case inputHints = "input-hints"
    /// The purpose of this text field.
    /// 
    /// This property can be used by on-screen keyboards and other input
    /// methods to adjust their behaviour.
    /// 
    /// Note that setting the purpose to `GTK_INPUT_PURPOSE_PASSWORD` or
    /// `GTK_INPUT_PURPOSE_PIN` is independent from setting
    /// `GtkEntry:visibility`.
    case inputPurpose = "input-purpose"
    case invisibleChar = "invisible-char"
    /// Whether the invisible char has been set for the `GtkEntry`.
    case invisibleCharSet = "invisible-char-set"
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
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
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
    case maxLength = "max-length"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// If text is overwritten when typing in the `GtkEntry`.
    case overwriteMode = "overwrite-mode"
    case parent = "parent"
    /// The text that will be displayed in the `GtkEntry` when it is empty
    /// and unfocused.
    case placeholderText = "placeholder-text"
    /// Whether the primary icon is activatable.
    /// 
    /// GTK emits the `GtkEntry::icon`-press and `GtkEntry::icon`-release
    /// signals only on sensitive, activatable icons.
    /// 
    /// Sensitive, but non-activatable icons can be used for purely
    /// informational purposes.
    case primaryIconActivatable = "primary-icon-activatable"
    /// The `GIcon` to use for the primary icon for the entry.
    case primaryIconGicon = "primary-icon-gicon"
    /// The icon name to use for the primary icon for the entry.
    case primaryIconName = "primary-icon-name"
    /// A `GdkPaintable` to use as the primary icon for the entry.
    case primaryIconPaintable = "primary-icon-paintable"
    /// Whether the primary icon is sensitive.
    /// 
    /// An insensitive icon appears grayed out. GTK does not emit the
    /// `GtkEntry::icon`-press and `GtkEntry::icon`-release signals and
    /// does not allow DND from insensitive icons.
    /// 
    /// An icon should be set insensitive if the action that would trigger
    /// when clicked is currently not available.
    case primaryIconSensitive = "primary-icon-sensitive"
    /// The representation which is used for the primary icon of the entry.
    case primaryIconStorageType = "primary-icon-storage-type"
    /// The contents of the tooltip on the primary icon, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_markup()`.
    case primaryIconTooltipMarkup = "primary-icon-tooltip-markup"
    /// The contents of the tooltip on the primary icon.
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_text()`.
    case primaryIconTooltipText = "primary-icon-tooltip-text"
    /// The current fraction of the task that's been completed.
    case progressFraction = "progress-fraction"
    /// The fraction of total entry width to move the progress
    /// bouncing block for each call to `gtk_entry_progress_pulse()`.
    case progressPulseStep = "progress-pulse-step"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case scrollOffset = "scroll-offset"
    /// Whether the secondary icon is activatable.
    /// 
    /// GTK emits the `GtkEntry::icon`-press and `GtkEntry::icon`-release
    /// signals only on sensitive, activatable icons.
    /// 
    /// Sensitive, but non-activatable icons can be used for purely
    /// informational purposes.
    case secondaryIconActivatable = "secondary-icon-activatable"
    /// The `GIcon` to use for the secondary icon for the entry.
    case secondaryIconGicon = "secondary-icon-gicon"
    /// The icon name to use for the secondary icon for the entry.
    case secondaryIconName = "secondary-icon-name"
    /// A `GdkPaintable` to use as the secondary icon for the entry.
    case secondaryIconPaintable = "secondary-icon-paintable"
    /// Whether the secondary icon is sensitive.
    /// 
    /// An insensitive icon appears grayed out. GTK does not emit the
    /// `GtkEntry::icon`-press and `GtkEntry::icon`-release signals and
    /// does not allow DND from insensitive icons.
    /// 
    /// An icon should be set insensitive if the action that would trigger
    /// when clicked is currently not available.
    case secondaryIconSensitive = "secondary-icon-sensitive"
    /// The representation which is used for the secondary icon of the entry.
    case secondaryIconStorageType = "secondary-icon-storage-type"
    /// The contents of the tooltip on the secondary icon, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_markup()`.
    case secondaryIconTooltipMarkup = "secondary-icon-tooltip-markup"
    /// The contents of the tooltip on the secondary icon.
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_text()`.
    case secondaryIconTooltipText = "secondary-icon-tooltip-text"
    case sensitive = "sensitive"
    case showEmojiIcon = "show-emoji-icon"
    case tabs = "tabs"
    /// The length of the text in the `GtkEntry`.
    case textLength = "text-length"
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
    /// When `true`, pasted multi-line text is truncated to the first line.
    case truncateMultiline = "truncate-multiline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visibility = "visibility"
    case visible = "visible"
    case widthRequest = "width-request"
}

public extension EntryProtocol {
    /// Bind a `EntryPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Entry property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EntryPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Entry property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EntryPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Entry
public extension EntryProtocol {
    /// The `activate` signal is forwarded from the
    /// `GtkText::activated` signal, which is a keybinding
    /// signal for all forms of the Enter key.
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
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
    
    /// The `icon`-press signal is emitted when an activatable icon
    /// is clicked.
    /// - Note: Representation of signal named `icon-press`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter iconPos: The position of the clicked icon
    @discardableResult
    func onIconPress(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ iconPos: EntryIconPosition) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, EntryIconPosition, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), EntryIconPosition(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "icon-press", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `icon`-release signal is emitted on the button release from a
    /// mouse click over an activatable icon.
    /// - Note: Representation of signal named `icon-release`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter iconPos: The position of the clicked icon
    @discardableResult
    func onIconRelease(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ iconPos: EntryIconPosition) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, EntryIconPosition, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), EntryIconPosition(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "icon-release", 
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
    /// - Note: Representation of signal named `notify::activates-default`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActivatesDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::activates-default", 
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
    /// - Note: Representation of signal named `notify::attributes`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAttributes(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::attributes", 
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
    /// - Note: Representation of signal named `notify::buffer`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyBuffer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::buffer", 
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
    /// - Note: Representation of signal named `notify::completion`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCompletion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::completion", 
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
    /// - Note: Representation of signal named `notify::enable-emoji-completion`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyEnableEmojiCompletion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::enable-emoji-completion", 
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
    /// - Note: Representation of signal named `notify::extra-menu`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyExtraMenu(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::extra-menu", 
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
    /// - Note: Representation of signal named `notify::has-frame`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasFrame(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-frame", 
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
    /// - Note: Representation of signal named `notify::im-module`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyImModule(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::im-module", 
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
    /// - Note: Representation of signal named `notify::input-hints`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInputHints(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::input-hints", 
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
    /// - Note: Representation of signal named `notify::input-purpose`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInputPurpose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::input-purpose", 
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
    /// - Note: Representation of signal named `notify::invisible-char`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInvisibleChar(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::invisible-char", 
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
    /// - Note: Representation of signal named `notify::invisible-char-set`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInvisibleCharSet(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::invisible-char-set", 
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
    /// - Note: Representation of signal named `notify::max-length`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMaxLength(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::max-length", 
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
    /// - Note: Representation of signal named `notify::overwrite-mode`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyOverwriteMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::overwrite-mode", 
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
    /// - Note: Representation of signal named `notify::placeholder-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPlaceholderText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::placeholder-text", 
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
    /// - Note: Representation of signal named `notify::primary-icon-activatable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconActivatable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-activatable", 
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
    /// - Note: Representation of signal named `notify::primary-icon-gicon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconGicon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-gicon", 
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
    /// - Note: Representation of signal named `notify::primary-icon-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-name", 
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
    /// - Note: Representation of signal named `notify::primary-icon-paintable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconPaintable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-paintable", 
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
    /// - Note: Representation of signal named `notify::primary-icon-sensitive`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconSensitive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-sensitive", 
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
    /// - Note: Representation of signal named `notify::primary-icon-storage-type`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconStorageType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-storage-type", 
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
    /// - Note: Representation of signal named `notify::primary-icon-tooltip-markup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconTooltipMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-tooltip-markup", 
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
    /// - Note: Representation of signal named `notify::primary-icon-tooltip-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconTooltipText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-tooltip-text", 
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
    /// - Note: Representation of signal named `notify::progress-fraction`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyProgressFraction(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::progress-fraction", 
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
    /// - Note: Representation of signal named `notify::progress-pulse-step`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyProgressPulseStep(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::progress-pulse-step", 
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
    /// - Note: Representation of signal named `notify::scroll-offset`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyScrollOffset(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::scroll-offset", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-activatable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconActivatable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-activatable", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-gicon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconGicon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-gicon", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-name", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-paintable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconPaintable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-paintable", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-sensitive`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconSensitive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-sensitive", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-storage-type`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconStorageType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-storage-type", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-tooltip-markup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconTooltipMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-tooltip-markup", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-tooltip-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconTooltipText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-tooltip-text", 
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
    /// - Note: Representation of signal named `notify::show-emoji-icon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowEmojiIcon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-emoji-icon", 
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
    /// - Note: Representation of signal named `notify::tabs`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTabs(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tabs", 
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
    /// - Note: Representation of signal named `notify::text-length`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTextLength(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::text-length", 
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
    /// - Note: Representation of signal named `notify::truncate-multiline`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTruncateMultiline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::truncate-multiline", 
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
    /// - Note: Representation of signal named `notify::visibility`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisibility(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visibility", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Entry Class: EntryProtocol extension (methods and fields)
public extension EntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntry` instance.
    @inlinable var entry_ptr: UnsafeMutablePointer<GtkEntry>! { return ptr?.assumingMemoryBound(to: GtkEntry.self) }

    /// Retrieves the value set by `gtk_entry_set_activates_default()`.
    @inlinable func getActivatesDefault() -> Bool {
        let rv = ((gtk_entry_get_activates_default(entry_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_entry_set_alignment()`.
    @inlinable func getAlignment() -> CFloat {
        let rv = gtk_entry_get_alignment(entry_ptr)
        return rv
    }

    /// Gets the attribute list that was set on the entry using
    /// `gtk_entry_set_attributes()`, if any.
    @inlinable func getAttributes() -> Pango.AttrListRef! {
        let rv = Pango.AttrListRef(gtk_entry_get_attributes(entry_ptr))
        return rv
    }

    /// Get the `GtkEntryBuffer` object which holds the text for
    /// this widget.
    @inlinable func getBuffer() -> EntryBufferRef! {
        let rv = EntryBufferRef(gconstpointer: gconstpointer(gtk_entry_get_buffer(entry_ptr)))
        return rv
    }

    /// Returns the auxiliary completion object currently in use by `entry`.
    @inlinable func getCompletion() -> EntryCompletionRef! {
        let rv = EntryCompletionRef(gconstpointer: gconstpointer(gtk_entry_get_completion(entry_ptr)))
        return rv
    }

    /// Returns the index of the icon which is the source of the current
    /// DND operation, or -1.
    @inlinable func getCurrentIconDragSource() -> Int {
        let rv = Int(gtk_entry_get_current_icon_drag_source(entry_ptr))
        return rv
    }

    /// Gets the menu model set with `gtk_entry_set_extra_menu()`.
    @inlinable func getExtraMenu() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_entry_get_extra_menu(entry_ptr))
        return rv
    }

    /// Gets the value set by `gtk_entry_set_has_frame()`.
    @inlinable func getHasFrame() -> Bool {
        let rv = ((gtk_entry_get_has_frame(entry_ptr)) != 0)
        return rv
    }

    /// Returns whether the icon is activatable.
    @inlinable func getIconActivatable(iconPos: GtkEntryIconPosition) -> Bool {
        let rv = ((gtk_entry_get_icon_activatable(entry_ptr, iconPos)) != 0)
        return rv
    }

    /// Gets the area where entry’s icon at `icon_pos` is drawn.
    /// This function is useful when drawing something to the
    /// entry in a draw callback.
    /// 
    /// If the entry is not realized or has no icon at the given position,
    /// `icon_area` is filled with zeros. Otherwise, `icon_area` will be filled
    /// with the icon's allocation, relative to `entry`'s allocation.
    @inlinable func getIconArea<RectangleT: Gdk.RectangleProtocol>(iconPos: GtkEntryIconPosition, iconArea: RectangleT) {
        gtk_entry_get_icon_area(entry_ptr, iconPos, iconArea.rectangle_ptr)
    
    }

    /// Finds the icon at the given position and return its index. The
    /// position’s coordinates are relative to the `entry`’s top left corner.
    /// If `x`, `y` doesn’t lie inside an icon, -1 is returned.
    /// This function is intended for use in a `GtkWidget::query`-tooltip
    /// signal handler.
    @inlinable func getIconAtPos(x: Int, y: Int) -> Int {
        let rv = Int(gtk_entry_get_icon_at_pos(entry_ptr, gint(x), gint(y)))
        return rv
    }

    /// Retrieves the `GIcon` used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// paintable or icon name).
    @inlinable func getIconGicon(iconPos: GtkEntryIconPosition) -> GIO.IconRef! {
        let rv = GIO.IconRef(gtk_entry_get_icon_gicon(entry_ptr, iconPos))
        return rv
    }

    /// Retrieves the icon name used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// paintable or gicon).
    @inlinable func getIconName(iconPos: GtkEntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_name(entry_ptr, iconPos).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the `GdkPaintable` used for the icon.
    /// 
    /// If no `GdkPaintable` was used for the icon, `nil` is returned.
    @inlinable func getIconPaintable(iconPos: GtkEntryIconPosition) -> Gdk.PaintableRef! {
        let rv = Gdk.PaintableRef(gtk_entry_get_icon_paintable(entry_ptr, iconPos))
        return rv
    }

    /// Returns whether the icon appears sensitive or insensitive.
    @inlinable func getIconSensitive(iconPos: GtkEntryIconPosition) -> Bool {
        let rv = ((gtk_entry_get_icon_sensitive(entry_ptr, iconPos)) != 0)
        return rv
    }

    /// Gets the type of representation being used by the icon
    /// to store image data. If the icon has no image data,
    /// the return value will be `GTK_IMAGE_EMPTY`.
    @inlinable func getIconStorageType(iconPos: GtkEntryIconPosition) -> GtkImageType {
        let rv = gtk_entry_get_icon_storage_type(entry_ptr, iconPos)
        return rv
    }

    /// Gets the contents of the tooltip on the icon at the specified
    /// position in `entry`.
    @inlinable func getIconTooltipMarkup(iconPos: GtkEntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_tooltip_markup(entry_ptr, iconPos).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of the tooltip on the icon at the specified
    /// position in `entry`.
    @inlinable func getIconTooltipText(iconPos: GtkEntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_tooltip_text(entry_ptr, iconPos).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of the `GtkEntry:input`-hints property.
    @inlinable func getInputHints() -> InputHints {
        let rv = InputHints(gtk_entry_get_input_hints(entry_ptr))
        return rv
    }

    /// Gets the value of the `GtkEntry:input`-purpose property.
    @inlinable func getInputPurpose() -> GtkInputPurpose {
        let rv = gtk_entry_get_input_purpose(entry_ptr)
        return rv
    }

    /// Retrieves the character displayed in place of the real characters
    /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
    @inlinable func getInvisibleChar() -> gunichar {
        let rv = gtk_entry_get_invisible_char(entry_ptr)
        return rv
    }

    /// Retrieves the maximum allowed length of the text in
    /// `entry`. See `gtk_entry_set_max_length()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_max_length()` on it.
    @inlinable func getMaxLength() -> Int {
        let rv = Int(gtk_entry_get_max_length(entry_ptr))
        return rv
    }

    /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
    @inlinable func getOverwriteMode() -> Bool {
        let rv = ((gtk_entry_get_overwrite_mode(entry_ptr)) != 0)
        return rv
    }

    /// Retrieves the text that will be displayed when `entry` is empty and unfocused
    @inlinable func getPlaceholderText() -> String! {
        let rv = gtk_entry_get_placeholder_text(entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the current fraction of the task that’s been completed.
    /// See `gtk_entry_set_progress_fraction()`.
    @inlinable func getProgressFraction() -> CDouble {
        let rv = gtk_entry_get_progress_fraction(entry_ptr)
        return rv
    }

    /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
    @inlinable func getProgressPulseStep() -> CDouble {
        let rv = gtk_entry_get_progress_pulse_step(entry_ptr)
        return rv
    }

    /// Gets the tabstops that were set on the entry using `gtk_entry_set_tabs()`, if
    /// any.
    @inlinable func getTabs() -> Pango.TabArrayRef! {
        let rv = Pango.TabArrayRef(gtk_entry_get_tabs(entry_ptr))
        return rv
    }

    /// Retrieves the current length of the text in
    /// `entry`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_length()` on it.
    @inlinable func getTextLength() -> guint16 {
        let rv = gtk_entry_get_text_length(entry_ptr)
        return rv
    }

    /// Retrieves whether the text in `entry` is visible. See
    /// `gtk_entry_set_visibility()`.
    @inlinable func getVisibility() -> Bool {
        let rv = ((gtk_entry_get_visibility(entry_ptr)) != 0)
        return rv
    }

    /// Causes `entry` to have keyboard focus.
    /// 
    /// It behaves like `gtk_widget_grab_focus()`,
    /// except that it doesn't select the contents of the entry.
    /// You only want to call this on some special entries
    /// which the user usually doesn't want to replace all text in,
    /// such as search-as-you-type entries.
    @inlinable func grabFocusWithoutSelecting() -> Bool {
        let rv = ((gtk_entry_grab_focus_without_selecting(entry_ptr)) != 0)
        return rv
    }

    /// Indicates that some progress is made, but you don’t know how much.
    /// Causes the entry’s progress indicator to enter “activity mode,”
    /// where a block bounces back and forth. Each call to
    /// `gtk_entry_progress_pulse()` causes the block to move by a little bit
    /// (the amount of movement per pulse is determined by
    /// `gtk_entry_set_progress_pulse_step()`).
    @inlinable func progressPulse() {
        gtk_entry_progress_pulse(entry_ptr)
    
    }

    /// Reset the input method context of the entry if needed.
    /// 
    /// This can be necessary in the case where modifying the buffer
    /// would confuse on-going input method behavior.
    @inlinable func resetImContext() {
        gtk_entry_reset_im_context(entry_ptr)
    
    }

    /// If `setting` is `true`, pressing Enter in the `entry` will activate the default
    /// widget for the window containing the entry. This usually means that
    /// the dialog box containing the entry will be closed, since the default
    /// widget is usually one of the dialog buttons.
    @inlinable func setActivatesDefault(setting: Bool) {
        gtk_entry_set_activates_default(entry_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the alignment for the contents of the entry. This controls
    /// the horizontal positioning of the contents when the displayed
    /// text is shorter than the width of the entry.
    @inlinable func setAlignment(xalign: CFloat) {
        gtk_entry_set_alignment(entry_ptr, xalign)
    
    }

    /// Sets a `PangoAttrList`; the attributes in the list are applied to the
    /// entry text.
    @inlinable func setAttributes<AttrListT: Pango.AttrListProtocol>(attrs: AttrListT) {
        gtk_entry_set_attributes(entry_ptr, attrs.attr_list_ptr)
    
    }

    /// Set the `GtkEntryBuffer` object which holds the text for
    /// this widget.
    @inlinable func set<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) {
        gtk_entry_set_buffer(entry_ptr, buffer.entry_buffer_ptr)
    
    }

    /// Sets `completion` to be the auxiliary completion object to use with `entry`.
    /// All further configuration of the completion mechanism is done on
    /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
    /// `completion` is set to `nil`.
    @inlinable func set(completion: EntryCompletionRef? = nil) {
        gtk_entry_set_completion(entry_ptr, completion?.entry_completion_ptr)
    
    }
    /// Sets `completion` to be the auxiliary completion object to use with `entry`.
    /// All further configuration of the completion mechanism is done on
    /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
    /// `completion` is set to `nil`.
    @inlinable func set<EntryCompletionT: EntryCompletionProtocol>(completion: EntryCompletionT?) {
        gtk_entry_set_completion(entry_ptr, completion?.entry_completion_ptr)
    
    }

    /// Sets a menu model to add when constructing
    /// the context menu for `entry`.
    @inlinable func setExtraMenu(model: GIO.MenuModelRef? = nil) {
        gtk_entry_set_extra_menu(entry_ptr, model?.menu_model_ptr)
    
    }
    /// Sets a menu model to add when constructing
    /// the context menu for `entry`.
    @inlinable func setExtraMenu<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        gtk_entry_set_extra_menu(entry_ptr, model?.menu_model_ptr)
    
    }

    /// Sets whether the entry has a beveled frame around it.
    @inlinable func setHasFrame(setting: Bool) {
        gtk_entry_set_has_frame(entry_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the icon is activatable.
    @inlinable func setIconActivatable(iconPos: GtkEntryIconPosition, activatable: Bool) {
        gtk_entry_set_icon_activatable(entry_ptr, iconPos, gboolean((activatable) ? 1 : 0))
    
    }

    /// Sets up the icon at the given position so that GTK will start a drag
    /// operation when the user clicks and drags the icon.
    @inlinable func setIconDragSource<ContentProviderT: Gdk.ContentProviderProtocol>(iconPos: GtkEntryIconPosition, provider: ContentProviderT, actions: Gdk.DragAction) {
        gtk_entry_set_icon_drag_source(entry_ptr, iconPos, provider.content_provider_ptr, actions.value)
    
    }

    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// If the icon isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromGicon(iconPos: GtkEntryIconPosition, icon: GIO.IconRef? = nil) {
        gtk_entry_set_icon_from_gicon(entry_ptr, iconPos, icon?.icon_ptr)
    
    }
    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// If the icon isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromGicon<IconT: GIO.IconProtocol>(iconPos: GtkEntryIconPosition, icon: IconT?) {
        gtk_entry_set_icon_from_gicon(entry_ptr, iconPos, icon?.icon_ptr)
    
    }

    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon_name` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromIconName(iconPos: GtkEntryIconPosition, iconName: UnsafePointer<CChar>? = nil) {
        gtk_entry_set_icon_from_icon_name(entry_ptr, iconPos, iconName)
    
    }

    /// Sets the icon shown in the specified position using a `GdkPaintable`
    /// 
    /// If `paintable` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromPaintable(iconPos: GtkEntryIconPosition, paintable: Gdk.PaintableRef? = nil) {
        gtk_entry_set_icon_from_paintable(entry_ptr, iconPos, paintable?.paintable_ptr)
    
    }
    /// Sets the icon shown in the specified position using a `GdkPaintable`
    /// 
    /// If `paintable` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromPaintable<PaintableT: Gdk.PaintableProtocol>(iconPos: GtkEntryIconPosition, paintable: PaintableT?) {
        gtk_entry_set_icon_from_paintable(entry_ptr, iconPos, paintable?.paintable_ptr)
    
    }

    /// Sets the sensitivity for the specified icon.
    @inlinable func setIconSensitive(iconPos: GtkEntryIconPosition, sensitive: Bool) {
        gtk_entry_set_icon_sensitive(entry_ptr, iconPos, gboolean((sensitive) ? 1 : 0))
    
    }

    /// Sets `tooltip` as the contents of the tooltip for the icon at
    /// the specified position. `tooltip` is assumed to be marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Use `nil` for `tooltip` to remove an existing tooltip.
    /// 
    /// See also `gtk_widget_set_tooltip_markup()` and
    /// `gtk_entry_set_icon_tooltip_text()`.
    @inlinable func setIconTooltipMarkup(iconPos: GtkEntryIconPosition, tooltip: UnsafePointer<CChar>? = nil) {
        gtk_entry_set_icon_tooltip_markup(entry_ptr, iconPos, tooltip)
    
    }

    /// Sets `tooltip` as the contents of the tooltip for the icon
    /// at the specified position.
    /// 
    /// Use `nil` for `tooltip` to remove an existing tooltip.
    /// 
    /// See also `gtk_widget_set_tooltip_text()` and
    /// `gtk_entry_set_icon_tooltip_markup()`.
    /// 
    /// If you unset the widget tooltip via `gtk_widget_set_tooltip_text()` or
    /// `gtk_widget_set_tooltip_markup()`, this sets GtkWidget:has-tooltip to `false`,
    /// which suppresses icon tooltips too. You can resolve this by then calling
    /// `gtk_widget_set_has_tooltip()` to set GtkWidget:has-tooltip back to `true`, or
    /// setting at least one non-empty tooltip on any icon achieves the same result.
    @inlinable func setIconTooltipText(iconPos: GtkEntryIconPosition, tooltip: UnsafePointer<CChar>? = nil) {
        gtk_entry_set_icon_tooltip_text(entry_ptr, iconPos, tooltip)
    
    }

    /// Sets the `GtkEntry:input`-hints property, which
    /// allows input methods to fine-tune their behaviour.
    @inlinable func setInput(hints: InputHints) {
        gtk_entry_set_input_hints(entry_ptr, hints.value)
    
    }

    /// Sets the `GtkEntry:input`-purpose property which
    /// can be used by on-screen keyboards and other input
    /// methods to adjust their behaviour.
    @inlinable func setInput(purpose: GtkInputPurpose) {
        gtk_entry_set_input_purpose(entry_ptr, purpose)
    
    }

    /// Sets the character to use in place of the actual text when
    /// `gtk_entry_set_visibility()` has been called to set text visibility
    /// to `false`. i.e. this is the character used in “password mode” to
    /// show the user how many characters have been typed. By default, GTK
    /// picks the best invisible char available in the current font. If you
    /// set the invisible char to 0, then the user will get no feedback
    /// at all; there will be no text on the screen as they type.
    @inlinable func setInvisibleChar(ch: gunichar) {
        gtk_entry_set_invisible_char(entry_ptr, ch)
    
    }

    /// Sets the maximum allowed length of the contents of the widget. If
    /// the current contents are longer than the given length, then they
    /// will be truncated to fit.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_set_max_length()` on it.
    /// ]|
    @inlinable func setMaxLength(max: Int) {
        gtk_entry_set_max_length(entry_ptr, gint(max))
    
    }

    /// Sets whether the text is overwritten when typing in the `GtkEntry`.
    @inlinable func setOverwriteMode(overwrite: Bool) {
        gtk_entry_set_overwrite_mode(entry_ptr, gboolean((overwrite) ? 1 : 0))
    
    }

    /// Sets text to be displayed in `entry` when it is empty.
    /// This can be used to give a visual hint of the expected contents of
    /// the `GtkEntry`.
    @inlinable func setPlaceholder(text: UnsafePointer<CChar>? = nil) {
        gtk_entry_set_placeholder_text(entry_ptr, text)
    
    }

    /// Causes the entry’s progress indicator to “fill in” the given
    /// fraction of the bar. The fraction should be between 0.0 and 1.0,
    /// inclusive.
    @inlinable func setProgress(fraction: CDouble) {
        gtk_entry_set_progress_fraction(entry_ptr, fraction)
    
    }

    /// Sets the fraction of total entry width to move the progress
    /// bouncing block for each call to `gtk_entry_progress_pulse()`.
    @inlinable func setProgressPulseStep(fraction: CDouble) {
        gtk_entry_set_progress_pulse_step(entry_ptr, fraction)
    
    }

    /// Sets a `PangoTabArray`; the tabstops in the array are applied to the entry
    /// text.
    @inlinable func set(tabs: Pango.TabArrayRef? = nil) {
        gtk_entry_set_tabs(entry_ptr, tabs?.tab_array_ptr)
    
    }
    /// Sets a `PangoTabArray`; the tabstops in the array are applied to the entry
    /// text.
    @inlinable func set<TabArrayT: Pango.TabArrayProtocol>(tabs: TabArrayT?) {
        gtk_entry_set_tabs(entry_ptr, tabs?.tab_array_ptr)
    
    }

    /// Sets whether the contents of the entry are visible or not.
    /// When visibility is set to `false`, characters are displayed
    /// as the invisible char, and will also appear that way when
    /// the text in the entry widget is copied elsewhere.
    /// 
    /// By default, GTK picks the best invisible character available
    /// in the current font, but it can be changed with
    /// `gtk_entry_set_invisible_char()`.
    /// 
    /// Note that you probably want to set `GtkEntry:input`-purpose
    /// to `GTK_INPUT_PURPOSE_PASSWORD` or `GTK_INPUT_PURPOSE_PIN` to
    /// inform input methods about the purpose of this entry,
    /// in addition to setting visibility to `false`.
    @inlinable func setVisibility(visible: Bool) {
        gtk_entry_set_visibility(entry_ptr, gboolean((visible) ? 1 : 0))
    
    }

    /// Unsets the invisible char previously set with
    /// `gtk_entry_set_invisible_char()`. So that the
    /// default invisible char is used again.
    @inlinable func unsetInvisibleChar() {
        gtk_entry_unset_invisible_char(entry_ptr)
    
    }
    /// Retrieves the value set by `gtk_entry_set_activates_default()`.
    @inlinable var activatesDefault: Bool {
        /// Retrieves the value set by `gtk_entry_set_activates_default()`.
        get {
            let rv = ((gtk_entry_get_activates_default(entry_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, pressing Enter in the `entry` will activate the default
        /// widget for the window containing the entry. This usually means that
        /// the dialog box containing the entry will be closed, since the default
        /// widget is usually one of the dialog buttons.
        nonmutating set {
            gtk_entry_set_activates_default(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value set by `gtk_entry_set_alignment()`.
    @inlinable var alignment: CFloat {
        /// Gets the value set by `gtk_entry_set_alignment()`.
        get {
            let rv = gtk_entry_get_alignment(entry_ptr)
            return rv
        }
        /// Sets the alignment for the contents of the entry. This controls
        /// the horizontal positioning of the contents when the displayed
        /// text is shorter than the width of the entry.
        nonmutating set {
            gtk_entry_set_alignment(entry_ptr, newValue)
        }
    }

    /// A list of Pango attributes to apply to the text of the entry.
    /// 
    /// This is mainly useful to change the size or weight of the text.
    /// 
    /// The `PangoAttribute`'s `start_index` and `end_index` must refer to the
    /// `GtkEntryBuffer` text, i.e. without the preedit string.
    @inlinable var attributes: Pango.AttrListRef! {
        /// Gets the attribute list that was set on the entry using
        /// `gtk_entry_set_attributes()`, if any.
        get {
            let rv = Pango.AttrListRef(gtk_entry_get_attributes(entry_ptr))
            return rv
        }
        /// Sets a `PangoAttrList`; the attributes in the list are applied to the
        /// entry text.
        nonmutating set {
            gtk_entry_set_attributes(entry_ptr, UnsafeMutablePointer<PangoAttrList>(newValue?.attr_list_ptr))
        }
    }

    @inlinable var buffer: EntryBufferRef! {
        /// Get the `GtkEntryBuffer` object which holds the text for
        /// this widget.
        get {
            let rv = EntryBufferRef(gconstpointer: gconstpointer(gtk_entry_get_buffer(entry_ptr)))
            return rv
        }
        /// Set the `GtkEntryBuffer` object which holds the text for
        /// this widget.
        nonmutating set {
            gtk_entry_set_buffer(entry_ptr, UnsafeMutablePointer<GtkEntryBuffer>(newValue?.entry_buffer_ptr))
        }
    }

    /// The auxiliary completion object to use with the entry.
    @inlinable var completion: EntryCompletionRef! {
        /// Returns the auxiliary completion object currently in use by `entry`.
        get {
            let rv = EntryCompletionRef(gconstpointer: gconstpointer(gtk_entry_get_completion(entry_ptr)))
            return rv
        }
        /// Sets `completion` to be the auxiliary completion object to use with `entry`.
        /// All further configuration of the completion mechanism is done on
        /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
        /// `completion` is set to `nil`.
        nonmutating set {
            gtk_entry_set_completion(entry_ptr, UnsafeMutablePointer<GtkEntryCompletion>(newValue?.entry_completion_ptr))
        }
    }

    /// Returns the index of the icon which is the source of the current
    /// DND operation, or -1.
    @inlinable var currentIconDragSource: Int {
        /// Returns the index of the icon which is the source of the current
        /// DND operation, or -1.
        get {
            let rv = Int(gtk_entry_get_current_icon_drag_source(entry_ptr))
            return rv
        }
    }

    /// Gets the menu model set with `gtk_entry_set_extra_menu()`.
    @inlinable var extraMenu: GIO.MenuModelRef! {
        /// Gets the menu model set with `gtk_entry_set_extra_menu()`.
        get {
            let rv = GIO.MenuModelRef(gtk_entry_get_extra_menu(entry_ptr))
            return rv
        }
        /// Sets a menu model to add when constructing
        /// the context menu for `entry`.
        nonmutating set {
            gtk_entry_set_extra_menu(entry_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    /// Gets the value set by `gtk_entry_set_has_frame()`.
    @inlinable var hasFrame: Bool {
        /// Gets the value set by `gtk_entry_set_has_frame()`.
        get {
            let rv = ((gtk_entry_get_has_frame(entry_ptr)) != 0)
            return rv
        }
        /// Sets whether the entry has a beveled frame around it.
        nonmutating set {
            gtk_entry_set_has_frame(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value of the `GtkEntry:input`-hints property.
    @inlinable var inputHints: InputHints {
        /// Gets the value of the `GtkEntry:input`-hints property.
        get {
            let rv = InputHints(gtk_entry_get_input_hints(entry_ptr))
            return rv
        }
        /// Sets the `GtkEntry:input`-hints property, which
        /// allows input methods to fine-tune their behaviour.
        nonmutating set {
            gtk_entry_set_input_hints(entry_ptr, newValue.value)
        }
    }

    /// Gets the value of the `GtkEntry:input`-purpose property.
    @inlinable var inputPurpose: GtkInputPurpose {
        /// Gets the value of the `GtkEntry:input`-purpose property.
        get {
            let rv = gtk_entry_get_input_purpose(entry_ptr)
            return rv
        }
        /// Sets the `GtkEntry:input`-purpose property which
        /// can be used by on-screen keyboards and other input
        /// methods to adjust their behaviour.
        nonmutating set {
            gtk_entry_set_input_purpose(entry_ptr, newValue)
        }
    }

    /// Retrieves the character displayed in place of the real characters
    /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
    @inlinable var invisibleChar: gunichar {
        /// Retrieves the character displayed in place of the real characters
        /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
        get {
            let rv = gtk_entry_get_invisible_char(entry_ptr)
            return rv
        }
        /// Sets the character to use in place of the actual text when
        /// `gtk_entry_set_visibility()` has been called to set text visibility
        /// to `false`. i.e. this is the character used in “password mode” to
        /// show the user how many characters have been typed. By default, GTK
        /// picks the best invisible char available in the current font. If you
        /// set the invisible char to 0, then the user will get no feedback
        /// at all; there will be no text on the screen as they type.
        nonmutating set {
            gtk_entry_set_invisible_char(entry_ptr, newValue)
        }
    }

    /// Retrieves the maximum allowed length of the text in
    /// `entry`. See `gtk_entry_set_max_length()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_max_length()` on it.
    @inlinable var maxLength: Int {
        /// Retrieves the maximum allowed length of the text in
        /// `entry`. See `gtk_entry_set_max_length()`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_get_max_length()` on it.
        get {
            let rv = Int(gtk_entry_get_max_length(entry_ptr))
            return rv
        }
        /// Sets the maximum allowed length of the contents of the widget. If
        /// the current contents are longer than the given length, then they
        /// will be truncated to fit.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_set_max_length()` on it.
        /// ]|
        nonmutating set {
            gtk_entry_set_max_length(entry_ptr, gint(newValue))
        }
    }

    /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
    @inlinable var overwriteMode: Bool {
        /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
        get {
            let rv = ((gtk_entry_get_overwrite_mode(entry_ptr)) != 0)
            return rv
        }
        /// Sets whether the text is overwritten when typing in the `GtkEntry`.
        nonmutating set {
            gtk_entry_set_overwrite_mode(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the text that will be displayed when `entry` is empty and unfocused
    @inlinable var placeholderText: String! {
        /// Retrieves the text that will be displayed when `entry` is empty and unfocused
        get {
            let rv = gtk_entry_get_placeholder_text(entry_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets text to be displayed in `entry` when it is empty.
        /// This can be used to give a visual hint of the expected contents of
        /// the `GtkEntry`.
        nonmutating set {
            gtk_entry_set_placeholder_text(entry_ptr, newValue)
        }
    }

    /// Returns the current fraction of the task that’s been completed.
    /// See `gtk_entry_set_progress_fraction()`.
    @inlinable var progressFraction: CDouble {
        /// Returns the current fraction of the task that’s been completed.
        /// See `gtk_entry_set_progress_fraction()`.
        get {
            let rv = gtk_entry_get_progress_fraction(entry_ptr)
            return rv
        }
        /// Causes the entry’s progress indicator to “fill in” the given
        /// fraction of the bar. The fraction should be between 0.0 and 1.0,
        /// inclusive.
        nonmutating set {
            gtk_entry_set_progress_fraction(entry_ptr, newValue)
        }
    }

    /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
    @inlinable var progressPulseStep: CDouble {
        /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
        get {
            let rv = gtk_entry_get_progress_pulse_step(entry_ptr)
            return rv
        }
        /// Sets the fraction of total entry width to move the progress
        /// bouncing block for each call to `gtk_entry_progress_pulse()`.
        nonmutating set {
            gtk_entry_set_progress_pulse_step(entry_ptr, newValue)
        }
    }

    @inlinable var tabs: Pango.TabArrayRef! {
        /// Gets the tabstops that were set on the entry using `gtk_entry_set_tabs()`, if
        /// any.
        get {
            let rv = Pango.TabArrayRef(gtk_entry_get_tabs(entry_ptr))
            return rv
        }
        /// Sets a `PangoTabArray`; the tabstops in the array are applied to the entry
        /// text.
        nonmutating set {
            gtk_entry_set_tabs(entry_ptr, UnsafeMutablePointer<PangoTabArray>(newValue?.tab_array_ptr))
        }
    }

    /// Retrieves the current length of the text in
    /// `entry`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_length()` on it.
    @inlinable var textLength: guint16 {
        /// Retrieves the current length of the text in
        /// `entry`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_get_length()` on it.
        get {
            let rv = gtk_entry_get_text_length(entry_ptr)
            return rv
        }
    }

    @inlinable var visibility: Bool {
        /// Retrieves whether the text in `entry` is visible. See
        /// `gtk_entry_set_visibility()`.
        get {
            let rv = ((gtk_entry_get_visibility(entry_ptr)) != 0)
            return rv
        }
        /// Sets whether the contents of the entry are visible or not.
        /// When visibility is set to `false`, characters are displayed
        /// as the invisible char, and will also appear that way when
        /// the text in the entry widget is copied elsewhere.
        /// 
        /// By default, GTK picks the best invisible character available
        /// in the current font, but it can be changed with
        /// `gtk_entry_set_invisible_char()`.
        /// 
        /// Note that you probably want to set `GtkEntry:input`-purpose
        /// to `GTK_INPUT_PURPOSE_PASSWORD` or `GTK_INPUT_PURPOSE_PIN` to
        /// inform input methods about the purpose of this entry,
        /// in addition to setting visibility to `false`.
        nonmutating set {
            gtk_entry_set_visibility(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

}



// MARK: - EntryBuffer Class

/// The `EntryBufferProtocol` protocol exposes the methods and properties of an underlying `GtkEntryBuffer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryBuffer`.
/// Alternatively, use `EntryBufferRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkEntryBuffer` class contains the actual text displayed in a
/// `GtkEntry` widget.
/// 
/// A single `GtkEntryBuffer` object can be shared by multiple `GtkEntry`
/// widgets which will then share the same text content, but not the cursor
/// position, visibility attributes, icon etc.
/// 
/// `GtkEntryBuffer` may be derived from. Such a derived class might allow
/// text to be stored in an alternate location, such as non-pageable memory,
/// useful in the case of important passwords. Or a derived class could
/// integrate with an application’s concept of undo/redo.
public protocol EntryBufferProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkEntryBuffer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntryBuffer` instance.
    var entry_buffer_ptr: UnsafeMutablePointer<GtkEntryBuffer>! { get }

}

/// The `EntryBufferRef` type acts as a lightweight Swift reference to an underlying `GtkEntryBuffer` instance.
/// It exposes methods that can operate on this data type through `EntryBufferProtocol` conformance.
/// Use `EntryBufferRef` only as an `unowned` reference to an existing `GtkEntryBuffer` instance.
///
/// The `GtkEntryBuffer` class contains the actual text displayed in a
/// `GtkEntry` widget.
/// 
/// A single `GtkEntryBuffer` object can be shared by multiple `GtkEntry`
/// widgets which will then share the same text content, but not the cursor
/// position, visibility attributes, icon etc.
/// 
/// `GtkEntryBuffer` may be derived from. Such a derived class might allow
/// text to be stored in an alternate location, such as non-pageable memory,
/// useful in the case of important passwords. Or a derived class could
/// integrate with an application’s concept of undo/redo.
public struct EntryBufferRef: EntryBufferProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEntryBuffer` instance.
    /// For type-safe access, use the generated, typed pointer `entry_buffer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryBufferRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntryBuffer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntryBuffer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntryBuffer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntryBuffer>?) {
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

    /// Reference intialiser for a related type that implements `EntryBufferProtocol`
    @inlinable init<T: EntryBufferProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EntryBufferProtocol>(_ other: T) -> EntryBufferRef { EntryBufferRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new GtkEntryBuffer object.
    /// 
    /// Optionally, specify initial text to set in the buffer.
    @inlinable init( initialChars: UnsafePointer<CChar>? = nil, nInitialChars: Int) {
        let rv = gtk_entry_buffer_new(initialChars, gint(nInitialChars))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EntryBuffer` type acts as a reference-counted owner of an underlying `GtkEntryBuffer` instance.
/// It provides the methods that can operate on this data type through `EntryBufferProtocol` conformance.
/// Use `EntryBuffer` as a strong reference or owner of a `GtkEntryBuffer` instance.
///
/// The `GtkEntryBuffer` class contains the actual text displayed in a
/// `GtkEntry` widget.
/// 
/// A single `GtkEntryBuffer` object can be shared by multiple `GtkEntry`
/// widgets which will then share the same text content, but not the cursor
/// position, visibility attributes, icon etc.
/// 
/// `GtkEntryBuffer` may be derived from. Such a derived class might allow
/// text to be stored in an alternate location, such as non-pageable memory,
/// useful in the case of important passwords. Or a derived class could
/// integrate with an application’s concept of undo/redo.
open class EntryBuffer: GLibObject.Object, EntryBufferProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEntryBuffer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEntryBuffer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryBuffer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEntryBuffer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEntryBuffer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEntryBuffer`.
    /// i.e., ownership is transferred to the `EntryBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEntryBuffer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EntryBufferProtocol`
    /// Will retain `GtkEntryBuffer`.
    /// - Parameter other: an instance of a related type that implements `EntryBufferProtocol`
    @inlinable public init<T: EntryBufferProtocol>(entryBuffer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new GtkEntryBuffer object.
    /// 
    /// Optionally, specify initial text to set in the buffer.
    @inlinable public init( initialChars: UnsafePointer<CChar>? = nil, nInitialChars: Int) {
        let rv = gtk_entry_buffer_new(initialChars, gint(nInitialChars))
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EntryBufferPropertyName: String, PropertyNameProtocol {
    /// The length (in characters) of the text in buffer.
    case length = "length"
    /// The maximum length (in characters) of the text in the buffer.
    case maxLength = "max-length"
    /// The contents of the buffer.
    case text = "text"
}

public extension EntryBufferProtocol {
    /// Bind a `EntryBufferPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryBufferPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EntryBuffer property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EntryBufferPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EntryBuffer property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EntryBufferPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EntryBuffer
public extension EntryBufferProtocol {
    /// The text is altered in the default handler for this signal. If you want
    /// access to the text after the text has been modified, use
    /// `G_CONNECT_AFTER`.
    /// - Note: Representation of signal named `deleted-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter position: the position the text was deleted at.
    /// - Parameter nChars: The number of characters that were deleted.
    @discardableResult
    func onDeletedText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryBufferRef, _ position: UInt, _ nChars: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EntryBufferRef, UInt, UInt, Void>
        let cCallback: @convention(c) (gpointer, guint, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryBufferRef(raw: unownedSelf), UInt(arg1), UInt(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "deleted-text", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted after text is inserted into the buffer.
    /// - Note: Representation of signal named `inserted-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter position: the position the text was inserted at.
    /// - Parameter chars: The text that was inserted.
    /// - Parameter nChars: The number of characters that were inserted.
    @discardableResult
    func onInsertedText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryBufferRef, _ position: UInt, _ chars: String, _ nChars: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<EntryBufferRef, UInt, String, UInt, Void>
        let cCallback: @convention(c) (gpointer, guint, UnsafeMutablePointer<gchar>?, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryBufferRef(raw: unownedSelf), UInt(arg1), arg2.map({ String(cString: $0) })!, UInt(arg3))
            return output
        }
        return signalConnectData(
            detailedSignal: "inserted-text", 
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
    /// - Note: Representation of signal named `notify::length`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLength(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryBufferRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryBufferRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryBufferRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::length", 
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
    /// - Note: Representation of signal named `notify::max-length`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMaxLength(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryBufferRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryBufferRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryBufferRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::max-length", 
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
    /// - Note: Representation of signal named `notify::text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryBufferRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryBufferRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryBufferRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::text", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: EntryBuffer Class: EntryBufferProtocol extension (methods and fields)
public extension EntryBufferProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryBuffer` instance.
    @inlinable var entry_buffer_ptr: UnsafeMutablePointer<GtkEntryBuffer>! { return ptr?.assumingMemoryBound(to: GtkEntryBuffer.self) }

    /// Deletes a sequence of characters from the buffer. `n_chars` characters are
    /// deleted starting at `position`. If `n_chars` is negative, then all characters
    /// until the end of the text are deleted.
    /// 
    /// If `position` or `n_chars` are out of bounds, then they are coerced to sane
    /// values.
    /// 
    /// Note that the positions are specified in characters, not bytes.
    @inlinable func deleteText(position: Int, nChars: Int) -> Int {
        let rv = Int(gtk_entry_buffer_delete_text(entry_buffer_ptr, guint(position), gint(nChars)))
        return rv
    }

    /// Used when subclassing `GtkEntryBuffer`
    @inlinable func emitDeletedText(position: Int, nChars: Int) {
        gtk_entry_buffer_emit_deleted_text(entry_buffer_ptr, guint(position), guint(nChars))
    
    }

    /// Used when subclassing `GtkEntryBuffer`
    @inlinable func emitInsertedText(position: Int, chars: UnsafePointer<CChar>!, nChars: Int) {
        gtk_entry_buffer_emit_inserted_text(entry_buffer_ptr, guint(position), chars, guint(nChars))
    
    }

    /// Retrieves the length in bytes of the buffer.
    /// See `gtk_entry_buffer_get_length()`.
    @inlinable func getBytes() -> Int {
        let rv = Int(gtk_entry_buffer_get_bytes(entry_buffer_ptr))
        return rv
    }

    /// Retrieves the length in characters of the buffer.
    @inlinable func getLength() -> Int {
        let rv = Int(gtk_entry_buffer_get_length(entry_buffer_ptr))
        return rv
    }

    /// Retrieves the maximum allowed length of the text in
    /// `buffer`. See `gtk_entry_buffer_set_max_length()`.
    @inlinable func getMaxLength() -> Int {
        let rv = Int(gtk_entry_buffer_get_max_length(entry_buffer_ptr))
        return rv
    }

    /// Retrieves the contents of the buffer.
    /// 
    /// The memory pointer returned by this call will not change
    /// unless this object emits a signal, or is finalized.
    @inlinable func getText() -> String! {
        let rv = gtk_entry_buffer_get_text(entry_buffer_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Inserts `n_chars` characters of `chars` into the contents of the
    /// buffer, at position `position`.
    /// 
    /// If `n_chars` is negative, then characters from chars will be inserted
    /// until a null-terminator is found. If `position` or `n_chars` are out of
    /// bounds, or the maximum buffer text length is exceeded, then they are
    /// coerced to sane values.
    /// 
    /// Note that the position and length are in characters, not in bytes.
    @inlinable func insertText(position: Int, chars: UnsafePointer<CChar>!, nChars: Int) -> Int {
        let rv = Int(gtk_entry_buffer_insert_text(entry_buffer_ptr, guint(position), chars, gint(nChars)))
        return rv
    }

    /// Sets the maximum allowed length of the contents of the buffer. If
    /// the current contents are longer than the given length, then they
    /// will be truncated to fit.
    @inlinable func set(maxLength: Int) {
        gtk_entry_buffer_set_max_length(entry_buffer_ptr, gint(maxLength))
    
    }

    /// Sets the text in the buffer.
    /// 
    /// This is roughly equivalent to calling `gtk_entry_buffer_delete_text()`
    /// and `gtk_entry_buffer_insert_text()`.
    /// 
    /// Note that `n_chars` is in characters, not in bytes.
    @inlinable func setText(chars: UnsafePointer<CChar>!, nChars: Int) {
        gtk_entry_buffer_set_text(entry_buffer_ptr, chars, gint(nChars))
    
    }
    /// Retrieves the length in bytes of the buffer.
    /// See `gtk_entry_buffer_get_length()`.
    @inlinable var bytes: Int {
        /// Retrieves the length in bytes of the buffer.
        /// See `gtk_entry_buffer_get_length()`.
        get {
            let rv = Int(gtk_entry_buffer_get_bytes(entry_buffer_ptr))
            return rv
        }
    }

    /// The length (in characters) of the text in buffer.
    @inlinable var length: Int {
        /// Retrieves the length in characters of the buffer.
        get {
            let rv = Int(gtk_entry_buffer_get_length(entry_buffer_ptr))
            return rv
        }
    }

    /// Retrieves the maximum allowed length of the text in
    /// `buffer`. See `gtk_entry_buffer_set_max_length()`.
    @inlinable var maxLength: Int {
        /// Retrieves the maximum allowed length of the text in
        /// `buffer`. See `gtk_entry_buffer_set_max_length()`.
        get {
            let rv = Int(gtk_entry_buffer_get_max_length(entry_buffer_ptr))
            return rv
        }
        /// Sets the maximum allowed length of the contents of the buffer. If
        /// the current contents are longer than the given length, then they
        /// will be truncated to fit.
        nonmutating set {
            gtk_entry_buffer_set_max_length(entry_buffer_ptr, gint(newValue))
        }
    }

    /// The contents of the buffer.
    @inlinable var text: String! {
        /// Retrieves the contents of the buffer.
        /// 
        /// The memory pointer returned by this call will not change
        /// unless this object emits a signal, or is finalized.
        get {
            let rv = gtk_entry_buffer_get_text(entry_buffer_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = entry_buffer_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - EntryCompletion Class

/// The `EntryCompletionProtocol` protocol exposes the methods and properties of an underlying `GtkEntryCompletion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryCompletion`.
/// Alternatively, use `EntryCompletionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEntryCompletion` is an auxiliary object to be used in conjunction with
/// `GtkEntry` to provide the completion functionality. It implements the
/// `GtkCellLayout` interface, to allow the user to add extra cells to the
/// `GtkTreeView` with completion matches.
/// 
/// “Completion functionality” means that when the user modifies the text
/// in the entry, `GtkEntryCompletion` checks which rows in the model match
/// the current content of the entry, and displays a list of matches.
/// By default, the matching is done by comparing the entry text
/// case-insensitively against the text column of the model (see
/// `gtk_entry_completion_set_text_column()`), but this can be overridden
/// with a custom match function (see `gtk_entry_completion_set_match_func()`).
/// 
/// When the user selects a completion, the content of the entry is
/// updated. By default, the content of the entry is replaced by the
/// text column of the model, but this can be overridden by connecting
/// to the `GtkEntryCompletion::match`-selected signal and updating the
/// entry in the signal handler. Note that you should return `true` from
/// the signal handler to suppress the default behaviour.
/// 
/// To add completion functionality to an entry, use `gtk_entry_set_completion()`.
/// 
/// GtkEntryCompletion uses a `GtkTreeModelFilter` model to represent the
/// subset of the entire model that is currently matching. While the
/// GtkEntryCompletion signals `GtkEntryCompletion::match`-selected and
/// `GtkEntryCompletion::cursor`-on-match take the original model and an
/// iter pointing to that model as arguments, other callbacks and signals
/// (such as `GtkCellLayoutDataFuncs` or `GtkCellArea::apply`-attributes)
/// will generally take the filter model as argument. As long as you are
/// only calling `gtk_tree_model_get()`, this will make no difference to
/// you. If for some reason, you need the original model, use
/// `gtk_tree_model_filter_get_model()`. Don’t forget to use
/// `gtk_tree_model_filter_convert_iter_to_child_iter()` to obtain a
/// matching iter.
public protocol EntryCompletionProtocol: GLibObject.ObjectProtocol, BuildableProtocol, CellLayoutProtocol {
        /// Untyped pointer to the underlying `GtkEntryCompletion` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntryCompletion` instance.
    var entry_completion_ptr: UnsafeMutablePointer<GtkEntryCompletion>! { get }

}

/// The `EntryCompletionRef` type acts as a lightweight Swift reference to an underlying `GtkEntryCompletion` instance.
/// It exposes methods that can operate on this data type through `EntryCompletionProtocol` conformance.
/// Use `EntryCompletionRef` only as an `unowned` reference to an existing `GtkEntryCompletion` instance.
///
/// `GtkEntryCompletion` is an auxiliary object to be used in conjunction with
/// `GtkEntry` to provide the completion functionality. It implements the
/// `GtkCellLayout` interface, to allow the user to add extra cells to the
/// `GtkTreeView` with completion matches.
/// 
/// “Completion functionality” means that when the user modifies the text
/// in the entry, `GtkEntryCompletion` checks which rows in the model match
/// the current content of the entry, and displays a list of matches.
/// By default, the matching is done by comparing the entry text
/// case-insensitively against the text column of the model (see
/// `gtk_entry_completion_set_text_column()`), but this can be overridden
/// with a custom match function (see `gtk_entry_completion_set_match_func()`).
/// 
/// When the user selects a completion, the content of the entry is
/// updated. By default, the content of the entry is replaced by the
/// text column of the model, but this can be overridden by connecting
/// to the `GtkEntryCompletion::match`-selected signal and updating the
/// entry in the signal handler. Note that you should return `true` from
/// the signal handler to suppress the default behaviour.
/// 
/// To add completion functionality to an entry, use `gtk_entry_set_completion()`.
/// 
/// GtkEntryCompletion uses a `GtkTreeModelFilter` model to represent the
/// subset of the entire model that is currently matching. While the
/// GtkEntryCompletion signals `GtkEntryCompletion::match`-selected and
/// `GtkEntryCompletion::cursor`-on-match take the original model and an
/// iter pointing to that model as arguments, other callbacks and signals
/// (such as `GtkCellLayoutDataFuncs` or `GtkCellArea::apply`-attributes)
/// will generally take the filter model as argument. As long as you are
/// only calling `gtk_tree_model_get()`, this will make no difference to
/// you. If for some reason, you need the original model, use
/// `gtk_tree_model_filter_get_model()`. Don’t forget to use
/// `gtk_tree_model_filter_convert_iter_to_child_iter()` to obtain a
/// matching iter.
public struct EntryCompletionRef: EntryCompletionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEntryCompletion` instance.
    /// For type-safe access, use the generated, typed pointer `entry_completion_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryCompletionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntryCompletion>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntryCompletion>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntryCompletion>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntryCompletion>?) {
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

    /// Reference intialiser for a related type that implements `EntryCompletionProtocol`
    @inlinable init<T: EntryCompletionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EntryCompletionProtocol>(_ other: T) -> EntryCompletionRef { EntryCompletionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkEntryCompletion` object.
    @inlinable init() {
        let rv = gtk_entry_completion_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    @inlinable init<CellAreaT: CellAreaProtocol>(area: CellAreaT) {
        let rv = gtk_entry_completion_new_with_area(area.cell_area_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    @inlinable static func newWith<CellAreaT: CellAreaProtocol>(area: CellAreaT) -> EntryCompletionRef! {
        guard let rv = EntryCompletionRef(gconstpointer: gconstpointer(gtk_entry_completion_new_with_area(area.cell_area_ptr))) else { return nil }
        return rv
    }
}

/// The `EntryCompletion` type acts as a reference-counted owner of an underlying `GtkEntryCompletion` instance.
/// It provides the methods that can operate on this data type through `EntryCompletionProtocol` conformance.
/// Use `EntryCompletion` as a strong reference or owner of a `GtkEntryCompletion` instance.
///
/// `GtkEntryCompletion` is an auxiliary object to be used in conjunction with
/// `GtkEntry` to provide the completion functionality. It implements the
/// `GtkCellLayout` interface, to allow the user to add extra cells to the
/// `GtkTreeView` with completion matches.
/// 
/// “Completion functionality” means that when the user modifies the text
/// in the entry, `GtkEntryCompletion` checks which rows in the model match
/// the current content of the entry, and displays a list of matches.
/// By default, the matching is done by comparing the entry text
/// case-insensitively against the text column of the model (see
/// `gtk_entry_completion_set_text_column()`), but this can be overridden
/// with a custom match function (see `gtk_entry_completion_set_match_func()`).
/// 
/// When the user selects a completion, the content of the entry is
/// updated. By default, the content of the entry is replaced by the
/// text column of the model, but this can be overridden by connecting
/// to the `GtkEntryCompletion::match`-selected signal and updating the
/// entry in the signal handler. Note that you should return `true` from
/// the signal handler to suppress the default behaviour.
/// 
/// To add completion functionality to an entry, use `gtk_entry_set_completion()`.
/// 
/// GtkEntryCompletion uses a `GtkTreeModelFilter` model to represent the
/// subset of the entire model that is currently matching. While the
/// GtkEntryCompletion signals `GtkEntryCompletion::match`-selected and
/// `GtkEntryCompletion::cursor`-on-match take the original model and an
/// iter pointing to that model as arguments, other callbacks and signals
/// (such as `GtkCellLayoutDataFuncs` or `GtkCellArea::apply`-attributes)
/// will generally take the filter model as argument. As long as you are
/// only calling `gtk_tree_model_get()`, this will make no difference to
/// you. If for some reason, you need the original model, use
/// `gtk_tree_model_filter_get_model()`. Don’t forget to use
/// `gtk_tree_model_filter_convert_iter_to_child_iter()` to obtain a
/// matching iter.
open class EntryCompletion: GLibObject.Object, EntryCompletionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryCompletion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEntryCompletion>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryCompletion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEntryCompletion>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryCompletion` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryCompletion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryCompletion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEntryCompletion>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EntryCompletion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEntryCompletion>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEntryCompletion`.
    /// i.e., ownership is transferred to the `EntryCompletion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEntryCompletion>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EntryCompletionProtocol`
    /// Will retain `GtkEntryCompletion`.
    /// - Parameter other: an instance of a related type that implements `EntryCompletionProtocol`
    @inlinable public init<T: EntryCompletionProtocol>(entryCompletion other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkEntryCompletion` object.
    @inlinable public init() {
        let rv = gtk_entry_completion_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    @inlinable public init<CellAreaT: CellAreaProtocol>(area: CellAreaT) {
        let rv = gtk_entry_completion_new_with_area(area.cell_area_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    @inlinable public static func newWith<CellAreaT: CellAreaProtocol>(area: CellAreaT) -> EntryCompletion! {
        guard let rv = EntryCompletion(gconstpointer: gconstpointer(gtk_entry_completion_new_with_area(area.cell_area_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum EntryCompletionPropertyName: String, PropertyNameProtocol {
    /// The `GtkCellArea` used to layout cell renderers in the treeview column.
    /// 
    /// If no area is specified when creating the entry completion with
    /// `gtk_entry_completion_new_with_area()` a horizontally oriented
    /// `GtkCellAreaBox` will be used.
    case cellArea = "cell-area"
    /// Determines whether the common prefix of the possible completions
    /// should be inserted automatically in the entry. Note that this
    /// requires text-column to be set, even if you are using a custom
    /// match function.
    case inlineCompletion = "inline-completion"
    /// Determines whether the possible completions on the popup
    /// will appear in the entry as you navigate through them.
    case inlineSelection = "inline-selection"
    case minimumKeyLength = "minimum-key-length"
    case model = "model"
    /// Determines whether the possible completions should be
    /// shown in a popup window.
    case popupCompletion = "popup-completion"
    /// Determines whether the completions popup window will be
    /// resized to the width of the entry.
    case popupSetWidth = "popup-set-width"
    /// Determines whether the completions popup window will shown
    /// for a single possible completion. You probably want to set
    /// this to `false` if you are using
    /// [inline completion](#GtkEntryCompletion--inline-completion).
    case popupSingleMatch = "popup-single-match"
    /// The column of the model containing the strings.
    /// Note that the strings must be UTF-8.
    case textColumn = "text-column"
}

public extension EntryCompletionProtocol {
    /// Bind a `EntryCompletionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryCompletionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EntryCompletion property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EntryCompletionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EntryCompletion property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EntryCompletionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EntryCompletion
public extension EntryCompletionProtocol {
    /// Gets emitted when a match from the cursor is on a match
    /// of the list. The default behaviour is to replace the contents
    /// of the entry with the contents of the text column in the row
    /// pointed to by `iter`.
    /// 
    /// Note that `model` is the model that was passed to
    /// `gtk_entry_completion_set_model()`.
    /// - Note: Representation of signal named `cursor-on-match`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the signal has been handled
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter model: the `GtkTreeModel` containing the matches
    /// - Parameter iter: a `GtkTreeIter` positioned at the selected match
    @discardableResult
    func onCursorOnMatch(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ model: TreeModelRef, _ iter: TreeIterRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EntryCompletionRef, TreeModelRef, TreeIterRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(EntryCompletionRef(raw: unownedSelf), TreeModelRef(raw: arg1), TreeIterRef(raw: arg2))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "cursor-on-match", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Gets emitted when the inline autocompletion is triggered.
    /// The default behaviour is to make the entry display the
    /// whole prefix and select the newly inserted part.
    /// 
    /// Applications may connect to this signal in order to insert only a
    /// smaller part of the `prefix` into the entry - e.g. the entry used in
    /// the `GtkFileChooser` inserts only the part of the prefix up to the
    /// next '/'.
    /// - Note: Representation of signal named `insert-prefix`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the signal has been handled
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter `prefix`: the common prefix of all possible completions
    @discardableResult
    func onInsertPrefix(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ `prefix`: String) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, String, Bool>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(EntryCompletionRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "insert-prefix", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Gets emitted when a match from the list is selected.
    /// The default behaviour is to replace the contents of the
    /// entry with the contents of the text column in the row
    /// pointed to by `iter`.
    /// 
    /// Note that `model` is the model that was passed to
    /// `gtk_entry_completion_set_model()`.
    /// - Note: Representation of signal named `match-selected`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the signal has been handled
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter model: the `GtkTreeModel` containing the matches
    /// - Parameter iter: a `GtkTreeIter` positioned at the selected match
    @discardableResult
    func onMatchSelected(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ model: TreeModelRef, _ iter: TreeIterRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EntryCompletionRef, TreeModelRef, TreeIterRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(EntryCompletionRef(raw: unownedSelf), TreeModelRef(raw: arg1), TreeIterRef(raw: arg2))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "match-selected", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Gets emitted when the filter model has zero
    /// number of rows in completion_complete method.
    /// (In other words when GtkEntryCompletion is out of
    ///  suggestions)
    /// - Note: Representation of signal named `no-matches`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onNoMatches(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryCompletionRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "no-matches", 
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
    /// - Note: Representation of signal named `notify::cell-area`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCellArea(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::cell-area", 
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
    /// - Note: Representation of signal named `notify::inline-completion`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInlineCompletion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::inline-completion", 
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
    /// - Note: Representation of signal named `notify::inline-selection`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInlineSelection(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::inline-selection", 
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
    /// - Note: Representation of signal named `notify::minimum-key-length`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMinimumKeyLength(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::minimum-key-length", 
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
    /// - Note: Representation of signal named `notify::model`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyModel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::model", 
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
    /// - Note: Representation of signal named `notify::popup-completion`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPopupCompletion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::popup-completion", 
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
    /// - Note: Representation of signal named `notify::popup-set-width`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPopupSetWidth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::popup-set-width", 
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
    /// - Note: Representation of signal named `notify::popup-single-match`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPopupSingleMatch(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::popup-single-match", 
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
    /// - Note: Representation of signal named `notify::text-column`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTextColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryCompletionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryCompletionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryCompletionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::text-column", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: EntryCompletion Class: EntryCompletionProtocol extension (methods and fields)
public extension EntryCompletionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryCompletion` instance.
    @inlinable var entry_completion_ptr: UnsafeMutablePointer<GtkEntryCompletion>! { return ptr?.assumingMemoryBound(to: GtkEntryCompletion.self) }

    /// Requests a completion operation, or in other words a refiltering of the
    /// current list with completions, using the current key. The completion list
    /// view will be updated accordingly.
    @inlinable func complete() {
        gtk_entry_completion_complete(entry_completion_ptr)
    
    }

    /// Computes the common prefix that is shared by all rows in `completion`
    /// that start with `key`. If no row matches `key`, `nil` will be returned.
    /// Note that a text column must have been set for this function to work,
    /// see `gtk_entry_completion_set_text_column()` for details.
    @inlinable func computePrefix(key: UnsafePointer<CChar>!) -> String! {
        let rv = gtk_entry_completion_compute_prefix(entry_completion_ptr, key).map({ String(cString: $0) })
        return rv
    }

    /// Get the original text entered by the user that triggered
    /// the completion or `nil` if there’s no completion ongoing.
    @inlinable func getCompletionPrefix() -> String! {
        let rv = gtk_entry_completion_get_completion_prefix(entry_completion_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the entry `completion` has been attached to.
    @inlinable func getEntry() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_entry_completion_get_entry(entry_completion_ptr)))
        return rv
    }

    /// Returns whether the common prefix of the possible completions should
    /// be automatically inserted in the entry.
    @inlinable func getInlineCompletion() -> Bool {
        let rv = ((gtk_entry_completion_get_inline_completion(entry_completion_ptr)) != 0)
        return rv
    }

    /// Returns `true` if inline-selection mode is turned on.
    @inlinable func getInlineSelection() -> Bool {
        let rv = ((gtk_entry_completion_get_inline_selection(entry_completion_ptr)) != 0)
        return rv
    }

    /// Returns the minimum key length as set for `completion`.
    @inlinable func getMinimumKeyLength() -> Int {
        let rv = Int(gtk_entry_completion_get_minimum_key_length(entry_completion_ptr))
        return rv
    }

    /// Returns the model the `GtkEntryCompletion` is using as data source.
    /// Returns `nil` if the model is unset.
    @inlinable func getModel() -> TreeModelRef! {
        let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_entry_completion_get_model(entry_completion_ptr)))
        return rv
    }

    /// Returns whether the completions should be presented in a popup window.
    @inlinable func getPopupCompletion() -> Bool {
        let rv = ((gtk_entry_completion_get_popup_completion(entry_completion_ptr)) != 0)
        return rv
    }

    /// Returns whether the  completion popup window will be resized to the
    /// width of the entry.
    @inlinable func getPopupSetWidth() -> Bool {
        let rv = ((gtk_entry_completion_get_popup_set_width(entry_completion_ptr)) != 0)
        return rv
    }

    /// Returns whether the completion popup window will appear even if there is
    /// only a single match.
    @inlinable func getPopupSingleMatch() -> Bool {
        let rv = ((gtk_entry_completion_get_popup_single_match(entry_completion_ptr)) != 0)
        return rv
    }

    /// Returns the column in the model of `completion` to get strings from.
    @inlinable func getTextColumn() -> Int {
        let rv = Int(gtk_entry_completion_get_text_column(entry_completion_ptr))
        return rv
    }

    /// Requests a prefix insertion.
    @inlinable func insertPrefix() {
        gtk_entry_completion_insert_prefix(entry_completion_ptr)
    
    }

    /// Sets whether the common prefix of the possible completions should
    /// be automatically inserted in the entry.
    @inlinable func set(inlineCompletion: Bool) {
        gtk_entry_completion_set_inline_completion(entry_completion_ptr, gboolean((inlineCompletion) ? 1 : 0))
    
    }

    /// Sets whether it is possible to cycle through the possible completions
    /// inside the entry.
    @inlinable func set(inlineSelection: Bool) {
        gtk_entry_completion_set_inline_selection(entry_completion_ptr, gboolean((inlineSelection) ? 1 : 0))
    
    }

    /// Sets the match function for `completion` to be `func`. The match function
    /// is used to determine if a row should or should not be in the completion
    /// list.
    @inlinable func setMatchFunc(`func`: GtkEntryCompletionMatchFunc?, funcData: gpointer! = nil, funcNotify: GDestroyNotify?) {
        gtk_entry_completion_set_match_func(entry_completion_ptr, `func`, funcData, funcNotify)
    
    }

    /// Requires the length of the search key for `completion` to be at least
    /// `length`. This is useful for long lists, where completing using a small
    /// key takes a lot of time and will come up with meaningless results anyway
    /// (ie, a too large dataset).
    @inlinable func setMinimumKey(length: Int) {
        gtk_entry_completion_set_minimum_key_length(entry_completion_ptr, gint(length))
    
    }

    /// Sets the model for a `GtkEntryCompletion`. If `completion` already has
    /// a model set, it will remove it before setting the new model.
    /// If model is `nil`, then it will unset the model.
    @inlinable func set(model: TreeModelRef? = nil) {
        gtk_entry_completion_set_model(entry_completion_ptr, model?.tree_model_ptr)
    
    }
    /// Sets the model for a `GtkEntryCompletion`. If `completion` already has
    /// a model set, it will remove it before setting the new model.
    /// If model is `nil`, then it will unset the model.
    @inlinable func set<TreeModelT: TreeModelProtocol>(model: TreeModelT?) {
        gtk_entry_completion_set_model(entry_completion_ptr, model?.tree_model_ptr)
    
    }

    /// Sets whether the completions should be presented in a popup window.
    @inlinable func set(popupCompletion: Bool) {
        gtk_entry_completion_set_popup_completion(entry_completion_ptr, gboolean((popupCompletion) ? 1 : 0))
    
    }

    /// Sets whether the completion popup window will be resized to be the same
    /// width as the entry.
    @inlinable func set(popupSetWidth: Bool) {
        gtk_entry_completion_set_popup_set_width(entry_completion_ptr, gboolean((popupSetWidth) ? 1 : 0))
    
    }

    /// Sets whether the completion popup window will appear even if there is
    /// only a single match. You may want to set this to `false` if you
    /// are using [inline completion](#GtkEntryCompletion--inline-completion).
    @inlinable func set(popupSingleMatch: Bool) {
        gtk_entry_completion_set_popup_single_match(entry_completion_ptr, gboolean((popupSingleMatch) ? 1 : 0))
    
    }

    /// Convenience function for setting up the most used case of this code: a
    /// completion list with just strings. This function will set up `completion`
    /// to have a list displaying all (and just) strings in the completion list,
    /// and to get those strings from `column` in the model of `completion`.
    /// 
    /// This functions creates and adds a `GtkCellRendererText` for the selected
    /// column. If you need to set the text column, but don't want the cell
    /// renderer, use `g_object_set()` to set the `GtkEntryCompletion:text`-column
    /// property directly.
    @inlinable func setText(column: Int) {
        gtk_entry_completion_set_text_column(entry_completion_ptr, gint(column))
    
    }
    /// Get the original text entered by the user that triggered
    /// the completion or `nil` if there’s no completion ongoing.
    @inlinable var completionPrefix: String! {
        /// Get the original text entered by the user that triggered
        /// the completion or `nil` if there’s no completion ongoing.
        get {
            let rv = gtk_entry_completion_get_completion_prefix(entry_completion_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the entry `completion` has been attached to.
    @inlinable var entry: WidgetRef! {
        /// Gets the entry `completion` has been attached to.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_entry_completion_get_entry(entry_completion_ptr)))
            return rv
        }
    }

    /// Returns whether the common prefix of the possible completions should
    /// be automatically inserted in the entry.
    @inlinable var inlineCompletion: Bool {
        /// Returns whether the common prefix of the possible completions should
        /// be automatically inserted in the entry.
        get {
            let rv = ((gtk_entry_completion_get_inline_completion(entry_completion_ptr)) != 0)
            return rv
        }
        /// Sets whether the common prefix of the possible completions should
        /// be automatically inserted in the entry.
        nonmutating set {
            gtk_entry_completion_set_inline_completion(entry_completion_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns `true` if inline-selection mode is turned on.
    @inlinable var inlineSelection: Bool {
        /// Returns `true` if inline-selection mode is turned on.
        get {
            let rv = ((gtk_entry_completion_get_inline_selection(entry_completion_ptr)) != 0)
            return rv
        }
        /// Sets whether it is possible to cycle through the possible completions
        /// inside the entry.
        nonmutating set {
            gtk_entry_completion_set_inline_selection(entry_completion_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the minimum key length as set for `completion`.
    @inlinable var minimumKeyLength: Int {
        /// Returns the minimum key length as set for `completion`.
        get {
            let rv = Int(gtk_entry_completion_get_minimum_key_length(entry_completion_ptr))
            return rv
        }
        /// Requires the length of the search key for `completion` to be at least
        /// `length`. This is useful for long lists, where completing using a small
        /// key takes a lot of time and will come up with meaningless results anyway
        /// (ie, a too large dataset).
        nonmutating set {
            gtk_entry_completion_set_minimum_key_length(entry_completion_ptr, gint(newValue))
        }
    }

    @inlinable var model: TreeModelRef! {
        /// Returns the model the `GtkEntryCompletion` is using as data source.
        /// Returns `nil` if the model is unset.
        get {
            let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_entry_completion_get_model(entry_completion_ptr)))
            return rv
        }
        /// Sets the model for a `GtkEntryCompletion`. If `completion` already has
        /// a model set, it will remove it before setting the new model.
        /// If model is `nil`, then it will unset the model.
        nonmutating set {
            gtk_entry_completion_set_model(entry_completion_ptr, UnsafeMutablePointer<GtkTreeModel>(newValue?.tree_model_ptr))
        }
    }

    /// Returns whether the completions should be presented in a popup window.
    @inlinable var popupCompletion: Bool {
        /// Returns whether the completions should be presented in a popup window.
        get {
            let rv = ((gtk_entry_completion_get_popup_completion(entry_completion_ptr)) != 0)
            return rv
        }
        /// Sets whether the completions should be presented in a popup window.
        nonmutating set {
            gtk_entry_completion_set_popup_completion(entry_completion_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the  completion popup window will be resized to the
    /// width of the entry.
    @inlinable var popupSetWidth: Bool {
        /// Returns whether the  completion popup window will be resized to the
        /// width of the entry.
        get {
            let rv = ((gtk_entry_completion_get_popup_set_width(entry_completion_ptr)) != 0)
            return rv
        }
        /// Sets whether the completion popup window will be resized to be the same
        /// width as the entry.
        nonmutating set {
            gtk_entry_completion_set_popup_set_width(entry_completion_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the completion popup window will appear even if there is
    /// only a single match.
    @inlinable var popupSingleMatch: Bool {
        /// Returns whether the completion popup window will appear even if there is
        /// only a single match.
        get {
            let rv = ((gtk_entry_completion_get_popup_single_match(entry_completion_ptr)) != 0)
            return rv
        }
        /// Sets whether the completion popup window will appear even if there is
        /// only a single match. You may want to set this to `false` if you
        /// are using [inline completion](#GtkEntryCompletion--inline-completion).
        nonmutating set {
            gtk_entry_completion_set_popup_single_match(entry_completion_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the column in the model of `completion` to get strings from.
    @inlinable var textColumn: Int {
        /// Returns the column in the model of `completion` to get strings from.
        get {
            let rv = Int(gtk_entry_completion_get_text_column(entry_completion_ptr))
            return rv
        }
        /// Convenience function for setting up the most used case of this code: a
        /// completion list with just strings. This function will set up `completion`
        /// to have a list displaying all (and just) strings in the completion list,
        /// and to get those strings from `column` in the model of `completion`.
        /// 
        /// This functions creates and adds a `GtkCellRendererText` for the selected
        /// column. If you need to set the text column, but don't want the cell
        /// renderer, use `g_object_set()` to set the `GtkEntryCompletion:text`-column
        /// property directly.
        nonmutating set {
            gtk_entry_completion_set_text_column(entry_completion_ptr, gint(newValue))
        }
    }


}



// MARK: - EventController Class

/// The `EventControllerProtocol` protocol exposes the methods and properties of an underlying `GtkEventController` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventController`.
/// Alternatively, use `EventControllerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventController` is a base, low-level implementation for event
/// controllers. Those react to a series of `GdkEvents`, and possibly trigger
/// actions as a consequence of those.
public protocol EventControllerProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkEventController` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventController` instance.
    var event_controller_ptr: UnsafeMutablePointer<GtkEventController>! { get }

}

/// The `EventControllerRef` type acts as a lightweight Swift reference to an underlying `GtkEventController` instance.
/// It exposes methods that can operate on this data type through `EventControllerProtocol` conformance.
/// Use `EventControllerRef` only as an `unowned` reference to an existing `GtkEventController` instance.
///
/// `GtkEventController` is a base, low-level implementation for event
/// controllers. Those react to a series of `GdkEvents`, and possibly trigger
/// actions as a consequence of those.
public struct EventControllerRef: EventControllerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEventController` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventController>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventController>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventController>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventController>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerProtocol`
    @inlinable init<T: EventControllerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EventControllerProtocol>(_ other: T) -> EventControllerRef { EventControllerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventController` type acts as a reference-counted owner of an underlying `GtkEventController` instance.
/// It provides the methods that can operate on this data type through `EventControllerProtocol` conformance.
/// Use `EventController` as a strong reference or owner of a `GtkEventController` instance.
///
/// `GtkEventController` is a base, low-level implementation for event
/// controllers. Those react to a series of `GdkEvents`, and possibly trigger
/// actions as a consequence of those.
open class EventController: GLibObject.Object, EventControllerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEventController>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEventController>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventController` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEventController>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEventController>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEventController`.
    /// i.e., ownership is transferred to the `EventController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEventController>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EventControllerProtocol`
    /// Will retain `GtkEventController`.
    /// - Parameter other: an instance of a related type that implements `EventControllerProtocol`
    @inlinable public init<T: EventControllerProtocol>(eventController other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum EventControllerPropertyName: String, PropertyNameProtocol {
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerProtocol {
    /// Bind a `EventControllerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EventController property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EventControllerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EventController property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EventControllerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: EventController has no signals// MARK: EventController Class: EventControllerProtocol extension (methods and fields)
public extension EventControllerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventController` instance.
    @inlinable var event_controller_ptr: UnsafeMutablePointer<GtkEventController>! { return ptr?.assumingMemoryBound(to: GtkEventController.self) }

    /// Returns the event that is currently being handled by the
    /// controller, and `nil` at other times.
    @inlinable func getCurrentEvent() -> Gdk.EventRef! {
        let rv = Gdk.EventRef(gtk_event_controller_get_current_event(event_controller_ptr))
        return rv
    }

    /// Returns the device of the event that is currently being
    /// handled by the controller, and `nil` otherwise.
    @inlinable func getCurrentEventDevice() -> Gdk.DeviceRef! {
        let rv = Gdk.DeviceRef(gtk_event_controller_get_current_event_device(event_controller_ptr))
        return rv
    }

    /// Returns the modifier state of the event that is currently being
    /// handled by the controller, and 0 otherwise.
    @inlinable func getCurrentEventState() -> Gdk.ModifierType {
        let rv = Gdk.ModifierType(gtk_event_controller_get_current_event_state(event_controller_ptr))
        return rv
    }

    /// Returns the timestamp of the event that is currently being
    /// handled by the controller, and 0 otherwise.
    @inlinable func getCurrentEventTime() -> guint32 {
        let rv = gtk_event_controller_get_current_event_time(event_controller_ptr)
        return rv
    }

    /// Gets the name of `controller`.
    @inlinable func getName() -> String! {
        let rv = gtk_event_controller_get_name(event_controller_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the propagation limit of the event controller.
    @inlinable func getPropagationLimit() -> GtkPropagationLimit {
        let rv = gtk_event_controller_get_propagation_limit(event_controller_ptr)
        return rv
    }

    /// Gets the propagation phase at which `controller` handles events.
    @inlinable func getPropagationPhase() -> GtkPropagationPhase {
        let rv = gtk_event_controller_get_propagation_phase(event_controller_ptr)
        return rv
    }

    /// Returns the `GtkWidget` this controller relates to.
    @inlinable func getWidget() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_event_controller_get_widget(event_controller_ptr)))
        return rv
    }

    /// Resets the `controller` to a clean state. Every interaction
    /// the controller did through `gtk_event_controller_handle_event()`
    /// will be dropped at this point.
    @inlinable func reset() {
        gtk_event_controller_reset(event_controller_ptr)
    
    }

    /// Sets a name on the controller that can be used for
    /// debugging.
    @inlinable func set(name: UnsafePointer<CChar>!) {
        gtk_event_controller_set_name(event_controller_ptr, name)
    
    }

    /// Sets the event propagation limit on the event controller.
    /// 
    /// If the limit is set to `GTK_LIMIT_SAME_NATIVE`, the controller
    /// won't handle events that are targeted at widgets on a different
    /// surface, such as popovers.
    @inlinable func setPropagation(limit: GtkPropagationLimit) {
        gtk_event_controller_set_propagation_limit(event_controller_ptr, limit)
    
    }

    /// Sets the propagation phase at which a controller handles events.
    /// 
    /// If `phase` is `GTK_PHASE_NONE`, no automatic event handling will be
    /// performed, but other additional gesture maintenance will. In that phase,
    /// the events can be managed by calling `gtk_event_controller_handle_event()`.
    @inlinable func setPropagation(phase: GtkPropagationPhase) {
        gtk_event_controller_set_propagation_phase(event_controller_ptr, phase)
    
    }
    /// Returns the event that is currently being handled by the
    /// controller, and `nil` at other times.
    @inlinable var currentEvent: Gdk.EventRef! {
        /// Returns the event that is currently being handled by the
        /// controller, and `nil` at other times.
        get {
            let rv = Gdk.EventRef(gtk_event_controller_get_current_event(event_controller_ptr))
            return rv
        }
    }

    /// Returns the device of the event that is currently being
    /// handled by the controller, and `nil` otherwise.
    @inlinable var currentEventDevice: Gdk.DeviceRef! {
        /// Returns the device of the event that is currently being
        /// handled by the controller, and `nil` otherwise.
        get {
            let rv = Gdk.DeviceRef(gtk_event_controller_get_current_event_device(event_controller_ptr))
            return rv
        }
    }

    /// Returns the modifier state of the event that is currently being
    /// handled by the controller, and 0 otherwise.
    @inlinable var currentEventState: Gdk.ModifierType {
        /// Returns the modifier state of the event that is currently being
        /// handled by the controller, and 0 otherwise.
        get {
            let rv = Gdk.ModifierType(gtk_event_controller_get_current_event_state(event_controller_ptr))
            return rv
        }
    }

    /// Returns the timestamp of the event that is currently being
    /// handled by the controller, and 0 otherwise.
    @inlinable var currentEventTime: guint32 {
        /// Returns the timestamp of the event that is currently being
        /// handled by the controller, and 0 otherwise.
        get {
            let rv = gtk_event_controller_get_current_event_time(event_controller_ptr)
            return rv
        }
    }

    /// The name for this controller, typically used for debugging purposes.
    @inlinable var name: String! {
        /// Gets the name of `controller`.
        get {
            let rv = gtk_event_controller_get_name(event_controller_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets a name on the controller that can be used for
        /// debugging.
        nonmutating set {
            gtk_event_controller_set_name(event_controller_ptr, newValue)
        }
    }

    /// Gets the propagation limit of the event controller.
    @inlinable var propagationLimit: GtkPropagationLimit {
        /// Gets the propagation limit of the event controller.
        get {
            let rv = gtk_event_controller_get_propagation_limit(event_controller_ptr)
            return rv
        }
        /// Sets the event propagation limit on the event controller.
        /// 
        /// If the limit is set to `GTK_LIMIT_SAME_NATIVE`, the controller
        /// won't handle events that are targeted at widgets on a different
        /// surface, such as popovers.
        nonmutating set {
            gtk_event_controller_set_propagation_limit(event_controller_ptr, newValue)
        }
    }

    /// Gets the propagation phase at which `controller` handles events.
    @inlinable var propagationPhase: GtkPropagationPhase {
        /// Gets the propagation phase at which `controller` handles events.
        get {
            let rv = gtk_event_controller_get_propagation_phase(event_controller_ptr)
            return rv
        }
        /// Sets the propagation phase at which a controller handles events.
        /// 
        /// If `phase` is `GTK_PHASE_NONE`, no automatic event handling will be
        /// performed, but other additional gesture maintenance will. In that phase,
        /// the events can be managed by calling `gtk_event_controller_handle_event()`.
        nonmutating set {
            gtk_event_controller_set_propagation_phase(event_controller_ptr, newValue)
        }
    }

    /// The widget receiving the `GdkEvents` that the controller will handle.
    @inlinable var widget: WidgetRef! {
        /// Returns the `GtkWidget` this controller relates to.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_event_controller_get_widget(event_controller_ptr)))
            return rv
        }
    }


}



// MARK: - EventControllerFocus Class

/// The `EventControllerFocusProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerFocus` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerFocus`.
/// Alternatively, use `EventControllerFocusRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerFocus` is an event controller meant for situations
/// where you need to know where the focus is.
public protocol EventControllerFocusProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerFocus` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerFocus` instance.
    var event_controller_focus_ptr: UnsafeMutablePointer<GtkEventControllerFocus>! { get }

}

/// The `EventControllerFocusRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerFocus` instance.
/// It exposes methods that can operate on this data type through `EventControllerFocusProtocol` conformance.
/// Use `EventControllerFocusRef` only as an `unowned` reference to an existing `GtkEventControllerFocus` instance.
///
/// `GtkEventControllerFocus` is an event controller meant for situations
/// where you need to know where the focus is.
public struct EventControllerFocusRef: EventControllerFocusProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEventControllerFocus` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_focus_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerFocusRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerFocus>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerFocus>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerFocus>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerFocus>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerFocusProtocol`
    @inlinable init<T: EventControllerFocusProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EventControllerFocusProtocol>(_ other: T) -> EventControllerFocusRef { EventControllerFocusRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event controller that will handle focus events.
    @inlinable init() {
        let rv = gtk_event_controller_focus_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EventControllerFocus` type acts as a reference-counted owner of an underlying `GtkEventControllerFocus` instance.
/// It provides the methods that can operate on this data type through `EventControllerFocusProtocol` conformance.
/// Use `EventControllerFocus` as a strong reference or owner of a `GtkEventControllerFocus` instance.
///
/// `GtkEventControllerFocus` is an event controller meant for situations
/// where you need to know where the focus is.
open class EventControllerFocus: EventController, EventControllerFocusProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerFocus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEventControllerFocus>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerFocus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEventControllerFocus>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerFocus` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerFocus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerFocus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEventControllerFocus>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerFocus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEventControllerFocus>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEventControllerFocus`.
    /// i.e., ownership is transferred to the `EventControllerFocus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEventControllerFocus>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EventControllerFocusProtocol`
    /// Will retain `GtkEventControllerFocus`.
    /// - Parameter other: an instance of a related type that implements `EventControllerFocusProtocol`
    @inlinable public init<T: EventControllerFocusProtocol>(eventControllerFocus other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new event controller that will handle focus events.
    @inlinable public init() {
        let rv = gtk_event_controller_focus_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EventControllerFocusPropertyName: String, PropertyNameProtocol {
    /// Whether focus is contain in the controllers widget. See
    /// See `GtkEventControllerFocus:is`-focus for whether the focus is in the widget itself
    /// or inside a descendent.
    /// 
    /// When handling focus events, this property is updated
    /// before `GtkEventControllerFocus::enter` or
    /// `GtkEventControllerFocus::leave` are emitted.
    case containsFocus = "contains-focus"
    /// Whether focus is in the controllers widget itself,
    /// opposed to in a descendent widget. See also
    /// `GtkEventControllerFocus:contains`-focus.
    /// 
    /// When handling focus events, this property is updated
    /// before `GtkEventControllerFocus::enter` or
    /// `GtkEventControllerFocus::leave` are emitted.
    case isFocus = "is-focus"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerFocusProtocol {
    /// Bind a `EventControllerFocusPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerFocusPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EventControllerFocus property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EventControllerFocusPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EventControllerFocus property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EventControllerFocusPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EventControllerFocus
public extension EventControllerFocusProtocol {
    /// This signal is emitted whenever the focus enters into the
    /// widget or one of its descendents.
    /// 
    /// Note that this means you may not get an `enter` signal
    /// even though the widget becomes the focus location, in
    /// certain cases (such as when the focus moves from a descendent
    /// of the widget to the widget itself). If you are interested
    /// in these cases, you can monitor the `GtkEventControllerFocus:is`-focus
    /// property for changes.
    /// - Note: Representation of signal named `enter`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onEnter(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerFocusRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EventControllerFocusRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerFocusRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "enter", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted whenever the focus leaves the
    /// widget hierarchy that is rooted at the widget that the
    /// controller is attached to.
    /// 
    /// Note that this means you may not get a `leave` signal
    /// even though the focus moves away from the widget, in
    /// certain cases (such as when the focus moves from the widget
    /// to a descendent). If you are interested in these cases, you
    /// can monitor the `GtkEventControllerFocus:is`-focus property
    /// for changes.
    /// - Note: Representation of signal named `leave`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onLeave(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerFocusRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EventControllerFocusRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerFocusRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "leave", 
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
    /// - Note: Representation of signal named `notify::contains-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyContainsFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerFocusRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EventControllerFocusRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerFocusRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::contains-focus", 
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
    /// - Note: Representation of signal named `notify::is-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyIsFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerFocusRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EventControllerFocusRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerFocusRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::is-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: EventControllerFocus Class: EventControllerFocusProtocol extension (methods and fields)
public extension EventControllerFocusProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerFocus` instance.
    @inlinable var event_controller_focus_ptr: UnsafeMutablePointer<GtkEventControllerFocus>! { return ptr?.assumingMemoryBound(to: GtkEventControllerFocus.self) }

    /// Returns the value of the GtkEventControllerFocus:contains-focus property.
    @inlinable func containsFocus() -> Bool {
        let rv = ((gtk_event_controller_focus_contains_focus(event_controller_focus_ptr)) != 0)
        return rv
    }
    /// Returns the value of the GtkEventControllerFocus:is-focus property.
    @inlinable var isFocus: Bool {
        /// Returns the value of the GtkEventControllerFocus:is-focus property.
        get {
            let rv = ((gtk_event_controller_focus_is_focus(event_controller_focus_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - EventControllerKey Class

/// The `EventControllerKeyProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerKey`.
/// Alternatively, use `EventControllerKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerKey` is an event controller meant for situations
/// where you need access to key events.
public protocol EventControllerKeyProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerKey` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerKey` instance.
    var event_controller_key_ptr: UnsafeMutablePointer<GtkEventControllerKey>! { get }

}

/// The `EventControllerKeyRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerKey` instance.
/// It exposes methods that can operate on this data type through `EventControllerKeyProtocol` conformance.
/// Use `EventControllerKeyRef` only as an `unowned` reference to an existing `GtkEventControllerKey` instance.
///
/// `GtkEventControllerKey` is an event controller meant for situations
/// where you need access to key events.
public struct EventControllerKeyRef: EventControllerKeyProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEventControllerKey` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_key_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerKeyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerKey>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerKey>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerKey>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerKeyProtocol`
    @inlinable init<T: EventControllerKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EventControllerKeyProtocol>(_ other: T) -> EventControllerKeyRef { EventControllerKeyRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event controller that will handle key events.
    @inlinable init() {
        let rv = gtk_event_controller_key_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EventControllerKey` type acts as a reference-counted owner of an underlying `GtkEventControllerKey` instance.
/// It provides the methods that can operate on this data type through `EventControllerKeyProtocol` conformance.
/// Use `EventControllerKey` as a strong reference or owner of a `GtkEventControllerKey` instance.
///
/// `GtkEventControllerKey` is an event controller meant for situations
/// where you need access to key events.
open class EventControllerKey: EventController, EventControllerKeyProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEventControllerKey>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEventControllerKey>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerKey` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEventControllerKey>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEventControllerKey>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEventControllerKey`.
    /// i.e., ownership is transferred to the `EventControllerKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEventControllerKey>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EventControllerKeyProtocol`
    /// Will retain `GtkEventControllerKey`.
    /// - Parameter other: an instance of a related type that implements `EventControllerKeyProtocol`
    @inlinable public init<T: EventControllerKeyProtocol>(eventControllerKey other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new event controller that will handle key events.
    @inlinable public init() {
        let rv = gtk_event_controller_key_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EventControllerKeyPropertyName: String, PropertyNameProtocol {
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerKeyProtocol {
    /// Bind a `EventControllerKeyPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerKeyPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EventControllerKey property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EventControllerKeyPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EventControllerKey property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EventControllerKeyPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EventControllerKey
public extension EventControllerKeyProtocol {
    /// This signal is emitted whenever the input method context filters away a
    /// keypress and prevents the `controller` receiving it. See
    /// `gtk_event_controller_key_set_im_context()` and
    /// `gtk_im_context_filter_keypress()`.
    /// - Note: Representation of signal named `im-update`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onImUpdate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerKeyRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EventControllerKeyRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerKeyRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "im-update", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted whenever a key is pressed.
    /// - Note: Representation of signal named `key-pressed`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the key press was handled, `false` otherwise.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter keyval: the pressed key.
    /// - Parameter keycode: the raw code of the pressed key.
    /// - Parameter state: the bitmask, representing the state of modifier keys and pointer buttons. See `GdkModifierType`.
    @discardableResult
    func onKeyPressed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerKeyRef, _ keyval: UInt, _ keycode: UInt, _ state: Gdk.ModifierType) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<EventControllerKeyRef, UInt, UInt, Gdk.ModifierType, Bool>
        let cCallback: @convention(c) (gpointer, guint, guint, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(EventControllerKeyRef(raw: unownedSelf), UInt(arg1), UInt(arg2), Gdk.ModifierType(arg3))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "key-pressed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted whenever a key is released.
    /// - Note: Representation of signal named `key-released`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter keyval: the released key.
    /// - Parameter keycode: the raw code of the released key.
    /// - Parameter state: the bitmask, representing the state of modifier keys and pointer buttons. See `GdkModifierType`.
    @discardableResult
    func onKeyReleased(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerKeyRef, _ keyval: UInt, _ keycode: UInt, _ state: Gdk.ModifierType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<EventControllerKeyRef, UInt, UInt, Gdk.ModifierType, Void>
        let cCallback: @convention(c) (gpointer, guint, guint, UInt32, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerKeyRef(raw: unownedSelf), UInt(arg1), UInt(arg2), Gdk.ModifierType(arg3))
            return output
        }
        return signalConnectData(
            detailedSignal: "key-released", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted whenever the state of modifier keys and pointer
    /// buttons change.
    /// - Note: Representation of signal named `modifiers`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter keyval: the released key.
    @discardableResult
    func onModifiers(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerKeyRef, _ keyval: Gdk.ModifierType) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EventControllerKeyRef, Gdk.ModifierType, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(EventControllerKeyRef(raw: unownedSelf), Gdk.ModifierType(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "modifiers", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: EventControllerKey Class: EventControllerKeyProtocol extension (methods and fields)
public extension EventControllerKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerKey` instance.
    @inlinable var event_controller_key_ptr: UnsafeMutablePointer<GtkEventControllerKey>! { return ptr?.assumingMemoryBound(to: GtkEventControllerKey.self) }

    /// Forwards the current event of this `controller` to a `widget`.
    /// 
    /// This function can only be used in handlers for the
    /// `GtkEventControllerKey::key`-pressed,
    /// `GtkEventControllerKey::key`-released
    /// or
    /// `GtkEventControllerKey::modifiers`
    /// signals.
    @inlinable func forward<WidgetT: WidgetProtocol>(widget: WidgetT) -> Bool {
        let rv = ((gtk_event_controller_key_forward(event_controller_key_ptr, widget.widget_ptr)) != 0)
        return rv
    }

    /// Gets the key group of the current event of this `controller`.
    /// See `gdk_key_event_get_group()`.
    @inlinable func getGroup() -> Int {
        let rv = Int(gtk_event_controller_key_get_group(event_controller_key_ptr))
        return rv
    }

    /// Gets the input method context of the key `controller`.
    @inlinable func getImContext() -> IMContextRef! {
        let rv = IMContextRef(gconstpointer: gconstpointer(gtk_event_controller_key_get_im_context(event_controller_key_ptr)))
        return rv
    }

    /// Sets the input method context of the key `controller`.
    @inlinable func set<IMContextT: IMContextProtocol>(imContext: IMContextT) {
        gtk_event_controller_key_set_im_context(event_controller_key_ptr, imContext.im_context_ptr)
    
    }
    /// Gets the key group of the current event of this `controller`.
    /// See `gdk_key_event_get_group()`.
    @inlinable var group: Int {
        /// Gets the key group of the current event of this `controller`.
        /// See `gdk_key_event_get_group()`.
        get {
            let rv = Int(gtk_event_controller_key_get_group(event_controller_key_ptr))
            return rv
        }
    }

    /// Gets the input method context of the key `controller`.
    @inlinable var imContext: IMContextRef! {
        /// Gets the input method context of the key `controller`.
        get {
            let rv = IMContextRef(gconstpointer: gconstpointer(gtk_event_controller_key_get_im_context(event_controller_key_ptr)))
            return rv
        }
        /// Sets the input method context of the key `controller`.
        nonmutating set {
            gtk_event_controller_key_set_im_context(event_controller_key_ptr, UnsafeMutablePointer<GtkIMContext>(newValue?.im_context_ptr))
        }
    }


}



// MARK: - EventControllerLegacy Class

/// The `EventControllerLegacyProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerLegacy` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerLegacy`.
/// Alternatively, use `EventControllerLegacyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerLegacy` is an event controller that gives you
/// direct access to the event stream. It should only be used as a
/// last resort if none of the other event controllers or gestures
/// do the job.
public protocol EventControllerLegacyProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerLegacy` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerLegacy` instance.
    var event_controller_legacy_ptr: UnsafeMutablePointer<GtkEventControllerLegacy>! { get }

}

/// The `EventControllerLegacyRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerLegacy` instance.
/// It exposes methods that can operate on this data type through `EventControllerLegacyProtocol` conformance.
/// Use `EventControllerLegacyRef` only as an `unowned` reference to an existing `GtkEventControllerLegacy` instance.
///
/// `GtkEventControllerLegacy` is an event controller that gives you
/// direct access to the event stream. It should only be used as a
/// last resort if none of the other event controllers or gestures
/// do the job.
public struct EventControllerLegacyRef: EventControllerLegacyProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEventControllerLegacy` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_legacy_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerLegacyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerLegacy>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerLegacy>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerLegacy>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerLegacy>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerLegacyProtocol`
    @inlinable init<T: EventControllerLegacyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EventControllerLegacyProtocol>(_ other: T) -> EventControllerLegacyRef { EventControllerLegacyRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new legacy event controller.
    @inlinable init() {
        let rv = gtk_event_controller_legacy_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EventControllerLegacy` type acts as a reference-counted owner of an underlying `GtkEventControllerLegacy` instance.
/// It provides the methods that can operate on this data type through `EventControllerLegacyProtocol` conformance.
/// Use `EventControllerLegacy` as a strong reference or owner of a `GtkEventControllerLegacy` instance.
///
/// `GtkEventControllerLegacy` is an event controller that gives you
/// direct access to the event stream. It should only be used as a
/// last resort if none of the other event controllers or gestures
/// do the job.
open class EventControllerLegacy: EventController, EventControllerLegacyProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerLegacy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEventControllerLegacy>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerLegacy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEventControllerLegacy>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerLegacy` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerLegacy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerLegacy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEventControllerLegacy>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerLegacy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEventControllerLegacy>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEventControllerLegacy`.
    /// i.e., ownership is transferred to the `EventControllerLegacy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEventControllerLegacy>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EventControllerLegacyProtocol`
    /// Will retain `GtkEventControllerLegacy`.
    /// - Parameter other: an instance of a related type that implements `EventControllerLegacyProtocol`
    @inlinable public init<T: EventControllerLegacyProtocol>(eventControllerLegacy other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new legacy event controller.
    @inlinable public init() {
        let rv = gtk_event_controller_legacy_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EventControllerLegacyPropertyName: String, PropertyNameProtocol {
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerLegacyProtocol {
    /// Bind a `EventControllerLegacyPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerLegacyPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EventControllerLegacy property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EventControllerLegacyPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EventControllerLegacy property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EventControllerLegacyPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EventControllerLegacy
public extension EventControllerLegacyProtocol {
    /// Emitted for each GDK event delivered to `controller`.
    /// - Note: Representation of signal named `event`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` to stop other handlers from being invoked for the event    and the emission of this signal. `false` to propagate the event further.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter event: the `GdkEvent` which triggered this signal
    @discardableResult
    func onEvent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerLegacyRef, _ event: Gdk.EventRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EventControllerLegacyRef, Gdk.EventRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(EventControllerLegacyRef(raw: unownedSelf), Gdk.EventRef(raw: arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "event", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: EventControllerLegacy Class: EventControllerLegacyProtocol extension (methods and fields)
public extension EventControllerLegacyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerLegacy` instance.
    @inlinable var event_controller_legacy_ptr: UnsafeMutablePointer<GtkEventControllerLegacy>! { return ptr?.assumingMemoryBound(to: GtkEventControllerLegacy.self) }



}



// MARK: - EventControllerMotion Class

/// The `EventControllerMotionProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerMotion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerMotion`.
/// Alternatively, use `EventControllerMotionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerMotion` is an event controller meant for situations
/// where you need to track the position of the pointer.
public protocol EventControllerMotionProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerMotion` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerMotion` instance.
    var event_controller_motion_ptr: UnsafeMutablePointer<GtkEventControllerMotion>! { get }

}

/// The `EventControllerMotionRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerMotion` instance.
/// It exposes methods that can operate on this data type through `EventControllerMotionProtocol` conformance.
/// Use `EventControllerMotionRef` only as an `unowned` reference to an existing `GtkEventControllerMotion` instance.
///
/// `GtkEventControllerMotion` is an event controller meant for situations
/// where you need to track the position of the pointer.
public struct EventControllerMotionRef: EventControllerMotionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEventControllerMotion` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_motion_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerMotionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerMotion>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerMotion>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerMotion>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerMotion>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerMotionProtocol`
    @inlinable init<T: EventControllerMotionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EventControllerMotionProtocol>(_ other: T) -> EventControllerMotionRef { EventControllerMotionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event controller that will handle motion events.
    @inlinable init() {
        let rv = gtk_event_controller_motion_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EventControllerMotion` type acts as a reference-counted owner of an underlying `GtkEventControllerMotion` instance.
/// It provides the methods that can operate on this data type through `EventControllerMotionProtocol` conformance.
/// Use `EventControllerMotion` as a strong reference or owner of a `GtkEventControllerMotion` instance.
///
/// `GtkEventControllerMotion` is an event controller meant for situations
/// where you need to track the position of the pointer.
open class EventControllerMotion: EventController, EventControllerMotionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEventControllerMotion>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEventControllerMotion>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerMotion` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEventControllerMotion>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEventControllerMotion>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEventControllerMotion`.
    /// i.e., ownership is transferred to the `EventControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEventControllerMotion>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EventControllerMotionProtocol`
    /// Will retain `GtkEventControllerMotion`.
    /// - Parameter other: an instance of a related type that implements `EventControllerMotionProtocol`
    @inlinable public init<T: EventControllerMotionProtocol>(eventControllerMotion other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new event controller that will handle motion events.
    @inlinable public init() {
        let rv = gtk_event_controller_motion_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EventControllerMotionPropertyName: String, PropertyNameProtocol {
    /// Whether the pointer is in the controllers widget or a descendant.
    /// See also `GtkEventControllerMotion:is`-pointer.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkEventControllerMotion::enter` but after
    /// `GtkEventControllerMotion::leave` is emitted.
    case containsPointer = "contains-pointer"
    /// Whether the pointer is in the controllers widget itself,
    /// as opposed to in a descendent widget. See also
    /// `GtkEventControllerMotion:contains`-pointer.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkEventControllerMotion::enter` but after
    /// `GtkEventControllerMotion::leave` is emitted.
    case isPointer = "is-pointer"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerMotionProtocol {
    /// Bind a `EventControllerMotionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerMotionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EventControllerMotion property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EventControllerMotionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EventControllerMotion property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EventControllerMotionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EventControllerMotion
public extension EventControllerMotionProtocol {
    /// Signals that the pointer has entered the widget.
    /// - Note: Representation of signal named `enter`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: coordinates of pointer location
    /// - Parameter y: coordinates of pointer location
    @discardableResult
    func onEnter(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerMotionRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EventControllerMotionRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerMotionRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "enter", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Signals that the pointer has left the widget.
    /// - Note: Representation of signal named `leave`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onLeave(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerMotionRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EventControllerMotionRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerMotionRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "leave", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when the pointer moves inside the widget.
    /// - Note: Representation of signal named `motion`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the x coordinate
    /// - Parameter y: the y coordinate
    @discardableResult
    func onMotion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerMotionRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EventControllerMotionRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerMotionRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "motion", 
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
    /// - Note: Representation of signal named `notify::contains-pointer`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyContainsPointer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerMotionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EventControllerMotionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerMotionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::contains-pointer", 
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
    /// - Note: Representation of signal named `notify::is-pointer`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyIsPointer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerMotionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EventControllerMotionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerMotionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::is-pointer", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: EventControllerMotion Class: EventControllerMotionProtocol extension (methods and fields)
public extension EventControllerMotionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerMotion` instance.
    @inlinable var event_controller_motion_ptr: UnsafeMutablePointer<GtkEventControllerMotion>! { return ptr?.assumingMemoryBound(to: GtkEventControllerMotion.self) }

    /// Returns the value of the GtkEventControllerMotion:contains-pointer property.
    @inlinable func containsPointer() -> Bool {
        let rv = ((gtk_event_controller_motion_contains_pointer(event_controller_motion_ptr)) != 0)
        return rv
    }
    /// Returns the value of the GtkEventControllerMotion:is-pointer property.
    @inlinable var isPointer: Bool {
        /// Returns the value of the GtkEventControllerMotion:is-pointer property.
        get {
            let rv = ((gtk_event_controller_motion_is_pointer(event_controller_motion_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - EventControllerScroll Class

/// The `EventControllerScrollProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerScroll` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerScroll`.
/// Alternatively, use `EventControllerScrollRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerScroll` is an event controller meant to handle
/// scroll events from mice and touchpads. It is capable of handling
/// both discrete and continuous scroll events, abstracting them both
/// on the `GtkEventControllerScroll::scroll` signal (deltas in the
/// discrete case are multiples of 1).
/// 
/// In the case of continuous scroll events, `GtkEventControllerScroll`
/// encloses all `GtkEventControllerScroll::scroll` events between two
/// `GtkEventControllerScroll::scroll`-begin and `GtkEventControllerScroll::scroll`-end
/// signals.
/// 
/// The behavior of the event controller can be modified by the
/// flags given at creation time, or modified at a later point through
/// `gtk_event_controller_scroll_set_flags()` (e.g. because the scrolling
/// conditions of the widget changed).
/// 
/// The controller can be set up to emit motion for either/both vertical
/// and horizontal scroll events through `GTK_EVENT_CONTROLLER_SCROLL_VERTICAL`,
/// `GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL` and `GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES`.
/// If any axis is disabled, the respective `GtkEventControllerScroll::scroll`
/// delta will be 0. Vertical scroll events will be translated to horizontal
/// motion for the devices incapable of horizontal scrolling.
/// 
/// The event controller can also be forced to emit discrete events on all devices
/// through `GTK_EVENT_CONTROLLER_SCROLL_DISCRETE`. This can be used to implement
/// discrete actions triggered through scroll events (e.g. switching across
/// combobox options).
/// 
/// The `GTK_EVENT_CONTROLLER_SCROLL_KINETIC` flag toggles the emission of the
/// `GtkEventControllerScroll::decelerate` signal, emitted at the end of scrolling
/// with two X/Y velocity arguments that are consistent with the motion that
/// was received.
public protocol EventControllerScrollProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerScroll` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerScroll` instance.
    var event_controller_scroll_ptr: UnsafeMutablePointer<GtkEventControllerScroll>! { get }

}

/// The `EventControllerScrollRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerScroll` instance.
/// It exposes methods that can operate on this data type through `EventControllerScrollProtocol` conformance.
/// Use `EventControllerScrollRef` only as an `unowned` reference to an existing `GtkEventControllerScroll` instance.
///
/// `GtkEventControllerScroll` is an event controller meant to handle
/// scroll events from mice and touchpads. It is capable of handling
/// both discrete and continuous scroll events, abstracting them both
/// on the `GtkEventControllerScroll::scroll` signal (deltas in the
/// discrete case are multiples of 1).
/// 
/// In the case of continuous scroll events, `GtkEventControllerScroll`
/// encloses all `GtkEventControllerScroll::scroll` events between two
/// `GtkEventControllerScroll::scroll`-begin and `GtkEventControllerScroll::scroll`-end
/// signals.
/// 
/// The behavior of the event controller can be modified by the
/// flags given at creation time, or modified at a later point through
/// `gtk_event_controller_scroll_set_flags()` (e.g. because the scrolling
/// conditions of the widget changed).
/// 
/// The controller can be set up to emit motion for either/both vertical
/// and horizontal scroll events through `GTK_EVENT_CONTROLLER_SCROLL_VERTICAL`,
/// `GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL` and `GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES`.
/// If any axis is disabled, the respective `GtkEventControllerScroll::scroll`
/// delta will be 0. Vertical scroll events will be translated to horizontal
/// motion for the devices incapable of horizontal scrolling.
/// 
/// The event controller can also be forced to emit discrete events on all devices
/// through `GTK_EVENT_CONTROLLER_SCROLL_DISCRETE`. This can be used to implement
/// discrete actions triggered through scroll events (e.g. switching across
/// combobox options).
/// 
/// The `GTK_EVENT_CONTROLLER_SCROLL_KINETIC` flag toggles the emission of the
/// `GtkEventControllerScroll::decelerate` signal, emitted at the end of scrolling
/// with two X/Y velocity arguments that are consistent with the motion that
/// was received.
public struct EventControllerScrollRef: EventControllerScrollProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEventControllerScroll` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_scroll_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerScrollRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerScroll>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerScroll>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerScroll>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerScroll>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerScrollProtocol`
    @inlinable init<T: EventControllerScrollProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EventControllerScrollProtocol>(_ other: T) -> EventControllerScrollRef { EventControllerScrollRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event controller that will handle scroll events.
    @inlinable init( flags: EventControllerScrollFlags) {
        let rv = gtk_event_controller_scroll_new(flags.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EventControllerScroll` type acts as a reference-counted owner of an underlying `GtkEventControllerScroll` instance.
/// It provides the methods that can operate on this data type through `EventControllerScrollProtocol` conformance.
/// Use `EventControllerScroll` as a strong reference or owner of a `GtkEventControllerScroll` instance.
///
/// `GtkEventControllerScroll` is an event controller meant to handle
/// scroll events from mice and touchpads. It is capable of handling
/// both discrete and continuous scroll events, abstracting them both
/// on the `GtkEventControllerScroll::scroll` signal (deltas in the
/// discrete case are multiples of 1).
/// 
/// In the case of continuous scroll events, `GtkEventControllerScroll`
/// encloses all `GtkEventControllerScroll::scroll` events between two
/// `GtkEventControllerScroll::scroll`-begin and `GtkEventControllerScroll::scroll`-end
/// signals.
/// 
/// The behavior of the event controller can be modified by the
/// flags given at creation time, or modified at a later point through
/// `gtk_event_controller_scroll_set_flags()` (e.g. because the scrolling
/// conditions of the widget changed).
/// 
/// The controller can be set up to emit motion for either/both vertical
/// and horizontal scroll events through `GTK_EVENT_CONTROLLER_SCROLL_VERTICAL`,
/// `GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL` and `GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES`.
/// If any axis is disabled, the respective `GtkEventControllerScroll::scroll`
/// delta will be 0. Vertical scroll events will be translated to horizontal
/// motion for the devices incapable of horizontal scrolling.
/// 
/// The event controller can also be forced to emit discrete events on all devices
/// through `GTK_EVENT_CONTROLLER_SCROLL_DISCRETE`. This can be used to implement
/// discrete actions triggered through scroll events (e.g. switching across
/// combobox options).
/// 
/// The `GTK_EVENT_CONTROLLER_SCROLL_KINETIC` flag toggles the emission of the
/// `GtkEventControllerScroll::decelerate` signal, emitted at the end of scrolling
/// with two X/Y velocity arguments that are consistent with the motion that
/// was received.
open class EventControllerScroll: EventController, EventControllerScrollProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerScroll` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEventControllerScroll>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerScroll` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEventControllerScroll>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerScroll` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerScroll` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerScroll` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEventControllerScroll>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventControllerScroll` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEventControllerScroll>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEventControllerScroll`.
    /// i.e., ownership is transferred to the `EventControllerScroll` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEventControllerScroll>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EventControllerScrollProtocol`
    /// Will retain `GtkEventControllerScroll`.
    /// - Parameter other: an instance of a related type that implements `EventControllerScrollProtocol`
    @inlinable public init<T: EventControllerScrollProtocol>(eventControllerScroll other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new event controller that will handle scroll events.
    @inlinable public init( flags: EventControllerScrollFlags) {
        let rv = gtk_event_controller_scroll_new(flags.value)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EventControllerScrollPropertyName: String, PropertyNameProtocol {
    /// The flags affecting event controller behavior
    case flags = "flags"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerScrollProtocol {
    /// Bind a `EventControllerScrollPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerScrollPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EventControllerScroll property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EventControllerScrollPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EventControllerScroll property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EventControllerScrollPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of EventControllerScroll
public extension EventControllerScrollProtocol {
    /// Emitted after scroll is finished if the `GTK_EVENT_CONTROLLER_SCROLL_KINETIC`
    /// flag is set. `vel_x` and `vel_y` express the initial velocity that was
    /// imprinted by the scroll events. `vel_x` and `vel_y` are expressed in
    /// pixels/ms.
    /// - Note: Representation of signal named `decelerate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter velX: X velocity
    /// - Parameter velY: Y velocity
    @discardableResult
    func onDecelerate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerScrollRef, _ velX: Double, _ velY: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EventControllerScrollRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerScrollRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "decelerate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Signals that the widget should scroll by the
    /// amount specified by `dx` and `dy`.
    /// - Note: Representation of signal named `scroll`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the scroll event was handled, `false` otherwise.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter dx: X delta
    /// - Parameter dy: Y delta
    @discardableResult
    func onScroll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerScrollRef, _ dx: Double, _ dy: Double) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EventControllerScrollRef, Double, Double, Bool>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(EventControllerScrollRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "scroll", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Signals that a new scrolling operation has begun. It will
    /// only be emitted on devices capable of it.
    /// - Note: Representation of signal named `scroll-begin`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onScrollBegin(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerScrollRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EventControllerScrollRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerScrollRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "scroll-begin", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Signals that a new scrolling operation has finished. It will
    /// only be emitted on devices capable of it.
    /// - Note: Representation of signal named `scroll-end`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onScrollEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerScrollRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EventControllerScrollRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerScrollRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "scroll-end", 
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
    /// - Note: Representation of signal named `notify::flags`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFlags(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EventControllerScrollRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EventControllerScrollRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EventControllerScrollRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::flags", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: EventControllerScroll Class: EventControllerScrollProtocol extension (methods and fields)
public extension EventControllerScrollProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerScroll` instance.
    @inlinable var event_controller_scroll_ptr: UnsafeMutablePointer<GtkEventControllerScroll>! { return ptr?.assumingMemoryBound(to: GtkEventControllerScroll.self) }

    /// Gets the flags conditioning the scroll controller behavior.
    @inlinable func getFlags() -> EventControllerScrollFlags {
        let rv = EventControllerScrollFlags(gtk_event_controller_scroll_get_flags(event_controller_scroll_ptr))
        return rv
    }

    /// Sets the flags conditioning scroll controller behavior.
    @inlinable func set(flags: EventControllerScrollFlags) {
        gtk_event_controller_scroll_set_flags(event_controller_scroll_ptr, flags.value)
    
    }
    /// The flags affecting event controller behavior
    @inlinable var flags: EventControllerScrollFlags {
        /// Gets the flags conditioning the scroll controller behavior.
        get {
            let rv = EventControllerScrollFlags(gtk_event_controller_scroll_get_flags(event_controller_scroll_ptr))
            return rv
        }
        /// Sets the flags conditioning scroll controller behavior.
        nonmutating set {
            gtk_event_controller_scroll_set_flags(event_controller_scroll_ptr, newValue.value)
        }
    }


}



// MARK: - EveryFilter Class

/// The `EveryFilterProtocol` protocol exposes the methods and properties of an underlying `GtkEveryFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EveryFilter`.
/// Alternatively, use `EveryFilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EveryFilterProtocol: MultiFilterProtocol {
        /// Untyped pointer to the underlying `GtkEveryFilter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEveryFilter` instance.
    var every_filter_ptr: UnsafeMutablePointer<GtkEveryFilter>! { get }

}

/// The `EveryFilterRef` type acts as a lightweight Swift reference to an underlying `GtkEveryFilter` instance.
/// It exposes methods that can operate on this data type through `EveryFilterProtocol` conformance.
/// Use `EveryFilterRef` only as an `unowned` reference to an existing `GtkEveryFilter` instance.
///

public struct EveryFilterRef: EveryFilterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEveryFilter` instance.
    /// For type-safe access, use the generated, typed pointer `every_filter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EveryFilterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEveryFilter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEveryFilter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEveryFilter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEveryFilter>?) {
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

    /// Reference intialiser for a related type that implements `EveryFilterProtocol`
    @inlinable init<T: EveryFilterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EveryFilterProtocol>(_ other: T) -> EveryFilterRef { EveryFilterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty "every" filter.
    /// Use `gtk_multi_filter_append()` to add filters to it.
    /// 
    /// This filter matches an item if each of the filters added to it
    /// matches the item.
    /// In particular, this means that if no filter has been added to
    /// it, the filter matches every item.
    @inlinable init() {
        let rv = gtk_every_filter_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EveryFilter` type acts as a reference-counted owner of an underlying `GtkEveryFilter` instance.
/// It provides the methods that can operate on this data type through `EveryFilterProtocol` conformance.
/// Use `EveryFilter` as a strong reference or owner of a `GtkEveryFilter` instance.
///

open class EveryFilter: MultiFilter, EveryFilterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EveryFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEveryFilter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EveryFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEveryFilter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EveryFilter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EveryFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EveryFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEveryFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EveryFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEveryFilter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEveryFilter`.
    /// i.e., ownership is transferred to the `EveryFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEveryFilter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EveryFilterProtocol`
    /// Will retain `GtkEveryFilter`.
    /// - Parameter other: an instance of a related type that implements `EveryFilterProtocol`
    @inlinable public init<T: EveryFilterProtocol>(everyFilter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty "every" filter.
    /// Use `gtk_multi_filter_append()` to add filters to it.
    /// 
    /// This filter matches an item if each of the filters added to it
    /// matches the item.
    /// In particular, this means that if no filter has been added to
    /// it, the filter matches every item.
    @inlinable public init() {
        let rv = gtk_every_filter_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no EveryFilter properties

// MARK: EveryFilter has no signals// MARK: EveryFilter Class: EveryFilterProtocol extension (methods and fields)
public extension EveryFilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEveryFilter` instance.
    @inlinable var every_filter_ptr: UnsafeMutablePointer<GtkEveryFilter>! { return ptr?.assumingMemoryBound(to: GtkEveryFilter.self) }



}



// MARK: - Expander Class

/// The `ExpanderProtocol` protocol exposes the methods and properties of an underlying `GtkExpander` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Expander`.
/// Alternatively, use `ExpanderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkExpander` allows the user to hide or show its child by clicking
/// on an expander triangle similar to the triangles used in a `GtkTreeView`.
/// 
/// Normally you use an expander as you would use a frame; you create
/// the child widget and use `gtk_expander_set_child()` to add it to the
/// expander. When the expander is toggled, it will take care of showing
/// and hiding the child automatically.
/// 
/// # Special Usage
/// 
/// There are situations in which you may prefer to show and hide the
/// expanded widget yourself, such as when you want to actually create
/// the widget at expansion time. In this case, create a `GtkExpander`
/// but do not add a child to it. The expander widget has an
/// `GtkExpander:expanded` property which can be used to monitor
/// its expansion state. You should watch this property with a signal
/// connection as follows:
/// 
/// (C Language Example):
/// ```C
/// static void
/// expander_callback (GObject    *object,
///                    GParamSpec *param_spec,
///                    gpointer    user_data)
/// {
///   GtkExpander *expander;
/// 
///   expander = GTK_EXPANDER (object);
/// 
///   if (gtk_expander_get_expanded (expander))
///     {
///       // Show or create widgets
///     }
///   else
///     {
///       // Hide or destroy widgets
///     }
/// }
/// 
/// static void
/// create_expander (void)
/// {
///   GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
///   g_signal_connect (expander, "notify::expanded",
///                     G_CALLBACK (expander_callback), NULL);
/// 
///   // ...
/// }
/// ```
/// 
/// # GtkExpander as GtkBuildable
/// 
/// The GtkExpander implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can be
/// specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkExpander:
/// ```
/// <object class="GtkExpander">
///   <child type="label">
///     <object class="GtkLabel" id="expander-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="expander-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// expander
/// ╰── box
///     ├── title
///     │   ├── arrow
///     │   ╰── <label widget>
///     ╰── <child>
/// ```
/// 
/// GtkExpander has three CSS nodes, the main node with the name expander,
/// a subnode with name title and node below it with name arrow. The arrow of an
/// expander that is showing its child gets the :checked pseudoclass added to it.
/// 
/// # Accessibility
/// 
/// GtkExpander uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
public protocol ExpanderProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkExpander` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkExpander` instance.
    var expander_ptr: UnsafeMutablePointer<GtkExpander>! { get }

}

/// The `ExpanderRef` type acts as a lightweight Swift reference to an underlying `GtkExpander` instance.
/// It exposes methods that can operate on this data type through `ExpanderProtocol` conformance.
/// Use `ExpanderRef` only as an `unowned` reference to an existing `GtkExpander` instance.
///
/// A `GtkExpander` allows the user to hide or show its child by clicking
/// on an expander triangle similar to the triangles used in a `GtkTreeView`.
/// 
/// Normally you use an expander as you would use a frame; you create
/// the child widget and use `gtk_expander_set_child()` to add it to the
/// expander. When the expander is toggled, it will take care of showing
/// and hiding the child automatically.
/// 
/// # Special Usage
/// 
/// There are situations in which you may prefer to show and hide the
/// expanded widget yourself, such as when you want to actually create
/// the widget at expansion time. In this case, create a `GtkExpander`
/// but do not add a child to it. The expander widget has an
/// `GtkExpander:expanded` property which can be used to monitor
/// its expansion state. You should watch this property with a signal
/// connection as follows:
/// 
/// (C Language Example):
/// ```C
/// static void
/// expander_callback (GObject    *object,
///                    GParamSpec *param_spec,
///                    gpointer    user_data)
/// {
///   GtkExpander *expander;
/// 
///   expander = GTK_EXPANDER (object);
/// 
///   if (gtk_expander_get_expanded (expander))
///     {
///       // Show or create widgets
///     }
///   else
///     {
///       // Hide or destroy widgets
///     }
/// }
/// 
/// static void
/// create_expander (void)
/// {
///   GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
///   g_signal_connect (expander, "notify::expanded",
///                     G_CALLBACK (expander_callback), NULL);
/// 
///   // ...
/// }
/// ```
/// 
/// # GtkExpander as GtkBuildable
/// 
/// The GtkExpander implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can be
/// specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkExpander:
/// ```
/// <object class="GtkExpander">
///   <child type="label">
///     <object class="GtkLabel" id="expander-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="expander-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// expander
/// ╰── box
///     ├── title
///     │   ├── arrow
///     │   ╰── <label widget>
///     ╰── <child>
/// ```
/// 
/// GtkExpander has three CSS nodes, the main node with the name expander,
/// a subnode with name title and node below it with name arrow. The arrow of an
/// expander that is showing its child gets the :checked pseudoclass added to it.
/// 
/// # Accessibility
/// 
/// GtkExpander uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
public struct ExpanderRef: ExpanderProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkExpander` instance.
    /// For type-safe access, use the generated, typed pointer `expander_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ExpanderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkExpander>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkExpander>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkExpander>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkExpander>?) {
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

    /// Reference intialiser for a related type that implements `ExpanderProtocol`
    @inlinable init<T: ExpanderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ExpanderProtocol>(_ other: T) -> ExpanderRef { ExpanderRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new expander using `label` as the text of the label.
    @inlinable init( label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_expander_new(label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable init(mnemonic label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_expander_new_with_mnemonic(label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable static func newWith(mnemonic label: UnsafePointer<CChar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_expander_new_with_mnemonic(label))) else { return nil }
        return rv
    }
}

/// The `Expander` type acts as a reference-counted owner of an underlying `GtkExpander` instance.
/// It provides the methods that can operate on this data type through `ExpanderProtocol` conformance.
/// Use `Expander` as a strong reference or owner of a `GtkExpander` instance.
///
/// A `GtkExpander` allows the user to hide or show its child by clicking
/// on an expander triangle similar to the triangles used in a `GtkTreeView`.
/// 
/// Normally you use an expander as you would use a frame; you create
/// the child widget and use `gtk_expander_set_child()` to add it to the
/// expander. When the expander is toggled, it will take care of showing
/// and hiding the child automatically.
/// 
/// # Special Usage
/// 
/// There are situations in which you may prefer to show and hide the
/// expanded widget yourself, such as when you want to actually create
/// the widget at expansion time. In this case, create a `GtkExpander`
/// but do not add a child to it. The expander widget has an
/// `GtkExpander:expanded` property which can be used to monitor
/// its expansion state. You should watch this property with a signal
/// connection as follows:
/// 
/// (C Language Example):
/// ```C
/// static void
/// expander_callback (GObject    *object,
///                    GParamSpec *param_spec,
///                    gpointer    user_data)
/// {
///   GtkExpander *expander;
/// 
///   expander = GTK_EXPANDER (object);
/// 
///   if (gtk_expander_get_expanded (expander))
///     {
///       // Show or create widgets
///     }
///   else
///     {
///       // Hide or destroy widgets
///     }
/// }
/// 
/// static void
/// create_expander (void)
/// {
///   GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
///   g_signal_connect (expander, "notify::expanded",
///                     G_CALLBACK (expander_callback), NULL);
/// 
///   // ...
/// }
/// ```
/// 
/// # GtkExpander as GtkBuildable
/// 
/// The GtkExpander implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can be
/// specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkExpander:
/// ```
/// <object class="GtkExpander">
///   <child type="label">
///     <object class="GtkLabel" id="expander-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="expander-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// expander
/// ╰── box
///     ├── title
///     │   ├── arrow
///     │   ╰── <label widget>
///     ╰── <child>
/// ```
/// 
/// GtkExpander has three CSS nodes, the main node with the name expander,
/// a subnode with name title and node below it with name arrow. The arrow of an
/// expander that is showing its child gets the :checked pseudoclass added to it.
/// 
/// # Accessibility
/// 
/// GtkExpander uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
open class Expander: Widget, ExpanderProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expander` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkExpander>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expander` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkExpander>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expander` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expander` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expander` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkExpander>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expander` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkExpander>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkExpander`.
    /// i.e., ownership is transferred to the `Expander` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkExpander>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ExpanderProtocol`
    /// Will retain `GtkExpander`.
    /// - Parameter other: an instance of a related type that implements `ExpanderProtocol`
    @inlinable public init<T: ExpanderProtocol>(expander other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new expander using `label` as the text of the label.
    @inlinable public init( label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_expander_new(label)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable public init(mnemonic label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_expander_new_with_mnemonic(label)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable public static func newWith(mnemonic label: UnsafePointer<CChar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_expander_new_with_mnemonic(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ExpanderPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case expanded = "expanded"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case label = "label"
    case labelWidget = "label-widget"
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
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// When this property is `true`, the expander will resize the toplevel
    /// widget containing the expander upon expanding and collapsing.
    case resizeToplevel = "resize-toplevel"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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
    case useMarkup = "use-markup"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
}

public extension ExpanderProtocol {
    /// Bind a `ExpanderPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ExpanderPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Expander property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ExpanderPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Expander property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ExpanderPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Expander
public extension ExpanderProtocol {
    /// Activates the `GtkExpander`.
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ExpanderRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf))
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
    /// - Note: Representation of signal named `notify::child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ExpanderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::child", 
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
    /// - Note: Representation of signal named `notify::expanded`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyExpanded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ExpanderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::expanded", 
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
    func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ExpanderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    /// - Note: Representation of signal named `notify::label-widget`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLabelWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ExpanderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::label-widget", 
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
    /// - Note: Representation of signal named `notify::resize-toplevel`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyResizeToplevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ExpanderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::resize-toplevel", 
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
    /// - Note: Representation of signal named `notify::use-markup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ExpanderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-markup", 
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
    /// - Note: Representation of signal named `notify::use-underline`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseUnderline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ExpanderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ExpanderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ExpanderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-underline", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Expander Class: ExpanderProtocol extension (methods and fields)
public extension ExpanderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpander` instance.
    @inlinable var expander_ptr: UnsafeMutablePointer<GtkExpander>! { return ptr?.assumingMemoryBound(to: GtkExpander.self) }

    /// Gets the child widget of `expander`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_expander_get_child(expander_ptr))) else { return nil }
        return rv
    }

    /// Queries a `GtkExpander` and returns its current state. Returns `true`
    /// if the child widget is revealed.
    /// 
    /// See `gtk_expander_set_expanded()`.
    @inlinable func getExpanded() -> Bool {
        let rv = ((gtk_expander_get_expanded(expander_ptr)) != 0)
        return rv
    }

    /// Fetches the text from a label widget including any embedded
    /// underlines indicating mnemonics and Pango markup, as set by
    /// `gtk_expander_set_label()`. If the label text has not been set the
    /// return value will be `nil`. This will be the case if you create an
    /// empty button with `gtk_button_new()` to use as a container.
    /// 
    /// Note that this function behaved differently in versions prior to
    /// 2.14 and used to return the label text stripped of embedded
    /// underlines indicating mnemonics and Pango markup. This problem can
    /// be avoided by fetching the label text directly from the label
    /// widget.
    @inlinable func getLabel() -> String! {
        let rv = gtk_expander_get_label(expander_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the label widget for the frame. See
    /// `gtk_expander_set_label_widget()`.
    @inlinable func getLabelWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_expander_get_label_widget(expander_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the expander will resize the toplevel widget
    /// containing the expander upon resizing and collpasing.
    @inlinable func getResizeToplevel() -> Bool {
        let rv = ((gtk_expander_get_resize_toplevel(expander_ptr)) != 0)
        return rv
    }

    /// Returns whether the label’s text is interpreted as marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// See `gtk_expander_set_use_markup()`.
    @inlinable func getUseMarkup() -> Bool {
        let rv = ((gtk_expander_get_use_markup(expander_ptr)) != 0)
        return rv
    }

    /// Returns whether an embedded underline in the expander label
    /// indicates a mnemonic. See `gtk_expander_set_use_underline()`.
    @inlinable func getUseUnderline() -> Bool {
        let rv = ((gtk_expander_get_use_underline(expander_ptr)) != 0)
        return rv
    }

    /// Sets the child widget of `expander`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_expander_set_child(expander_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `expander`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_expander_set_child(expander_ptr, child?.widget_ptr)
    
    }

    /// Sets the state of the expander. Set to `true`, if you want
    /// the child widget to be revealed, and `false` if you want the
    /// child widget to be hidden.
    @inlinable func set(expanded: Bool) {
        gtk_expander_set_expanded(expander_ptr, gboolean((expanded) ? 1 : 0))
    
    }

    /// Sets the text of the label of the expander to `label`.
    /// 
    /// This will also clear any previously set labels.
    @inlinable func set(label: UnsafePointer<CChar>? = nil) {
        gtk_expander_set_label(expander_ptr, label)
    
    }

    /// Set the label widget for the expander. This is the widget
    /// that will appear embedded alongside the expander arrow.
    @inlinable func set(labelWidget: WidgetRef? = nil) {
        gtk_expander_set_label_widget(expander_ptr, labelWidget?.widget_ptr)
    
    }
    /// Set the label widget for the expander. This is the widget
    /// that will appear embedded alongside the expander arrow.
    @inlinable func set<WidgetT: WidgetProtocol>(labelWidget: WidgetT?) {
        gtk_expander_set_label_widget(expander_ptr, labelWidget?.widget_ptr)
    
    }

    /// Sets whether the expander will resize the toplevel widget
    /// containing the expander upon resizing and collpasing.
    @inlinable func set(resizeToplevel: Bool) {
        gtk_expander_set_resize_toplevel(expander_ptr, gboolean((resizeToplevel) ? 1 : 0))
    
    }

    /// Sets whether the text of the label contains markup in
    /// [Pango’s text markup language](#PangoMarkupFormat).
    /// See `gtk_label_set_markup()`.
    @inlinable func set(useMarkup: Bool) {
        gtk_expander_set_use_markup(expander_ptr, gboolean((useMarkup) ? 1 : 0))
    
    }

    /// If true, an underline in the text of the expander label indicates
    /// the next character should be used for the mnemonic accelerator key.
    @inlinable func set(useUnderline: Bool) {
        gtk_expander_set_use_underline(expander_ptr, gboolean((useUnderline) ? 1 : 0))
    
    }
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `expander`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_expander_get_child(expander_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `expander`.
        nonmutating set {
            gtk_expander_set_child(expander_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    @inlinable var expanded: Bool {
        /// Queries a `GtkExpander` and returns its current state. Returns `true`
        /// if the child widget is revealed.
        /// 
        /// See `gtk_expander_set_expanded()`.
        get {
            let rv = ((gtk_expander_get_expanded(expander_ptr)) != 0)
            return rv
        }
        /// Sets the state of the expander. Set to `true`, if you want
        /// the child widget to be revealed, and `false` if you want the
        /// child widget to be hidden.
        nonmutating set {
            gtk_expander_set_expanded(expander_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var label: String! {
        /// Fetches the text from a label widget including any embedded
        /// underlines indicating mnemonics and Pango markup, as set by
        /// `gtk_expander_set_label()`. If the label text has not been set the
        /// return value will be `nil`. This will be the case if you create an
        /// empty button with `gtk_button_new()` to use as a container.
        /// 
        /// Note that this function behaved differently in versions prior to
        /// 2.14 and used to return the label text stripped of embedded
        /// underlines indicating mnemonics and Pango markup. This problem can
        /// be avoided by fetching the label text directly from the label
        /// widget.
        get {
            let rv = gtk_expander_get_label(expander_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text of the label of the expander to `label`.
        /// 
        /// This will also clear any previously set labels.
        nonmutating set {
            gtk_expander_set_label(expander_ptr, newValue)
        }
    }

    /// Retrieves the label widget for the frame. See
    /// `gtk_expander_set_label_widget()`.
    @inlinable var labelWidget: WidgetRef! {
        /// Retrieves the label widget for the frame. See
        /// `gtk_expander_set_label_widget()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_expander_get_label_widget(expander_ptr))) else { return nil }
            return rv
        }
        /// Set the label widget for the expander. This is the widget
        /// that will appear embedded alongside the expander arrow.
        nonmutating set {
            gtk_expander_set_label_widget(expander_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Returns whether the expander will resize the toplevel widget
    /// containing the expander upon resizing and collpasing.
    @inlinable var resizeToplevel: Bool {
        /// Returns whether the expander will resize the toplevel widget
        /// containing the expander upon resizing and collpasing.
        get {
            let rv = ((gtk_expander_get_resize_toplevel(expander_ptr)) != 0)
            return rv
        }
        /// Sets whether the expander will resize the toplevel widget
        /// containing the expander upon resizing and collpasing.
        nonmutating set {
            gtk_expander_set_resize_toplevel(expander_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the label’s text is interpreted as marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// See `gtk_expander_set_use_markup()`.
    @inlinable var useMarkup: Bool {
        /// Returns whether the label’s text is interpreted as marked up with
        /// the [Pango text markup language](#PangoMarkupFormat).
        /// See `gtk_expander_set_use_markup()`.
        get {
            let rv = ((gtk_expander_get_use_markup(expander_ptr)) != 0)
            return rv
        }
        /// Sets whether the text of the label contains markup in
        /// [Pango’s text markup language](#PangoMarkupFormat).
        /// See `gtk_label_set_markup()`.
        nonmutating set {
            gtk_expander_set_use_markup(expander_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether an embedded underline in the expander label
    /// indicates a mnemonic. See `gtk_expander_set_use_underline()`.
    @inlinable var useUnderline: Bool {
        /// Returns whether an embedded underline in the expander label
        /// indicates a mnemonic. See `gtk_expander_set_use_underline()`.
        get {
            let rv = ((gtk_expander_get_use_underline(expander_ptr)) != 0)
            return rv
        }
        /// If true, an underline in the text of the expander label indicates
        /// the next character should be used for the mnemonic accelerator key.
        nonmutating set {
            gtk_expander_set_use_underline(expander_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - Expression Class

/// The `ExpressionProtocol` protocol exposes the methods and properties of an underlying `GtkExpression` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Expression`.
/// Alternatively, use `ExpressionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkExpression provides a way to describe references to values.
/// 
/// An important aspect of expressions is that the value can be obtained
/// from a source that is several steps away. For example, an expression
/// may describe ‘the value of property A of `object1`, which is itself the
/// value of a property of `object2`’. And `object1` may not even exist yet
/// at the time that the expression is created. This is contrast to GObject
/// property bindings, which can only create direct connections between
/// the properties of two objects that must both exist for the duration
/// of the binding.
/// 
/// An expression needs to be "evaluated" to obtain the value that it currently
/// refers to. An evaluation always happens in the context of a current object
/// called `this` (it mirrors the behavior of object-oriented languages),
/// which may or may not influence the result of the evaluation. Use
/// `gtk_expression_evaluate()` for evaluating an expression.
/// 
/// Various methods for defining expressions exist, from simple constants via
/// `gtk_constant_expression_new()` to looking up properties in a `GObject` (even
/// recursively) via `gtk_property_expression_new()` or providing custom functions
/// to transform and combine expressions via `gtk_closure_expression_new()`.
/// 
/// Here is an example of a complex expression:
/// ```
///   color_expr = gtk_property_expression_new (GTK_TYPE_LIST_ITEM,
///                                             NULL, "item");
///   expression = gtk_property_expression_new (GTK_TYPE_COLOR,
///                                             color_expr, "name");
/// ```
/// 
/// when evaluated with `this` being a GtkListItem, it will obtain the
/// "item" property from the GtkListItem, and then obtain the "name" property
/// from the resulting object (which is assumed to be of type GTK_TYPE_COLOR).
/// 
/// A more concise way to describe this would be
/// ```
///   this->item->name
/// ```
/// 
/// The most likely place where you will encounter expressions is in the context
/// of list models and list widgets using them. For example, `GtkDropDown` is
/// evaluating a GtkExpression to obtain strings from the items in its model
/// that it can then use to match against the contents of its search entry.
/// `GtkStringFilter` is using a GtkExpression for similar reasons.
/// 
/// By default, expressions are not paying attention to changes and evaluation is
/// just a snapshot of the current state at a given time. To get informed about
/// changes, an expression needs to be "watched" via a `GtkExpressionWatch`, which
/// will cause a callback to be called whenever the value of the expression may
/// have changed. `gtk_expression_watch()` starts watching an expression, and
/// `gtk_expression_watch_unwatch()` stops.
/// 
/// Watches can be created for automatically updating the property of an object,
/// similar to GObject's `GBinding` mechanism, by using `gtk_expression_bind()`.
/// 
/// # GtkExpression in GObject properties
/// 
/// In order to use a `GtkExpression` as a `GObject` property, you must use the
/// `gtk_param_spec_expression()` when creating a `GParamSpec` to install in the
/// `GObject` class being defined; for instance:
/// 
/// ```
///   obj_props[PROP_EXPRESSION] =
///     gtk_param_spec_expression ("expression",
///                                "Expression",
///                                "The expression used by the widget",
///                                G_PARAM_READWRITE |
///                                G_PARAM_STATIC_STRINGS |
///                                G_PARAM_EXPLICIT_NOTIFY);
/// ```
/// 
/// When implementing the `GObjectClass.set_property``()` and `GObjectClass.get_property``()`
/// virtual functions, you must use `gtk_value_get_expression()`, to retrieve the
/// stored `GtkExpression` from the `GValue` container, and `gtk_value_set_expression()`,
/// to store the `GtkExpression` into the `GValue`; for instance:
/// 
/// ```
///   // in set_property()...
///   case PROP_EXPRESSION:
///     foo_widget_set_expression (foo, gtk_value_get_expression (value));
///     break;
/// 
///   // in get_property()...
///   case PROP_EXPRESSION:
///     gtk_value_set_expression (value, foo->expression);
///     break;
/// ```
/// 
/// # GtkExpression in .ui files
/// 
/// GtkBuilder has support for creating expressions. The syntax here can be used where
/// a `GtkExpression` object is needed like in a <property> tag for an expression
/// property, or in a <binding> tag to bind a property to an expression.
/// 
/// To create an property expression, use the <lookup> element. It can have a `type`
/// attribute to specify the object type, and a `name` attribute to specify the property
/// to look up. The content of <lookup> can either be an element specfiying the expression
/// to use the object, or a string that specifies the name of the object to use.
/// 
/// Example:
/// ```
///   <lookup name='search'>string_filter</lookup>
/// ```
/// 
/// To create a constant expression, use the <constant> element. If the type attribute
/// is specified, the element content is interpreted as a value of that type. Otherwise,
/// it is assumed to be an object.
/// 
/// Example:
/// ```
///   <constant>string_filter</constant>
///   <constant type='gchararray'>Hello, world</constant>
/// ```
/// 
/// To create a closure expression, use the <closure> element. The `type` and `function`
/// attributes specify what function to use for the closure, the content of the element
/// contains the expressions for the parameters.
/// 
/// Example:
/// ```
///   <closure type='gchararray' function='combine_args_somehow'>
///     <constant type='gchararray'>File size:</constant>
///     <lookup type='GFile' name='size'>myfile</lookup>
///   </closure>
/// ```
/// 
public protocol ExpressionProtocol {
        /// Untyped pointer to the underlying `GtkExpression` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkExpression` instance.
    var expression_ptr: UnsafeMutablePointer<GtkExpression>! { get }

}

/// The `ExpressionRef` type acts as a lightweight Swift reference to an underlying `GtkExpression` instance.
/// It exposes methods that can operate on this data type through `ExpressionProtocol` conformance.
/// Use `ExpressionRef` only as an `unowned` reference to an existing `GtkExpression` instance.
///
/// GtkExpression provides a way to describe references to values.
/// 
/// An important aspect of expressions is that the value can be obtained
/// from a source that is several steps away. For example, an expression
/// may describe ‘the value of property A of `object1`, which is itself the
/// value of a property of `object2`’. And `object1` may not even exist yet
/// at the time that the expression is created. This is contrast to GObject
/// property bindings, which can only create direct connections between
/// the properties of two objects that must both exist for the duration
/// of the binding.
/// 
/// An expression needs to be "evaluated" to obtain the value that it currently
/// refers to. An evaluation always happens in the context of a current object
/// called `this` (it mirrors the behavior of object-oriented languages),
/// which may or may not influence the result of the evaluation. Use
/// `gtk_expression_evaluate()` for evaluating an expression.
/// 
/// Various methods for defining expressions exist, from simple constants via
/// `gtk_constant_expression_new()` to looking up properties in a `GObject` (even
/// recursively) via `gtk_property_expression_new()` or providing custom functions
/// to transform and combine expressions via `gtk_closure_expression_new()`.
/// 
/// Here is an example of a complex expression:
/// ```
///   color_expr = gtk_property_expression_new (GTK_TYPE_LIST_ITEM,
///                                             NULL, "item");
///   expression = gtk_property_expression_new (GTK_TYPE_COLOR,
///                                             color_expr, "name");
/// ```
/// 
/// when evaluated with `this` being a GtkListItem, it will obtain the
/// "item" property from the GtkListItem, and then obtain the "name" property
/// from the resulting object (which is assumed to be of type GTK_TYPE_COLOR).
/// 
/// A more concise way to describe this would be
/// ```
///   this->item->name
/// ```
/// 
/// The most likely place where you will encounter expressions is in the context
/// of list models and list widgets using them. For example, `GtkDropDown` is
/// evaluating a GtkExpression to obtain strings from the items in its model
/// that it can then use to match against the contents of its search entry.
/// `GtkStringFilter` is using a GtkExpression for similar reasons.
/// 
/// By default, expressions are not paying attention to changes and evaluation is
/// just a snapshot of the current state at a given time. To get informed about
/// changes, an expression needs to be "watched" via a `GtkExpressionWatch`, which
/// will cause a callback to be called whenever the value of the expression may
/// have changed. `gtk_expression_watch()` starts watching an expression, and
/// `gtk_expression_watch_unwatch()` stops.
/// 
/// Watches can be created for automatically updating the property of an object,
/// similar to GObject's `GBinding` mechanism, by using `gtk_expression_bind()`.
/// 
/// # GtkExpression in GObject properties
/// 
/// In order to use a `GtkExpression` as a `GObject` property, you must use the
/// `gtk_param_spec_expression()` when creating a `GParamSpec` to install in the
/// `GObject` class being defined; for instance:
/// 
/// ```
///   obj_props[PROP_EXPRESSION] =
///     gtk_param_spec_expression ("expression",
///                                "Expression",
///                                "The expression used by the widget",
///                                G_PARAM_READWRITE |
///                                G_PARAM_STATIC_STRINGS |
///                                G_PARAM_EXPLICIT_NOTIFY);
/// ```
/// 
/// When implementing the `GObjectClass.set_property``()` and `GObjectClass.get_property``()`
/// virtual functions, you must use `gtk_value_get_expression()`, to retrieve the
/// stored `GtkExpression` from the `GValue` container, and `gtk_value_set_expression()`,
/// to store the `GtkExpression` into the `GValue`; for instance:
/// 
/// ```
///   // in set_property()...
///   case PROP_EXPRESSION:
///     foo_widget_set_expression (foo, gtk_value_get_expression (value));
///     break;
/// 
///   // in get_property()...
///   case PROP_EXPRESSION:
///     gtk_value_set_expression (value, foo->expression);
///     break;
/// ```
/// 
/// # GtkExpression in .ui files
/// 
/// GtkBuilder has support for creating expressions. The syntax here can be used where
/// a `GtkExpression` object is needed like in a <property> tag for an expression
/// property, or in a <binding> tag to bind a property to an expression.
/// 
/// To create an property expression, use the <lookup> element. It can have a `type`
/// attribute to specify the object type, and a `name` attribute to specify the property
/// to look up. The content of <lookup> can either be an element specfiying the expression
/// to use the object, or a string that specifies the name of the object to use.
/// 
/// Example:
/// ```
///   <lookup name='search'>string_filter</lookup>
/// ```
/// 
/// To create a constant expression, use the <constant> element. If the type attribute
/// is specified, the element content is interpreted as a value of that type. Otherwise,
/// it is assumed to be an object.
/// 
/// Example:
/// ```
///   <constant>string_filter</constant>
///   <constant type='gchararray'>Hello, world</constant>
/// ```
/// 
/// To create a closure expression, use the <closure> element. The `type` and `function`
/// attributes specify what function to use for the closure, the content of the element
/// contains the expressions for the parameters.
/// 
/// Example:
/// ```
///   <closure type='gchararray' function='combine_args_somehow'>
///     <constant type='gchararray'>File size:</constant>
///     <lookup type='GFile' name='size'>myfile</lookup>
///   </closure>
/// ```
/// 
public struct ExpressionRef: ExpressionProtocol {
        /// Untyped pointer to the underlying `GtkExpression` instance.
    /// For type-safe access, use the generated, typed pointer `expression_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ExpressionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkExpression>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkExpression>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkExpression>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkExpression>?) {
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

    /// Reference intialiser for a related type that implements `ExpressionProtocol`
    @inlinable init<T: ExpressionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Expression` type acts as a reference-counted owner of an underlying `GtkExpression` instance.
/// It provides the methods that can operate on this data type through `ExpressionProtocol` conformance.
/// Use `Expression` as a strong reference or owner of a `GtkExpression` instance.
///
/// GtkExpression provides a way to describe references to values.
/// 
/// An important aspect of expressions is that the value can be obtained
/// from a source that is several steps away. For example, an expression
/// may describe ‘the value of property A of `object1`, which is itself the
/// value of a property of `object2`’. And `object1` may not even exist yet
/// at the time that the expression is created. This is contrast to GObject
/// property bindings, which can only create direct connections between
/// the properties of two objects that must both exist for the duration
/// of the binding.
/// 
/// An expression needs to be "evaluated" to obtain the value that it currently
/// refers to. An evaluation always happens in the context of a current object
/// called `this` (it mirrors the behavior of object-oriented languages),
/// which may or may not influence the result of the evaluation. Use
/// `gtk_expression_evaluate()` for evaluating an expression.
/// 
/// Various methods for defining expressions exist, from simple constants via
/// `gtk_constant_expression_new()` to looking up properties in a `GObject` (even
/// recursively) via `gtk_property_expression_new()` or providing custom functions
/// to transform and combine expressions via `gtk_closure_expression_new()`.
/// 
/// Here is an example of a complex expression:
/// ```
///   color_expr = gtk_property_expression_new (GTK_TYPE_LIST_ITEM,
///                                             NULL, "item");
///   expression = gtk_property_expression_new (GTK_TYPE_COLOR,
///                                             color_expr, "name");
/// ```
/// 
/// when evaluated with `this` being a GtkListItem, it will obtain the
/// "item" property from the GtkListItem, and then obtain the "name" property
/// from the resulting object (which is assumed to be of type GTK_TYPE_COLOR).
/// 
/// A more concise way to describe this would be
/// ```
///   this->item->name
/// ```
/// 
/// The most likely place where you will encounter expressions is in the context
/// of list models and list widgets using them. For example, `GtkDropDown` is
/// evaluating a GtkExpression to obtain strings from the items in its model
/// that it can then use to match against the contents of its search entry.
/// `GtkStringFilter` is using a GtkExpression for similar reasons.
/// 
/// By default, expressions are not paying attention to changes and evaluation is
/// just a snapshot of the current state at a given time. To get informed about
/// changes, an expression needs to be "watched" via a `GtkExpressionWatch`, which
/// will cause a callback to be called whenever the value of the expression may
/// have changed. `gtk_expression_watch()` starts watching an expression, and
/// `gtk_expression_watch_unwatch()` stops.
/// 
/// Watches can be created for automatically updating the property of an object,
/// similar to GObject's `GBinding` mechanism, by using `gtk_expression_bind()`.
/// 
/// # GtkExpression in GObject properties
/// 
/// In order to use a `GtkExpression` as a `GObject` property, you must use the
/// `gtk_param_spec_expression()` when creating a `GParamSpec` to install in the
/// `GObject` class being defined; for instance:
/// 
/// ```
///   obj_props[PROP_EXPRESSION] =
///     gtk_param_spec_expression ("expression",
///                                "Expression",
///                                "The expression used by the widget",
///                                G_PARAM_READWRITE |
///                                G_PARAM_STATIC_STRINGS |
///                                G_PARAM_EXPLICIT_NOTIFY);
/// ```
/// 
/// When implementing the `GObjectClass.set_property``()` and `GObjectClass.get_property``()`
/// virtual functions, you must use `gtk_value_get_expression()`, to retrieve the
/// stored `GtkExpression` from the `GValue` container, and `gtk_value_set_expression()`,
/// to store the `GtkExpression` into the `GValue`; for instance:
/// 
/// ```
///   // in set_property()...
///   case PROP_EXPRESSION:
///     foo_widget_set_expression (foo, gtk_value_get_expression (value));
///     break;
/// 
///   // in get_property()...
///   case PROP_EXPRESSION:
///     gtk_value_set_expression (value, foo->expression);
///     break;
/// ```
/// 
/// # GtkExpression in .ui files
/// 
/// GtkBuilder has support for creating expressions. The syntax here can be used where
/// a `GtkExpression` object is needed like in a <property> tag for an expression
/// property, or in a <binding> tag to bind a property to an expression.
/// 
/// To create an property expression, use the <lookup> element. It can have a `type`
/// attribute to specify the object type, and a `name` attribute to specify the property
/// to look up. The content of <lookup> can either be an element specfiying the expression
/// to use the object, or a string that specifies the name of the object to use.
/// 
/// Example:
/// ```
///   <lookup name='search'>string_filter</lookup>
/// ```
/// 
/// To create a constant expression, use the <constant> element. If the type attribute
/// is specified, the element content is interpreted as a value of that type. Otherwise,
/// it is assumed to be an object.
/// 
/// Example:
/// ```
///   <constant>string_filter</constant>
///   <constant type='gchararray'>Hello, world</constant>
/// ```
/// 
/// To create a closure expression, use the <closure> element. The `type` and `function`
/// attributes specify what function to use for the closure, the content of the element
/// contains the expressions for the parameters.
/// 
/// Example:
/// ```
///   <closure type='gchararray' function='combine_args_somehow'>
///     <constant type='gchararray'>File size:</constant>
///     <lookup type='GFile' name='size'>myfile</lookup>
///   </closure>
/// ```
/// 
open class Expression: ExpressionProtocol {
        /// Untyped pointer to the underlying `GtkExpression` instance.
    /// For type-safe access, use the generated, typed pointer `expression_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkExpression>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkExpression>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expression` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkExpression>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Expression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkExpression>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkExpression`.
    /// i.e., ownership is transferred to the `Expression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkExpression>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_expression_ref(ptr.assumingMemoryBound(to: GtkExpression.self))
    }

    /// Reference intialiser for a related type that implements `ExpressionProtocol`
    /// Will retain `GtkExpression`.
    /// - Parameter other: an instance of a related type that implements `ExpressionProtocol`
    @inlinable public init<T: ExpressionProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_expression_ref(ptr.assumingMemoryBound(to: GtkExpression.self))
    }

    /// Releases the underlying `GtkExpression` instance using `gtk_expression_unref`.
    deinit {
        gtk_expression_unref(ptr.assumingMemoryBound(to: GtkExpression.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_expression_ref(ptr.assumingMemoryBound(to: GtkExpression.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_expression_ref(ptr.assumingMemoryBound(to: GtkExpression.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_expression_ref(ptr.assumingMemoryBound(to: GtkExpression.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_expression_ref(ptr.assumingMemoryBound(to: GtkExpression.self))
    }



}

// MARK: no Expression properties

// MARK: Expression has no signals// MARK: Expression Class: ExpressionProtocol extension (methods and fields)
public extension ExpressionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpression` instance.
    @inlinable var expression_ptr: UnsafeMutablePointer<GtkExpression>! { return ptr?.assumingMemoryBound(to: GtkExpression.self) }

    /// Bind `target`'s property named `property` to `self`.
    /// 
    /// The value that `self` evaluates to is set via `g_object_set()` on
    /// `target`. This is repeated whenever `self` changes to ensure that
    /// the object's property stays synchronized with `self`.
    /// 
    /// If `self`'s evaluation fails, `target`'s `property` is not updated.
    /// You can ensure that this doesn't happen by using a fallback
    /// expression.
    /// 
    /// Note that this function takes ownership of `self`. If you want
    /// to keep it around, you should `gtk_expression_ref()` it beforehand.
    @inlinable func bind<ObjectT: GLibObject.ObjectProtocol>(target: ObjectT, property: UnsafePointer<CChar>!, this_: ObjectT?) -> ExpressionWatchRef! {
        let rv = ExpressionWatchRef(gconstpointer: gconstpointer(gtk_expression_bind(expression_ptr, target.object_ptr, property, this_?.object_ptr)))
        return rv
    }

    /// Evaluates the given expression and on success stores the result
    /// in `value`. The `GType` of `value` will be the type given by
    /// `gtk_expression_get_value_type()`.
    /// 
    /// It is possible that expressions cannot be evaluated - for example
    /// when the expression references objects that have been destroyed or
    /// set to `nil`. In that case `value` will remain empty and `false`
    /// will be returned.
    @inlinable func evaluate<ValueT: GLibObject.ValueProtocol>(this_: GLibObject.ObjectRef? = nil, value: ValueT) -> Bool {
        let rv = ((gtk_expression_evaluate(expression_ptr, this_?.object_ptr, value.value_ptr)) != 0)
        return rv
    }
    /// Evaluates the given expression and on success stores the result
    /// in `value`. The `GType` of `value` will be the type given by
    /// `gtk_expression_get_value_type()`.
    /// 
    /// It is possible that expressions cannot be evaluated - for example
    /// when the expression references objects that have been destroyed or
    /// set to `nil`. In that case `value` will remain empty and `false`
    /// will be returned.
    @inlinable func evaluate<ObjectT: GLibObject.ObjectProtocol, ValueT: GLibObject.ValueProtocol>(this_: ObjectT?, value: ValueT) -> Bool {
        let rv = ((gtk_expression_evaluate(expression_ptr, this_?.object_ptr, value.value_ptr)) != 0)
        return rv
    }

    /// Gets the `GType` that this expression evaluates to. This type
    /// is constant and will not change over the lifetime of this expression.
    @inlinable func getValueType() -> GType {
        let rv = gtk_expression_get_value_type(expression_ptr)
        return rv
    }

    /// Acquires a reference on the given `GtkExpression`.
    @discardableResult @inlinable func ref() -> ExpressionRef! {
        guard let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_expression_ref(expression_ptr))) else { return nil }
        return rv
    }

    /// Releases a reference on the given `GtkExpression`.
    /// 
    /// If the reference was the last, the resources associated to the `self` are
    /// freed.
    @inlinable func unref() {
        gtk_expression_unref(expression_ptr)
    
    }

    /// Installs a watch for the given `expression` that calls the `notify` function
    /// whenever the evaluation of `self` may have changed.
    /// 
    /// GTK cannot guarantee that the evaluation did indeed change when the `notify`
    /// gets invoked, but it guarantees the opposite: When it did in fact change,
    /// the `notify` will be invoked.
    @inlinable func watch(this_: GLibObject.ObjectRef? = nil, notify: GtkExpressionNotify?, userData: gpointer! = nil, userDestroy: GDestroyNotify?) -> ExpressionWatchRef! {
        let rv = ExpressionWatchRef(gconstpointer: gconstpointer(gtk_expression_watch(expression_ptr, this_?.object_ptr, notify, userData, userDestroy)))
        return rv
    }
    /// Installs a watch for the given `expression` that calls the `notify` function
    /// whenever the evaluation of `self` may have changed.
    /// 
    /// GTK cannot guarantee that the evaluation did indeed change when the `notify`
    /// gets invoked, but it guarantees the opposite: When it did in fact change,
    /// the `notify` will be invoked.
    @inlinable func watch<ObjectT: GLibObject.ObjectProtocol>(this_: ObjectT?, notify: GtkExpressionNotify?, userData: gpointer! = nil, userDestroy: GDestroyNotify?) -> ExpressionWatchRef! {
        let rv = ExpressionWatchRef(gconstpointer: gconstpointer(gtk_expression_watch(expression_ptr, this_?.object_ptr, notify, userData, userDestroy)))
        return rv
    }

    /// Stores the given `GtkExpression` inside `value`.
    /// 
    /// The `GValue` will acquire a reference to the `expression`.
    @inlinable func valueSetExpression<ValueT: GLibObject.ValueProtocol>(value: ValueT) {
        gtk_value_set_expression(value.value_ptr, expression_ptr)
    
    }

    /// Stores the given `GtkExpression` inside `value`.
    /// 
    /// This function transfers the ownership of the `expression` to the `GValue`.
    @inlinable func valueTakeExpression<ValueT: GLibObject.ValueProtocol>(value: ValueT) {
        gtk_value_take_expression(value.value_ptr, expression_ptr)
    
    }
    /// Checks if the expression is static.
    /// 
    /// A static expression will never change its result when
    /// `gtk_expression_evaluate()` is called on it with the same arguments.
    /// 
    /// That means a call to `gtk_expression_watch()` is not necessary because
    /// it will never trigger a notify.
    @inlinable var isStatic: Bool {
        /// Checks if the expression is static.
        /// 
        /// A static expression will never change its result when
        /// `gtk_expression_evaluate()` is called on it with the same arguments.
        /// 
        /// That means a call to `gtk_expression_watch()` is not necessary because
        /// it will never trigger a notify.
        get {
            let rv = ((gtk_expression_is_static(expression_ptr)) != 0)
            return rv
        }
    }

    /// Gets the `GType` that this expression evaluates to. This type
    /// is constant and will not change over the lifetime of this expression.
    @inlinable var valueType: GType {
        /// Gets the `GType` that this expression evaluates to. This type
        /// is constant and will not change over the lifetime of this expression.
        get {
            let rv = gtk_expression_get_value_type(expression_ptr)
            return rv
        }
    }


}



// MARK: - FileChooserDialog Class

/// The `FileChooserDialogProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserDialog`.
/// Alternatively, use `FileChooserDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFileChooserDialog` is a dialog box suitable for use with
/// “File Open” or “File Save” commands.  This widget works by
/// putting a `GtkFileChooserWidget` inside a `GtkDialog`.  It exposes
/// the `GtkFileChooser` interface, so you can use all of the
/// `GtkFileChooser` functions on the file chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkFileChooserDialog` does not have any methods of its
/// own.  Instead, you should use the functions that work on a
/// `GtkFileChooser`.
/// 
/// If you want to integrate well with the platform you should use the
/// `GtkFileChooserNative` API, which will use a platform-specific
/// dialog if available and fall back to GtkFileChooserDialog
/// otherwise.
/// 
/// ## Typical usage ## <a name="gtkfilechooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// static void
/// on_open_response (GtkDialog *dialog,
///                   int        response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
/// 
///       g_autoptr(GFile) file = gtk_file_chooser_get_file (chooser);
/// 
///       open_file (file);
///     }
/// 
///   gtk_window_destroy (GTK_WINDOW (dialog));
/// }
/// 
///   // ...
///   GtkWidget *dialog;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
///   dialog = gtk_file_chooser_dialog_new ("Open File",
///                                         parent_window,
///                                         action,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Open"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
/// 
///   gtk_widget_show (dialog);
/// 
///   g_signal_connect (dialog, "response",
///                     G_CALLBACK (on_open_response),
///                     NULL);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// static void
/// on_save_response (GtkDialog *dialog,
///                   int        response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
/// 
///       g_autoptr(GFile) file = gtk_file_chooser_get_file (chooser);
/// 
///       save_to_file (file);
///     }
/// 
///   gtk_window_destroy (GTK_WINDOW (dialog));
/// }
/// 
///   // ...
///   GtkWidget *dialog;
///   GtkFileChooser *chooser;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// 
///   dialog = gtk_file_chooser_dialog_new ("Save File",
///                                         parent_window,
///                                         action,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Save"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
///   chooser = GTK_FILE_CHOOSER (dialog);
/// 
///   if (user_edited_a_new_document)
///     gtk_file_chooser_set_current_name (chooser, _("Untitled document"));
///   else
///     gtk_file_chooser_set_file (chooser, existing_filename);
/// 
///   gtk_widget_show (dialog);
/// 
///   g_signal_connect (dialog, "response",
///                     G_CALLBACK (on_save_response),
///                     NULL);
/// ```
/// 
/// ## Setting up a file chooser dialog ## <a name="gtkfilechooserdialog-setting-up"></a>
/// 
/// There are various cases in which you may need to use a `GtkFileChooserDialog:`
/// 
/// - To select a file for opening. Use `GTK_FILE_CHOOSER_ACTION_OPEN`.
/// 
/// - To save a file for the first time. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and suggest a name such as “Untitled” with `gtk_file_chooser_set_current_name()`.
/// 
/// - To save a file under a different name. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and set the existing file with `gtk_file_chooser_set_file()`.
/// 
/// - To choose a folder instead of a file. Use `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// Note that old versions of the file chooser’s documentation suggested
/// using `gtk_file_chooser_set_current_folder()` in various
/// situations, with the intention of letting the application
/// suggest a reasonable default folder.  This is no longer
/// considered to be a good policy, as now the file chooser is
/// able to make good suggestions on its own.  In general, you
/// should only cause the file chooser to show a specific folder
/// when it is appropriate to use `gtk_file_chooser_set_file()`,
/// i.e. when you are doing a Save As command and you already
/// have a file saved somewhere.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialog-responses"></a>
/// 
/// `GtkFileChooserDialog` inherits from `GtkDialog`, so buttons that
/// go in its action area have response codes such as
/// `GTK_RESPONSE_ACCEPT` and `GTK_RESPONSE_CANCEL`.  For example, you
/// could call `gtk_file_chooser_dialog_new()` as follows:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// ```
/// 
/// This will create buttons for “Cancel” and “Open” that use predefined
/// response identifiers from `GtkResponseType`.  For most dialog
/// boxes you can use your own custom response codes rather than the
/// ones in `GtkResponseType`, but `GtkFileChooserDialog` assumes that
/// its “accept”-type action, e.g. an “Open” or “Save” button,
/// will have one of the following response codes:
/// 
/// - `GTK_RESPONSE_ACCEPT`
/// - `GTK_RESPONSE_OK`
/// - `GTK_RESPONSE_YES`
/// - `GTK_RESPONSE_APPLY`
/// 
/// This is because `GtkFileChooserDialog` must intercept responses
/// and switch to folders if appropriate, rather than letting the
/// dialog terminate — the implementation uses these known
/// response codes to know which responses can be blocked if
/// appropriate.
/// 
/// To summarize, make sure you use a
/// [predefined response code](#gtkfilechooserdialog-responses)
/// when you use `GtkFileChooserDialog` to ensure proper operation.
public protocol FileChooserDialogProtocol: DialogProtocol, FileChooserProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserDialog` instance.
    var file_chooser_dialog_ptr: UnsafeMutablePointer<GtkFileChooserDialog>! { get }

}

/// The `FileChooserDialogRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserDialog` instance.
/// It exposes methods that can operate on this data type through `FileChooserDialogProtocol` conformance.
/// Use `FileChooserDialogRef` only as an `unowned` reference to an existing `GtkFileChooserDialog` instance.
///
/// `GtkFileChooserDialog` is a dialog box suitable for use with
/// “File Open” or “File Save” commands.  This widget works by
/// putting a `GtkFileChooserWidget` inside a `GtkDialog`.  It exposes
/// the `GtkFileChooser` interface, so you can use all of the
/// `GtkFileChooser` functions on the file chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkFileChooserDialog` does not have any methods of its
/// own.  Instead, you should use the functions that work on a
/// `GtkFileChooser`.
/// 
/// If you want to integrate well with the platform you should use the
/// `GtkFileChooserNative` API, which will use a platform-specific
/// dialog if available and fall back to GtkFileChooserDialog
/// otherwise.
/// 
/// ## Typical usage ## <a name="gtkfilechooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// static void
/// on_open_response (GtkDialog *dialog,
///                   int        response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
/// 
///       g_autoptr(GFile) file = gtk_file_chooser_get_file (chooser);
/// 
///       open_file (file);
///     }
/// 
///   gtk_window_destroy (GTK_WINDOW (dialog));
/// }
/// 
///   // ...
///   GtkWidget *dialog;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
///   dialog = gtk_file_chooser_dialog_new ("Open File",
///                                         parent_window,
///                                         action,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Open"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
/// 
///   gtk_widget_show (dialog);
/// 
///   g_signal_connect (dialog, "response",
///                     G_CALLBACK (on_open_response),
///                     NULL);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// static void
/// on_save_response (GtkDialog *dialog,
///                   int        response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
/// 
///       g_autoptr(GFile) file = gtk_file_chooser_get_file (chooser);
/// 
///       save_to_file (file);
///     }
/// 
///   gtk_window_destroy (GTK_WINDOW (dialog));
/// }
/// 
///   // ...
///   GtkWidget *dialog;
///   GtkFileChooser *chooser;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// 
///   dialog = gtk_file_chooser_dialog_new ("Save File",
///                                         parent_window,
///                                         action,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Save"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
///   chooser = GTK_FILE_CHOOSER (dialog);
/// 
///   if (user_edited_a_new_document)
///     gtk_file_chooser_set_current_name (chooser, _("Untitled document"));
///   else
///     gtk_file_chooser_set_file (chooser, existing_filename);
/// 
///   gtk_widget_show (dialog);
/// 
///   g_signal_connect (dialog, "response",
///                     G_CALLBACK (on_save_response),
///                     NULL);
/// ```
/// 
/// ## Setting up a file chooser dialog ## <a name="gtkfilechooserdialog-setting-up"></a>
/// 
/// There are various cases in which you may need to use a `GtkFileChooserDialog:`
/// 
/// - To select a file for opening. Use `GTK_FILE_CHOOSER_ACTION_OPEN`.
/// 
/// - To save a file for the first time. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and suggest a name such as “Untitled” with `gtk_file_chooser_set_current_name()`.
/// 
/// - To save a file under a different name. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and set the existing file with `gtk_file_chooser_set_file()`.
/// 
/// - To choose a folder instead of a file. Use `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// Note that old versions of the file chooser’s documentation suggested
/// using `gtk_file_chooser_set_current_folder()` in various
/// situations, with the intention of letting the application
/// suggest a reasonable default folder.  This is no longer
/// considered to be a good policy, as now the file chooser is
/// able to make good suggestions on its own.  In general, you
/// should only cause the file chooser to show a specific folder
/// when it is appropriate to use `gtk_file_chooser_set_file()`,
/// i.e. when you are doing a Save As command and you already
/// have a file saved somewhere.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialog-responses"></a>
/// 
/// `GtkFileChooserDialog` inherits from `GtkDialog`, so buttons that
/// go in its action area have response codes such as
/// `GTK_RESPONSE_ACCEPT` and `GTK_RESPONSE_CANCEL`.  For example, you
/// could call `gtk_file_chooser_dialog_new()` as follows:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// ```
/// 
/// This will create buttons for “Cancel” and “Open” that use predefined
/// response identifiers from `GtkResponseType`.  For most dialog
/// boxes you can use your own custom response codes rather than the
/// ones in `GtkResponseType`, but `GtkFileChooserDialog` assumes that
/// its “accept”-type action, e.g. an “Open” or “Save” button,
/// will have one of the following response codes:
/// 
/// - `GTK_RESPONSE_ACCEPT`
/// - `GTK_RESPONSE_OK`
/// - `GTK_RESPONSE_YES`
/// - `GTK_RESPONSE_APPLY`
/// 
/// This is because `GtkFileChooserDialog` must intercept responses
/// and switch to folders if appropriate, rather than letting the
/// dialog terminate — the implementation uses these known
/// response codes to know which responses can be blocked if
/// appropriate.
/// 
/// To summarize, make sure you use a
/// [predefined response code](#gtkfilechooserdialog-responses)
/// when you use `GtkFileChooserDialog` to ensure proper operation.
public struct FileChooserDialogRef: FileChooserDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFileChooserDialog` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserDialog>?) {
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

    /// Reference intialiser for a related type that implements `FileChooserDialogProtocol`
    @inlinable init<T: FileChooserDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileChooserDialogProtocol>(_ other: T) -> FileChooserDialogRef { FileChooserDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!

}

/// The `FileChooserDialog` type acts as a reference-counted owner of an underlying `GtkFileChooserDialog` instance.
/// It provides the methods that can operate on this data type through `FileChooserDialogProtocol` conformance.
/// Use `FileChooserDialog` as a strong reference or owner of a `GtkFileChooserDialog` instance.
///
/// `GtkFileChooserDialog` is a dialog box suitable for use with
/// “File Open” or “File Save” commands.  This widget works by
/// putting a `GtkFileChooserWidget` inside a `GtkDialog`.  It exposes
/// the `GtkFileChooser` interface, so you can use all of the
/// `GtkFileChooser` functions on the file chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkFileChooserDialog` does not have any methods of its
/// own.  Instead, you should use the functions that work on a
/// `GtkFileChooser`.
/// 
/// If you want to integrate well with the platform you should use the
/// `GtkFileChooserNative` API, which will use a platform-specific
/// dialog if available and fall back to GtkFileChooserDialog
/// otherwise.
/// 
/// ## Typical usage ## <a name="gtkfilechooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// static void
/// on_open_response (GtkDialog *dialog,
///                   int        response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
/// 
///       g_autoptr(GFile) file = gtk_file_chooser_get_file (chooser);
/// 
///       open_file (file);
///     }
/// 
///   gtk_window_destroy (GTK_WINDOW (dialog));
/// }
/// 
///   // ...
///   GtkWidget *dialog;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
///   dialog = gtk_file_chooser_dialog_new ("Open File",
///                                         parent_window,
///                                         action,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Open"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
/// 
///   gtk_widget_show (dialog);
/// 
///   g_signal_connect (dialog, "response",
///                     G_CALLBACK (on_open_response),
///                     NULL);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// static void
/// on_save_response (GtkDialog *dialog,
///                   int        response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
/// 
///       g_autoptr(GFile) file = gtk_file_chooser_get_file (chooser);
/// 
///       save_to_file (file);
///     }
/// 
///   gtk_window_destroy (GTK_WINDOW (dialog));
/// }
/// 
///   // ...
///   GtkWidget *dialog;
///   GtkFileChooser *chooser;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// 
///   dialog = gtk_file_chooser_dialog_new ("Save File",
///                                         parent_window,
///                                         action,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Save"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
///   chooser = GTK_FILE_CHOOSER (dialog);
/// 
///   if (user_edited_a_new_document)
///     gtk_file_chooser_set_current_name (chooser, _("Untitled document"));
///   else
///     gtk_file_chooser_set_file (chooser, existing_filename);
/// 
///   gtk_widget_show (dialog);
/// 
///   g_signal_connect (dialog, "response",
///                     G_CALLBACK (on_save_response),
///                     NULL);
/// ```
/// 
/// ## Setting up a file chooser dialog ## <a name="gtkfilechooserdialog-setting-up"></a>
/// 
/// There are various cases in which you may need to use a `GtkFileChooserDialog:`
/// 
/// - To select a file for opening. Use `GTK_FILE_CHOOSER_ACTION_OPEN`.
/// 
/// - To save a file for the first time. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and suggest a name such as “Untitled” with `gtk_file_chooser_set_current_name()`.
/// 
/// - To save a file under a different name. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and set the existing file with `gtk_file_chooser_set_file()`.
/// 
/// - To choose a folder instead of a file. Use `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// Note that old versions of the file chooser’s documentation suggested
/// using `gtk_file_chooser_set_current_folder()` in various
/// situations, with the intention of letting the application
/// suggest a reasonable default folder.  This is no longer
/// considered to be a good policy, as now the file chooser is
/// able to make good suggestions on its own.  In general, you
/// should only cause the file chooser to show a specific folder
/// when it is appropriate to use `gtk_file_chooser_set_file()`,
/// i.e. when you are doing a Save As command and you already
/// have a file saved somewhere.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialog-responses"></a>
/// 
/// `GtkFileChooserDialog` inherits from `GtkDialog`, so buttons that
/// go in its action area have response codes such as
/// `GTK_RESPONSE_ACCEPT` and `GTK_RESPONSE_CANCEL`.  For example, you
/// could call `gtk_file_chooser_dialog_new()` as follows:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// ```
/// 
/// This will create buttons for “Cancel” and “Open” that use predefined
/// response identifiers from `GtkResponseType`.  For most dialog
/// boxes you can use your own custom response codes rather than the
/// ones in `GtkResponseType`, but `GtkFileChooserDialog` assumes that
/// its “accept”-type action, e.g. an “Open” or “Save” button,
/// will have one of the following response codes:
/// 
/// - `GTK_RESPONSE_ACCEPT`
/// - `GTK_RESPONSE_OK`
/// - `GTK_RESPONSE_YES`
/// - `GTK_RESPONSE_APPLY`
/// 
/// This is because `GtkFileChooserDialog` must intercept responses
/// and switch to folders if appropriate, rather than letting the
/// dialog terminate — the implementation uses these known
/// response codes to know which responses can be blocked if
/// appropriate.
/// 
/// To summarize, make sure you use a
/// [predefined response code](#gtkfilechooserdialog-responses)
/// when you use `GtkFileChooserDialog` to ensure proper operation.
open class FileChooserDialog: Dialog, FileChooserDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFileChooserDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFileChooserDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFileChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFileChooserDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFileChooserDialog`.
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFileChooserDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileChooserDialogProtocol`
    /// Will retain `GtkFileChooserDialog`.
    /// - Parameter other: an instance of a related type that implements `FileChooserDialogProtocol`
    @inlinable public init<T: FileChooserDialogProtocol>(fileChooserDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!



}

public enum FileChooserDialogPropertyName: String, PropertyNameProtocol {
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidget = "default-widget"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
    case display = "display"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    case focusWidget = "focus-widget"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_fullscreen()`
    /// and `gtk_window_unfullscreen()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case fullscreened = "fullscreened"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case hideOnClose = "hide-on-close"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    case isActive = "is-active"
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
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_maximize()`
    /// and `gtk_window_unmaximize()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case maximized = "maximized"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupId = "startup-id"
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
}

public extension FileChooserDialogProtocol {
    /// Bind a `FileChooserDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileChooserDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FileChooserDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileChooserDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileChooserDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileChooserDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FileChooserDialog has no signals// MARK: FileChooserDialog Class: FileChooserDialogProtocol extension (methods and fields)
public extension FileChooserDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserDialog` instance.
    @inlinable var file_chooser_dialog_ptr: UnsafeMutablePointer<GtkFileChooserDialog>! { return ptr?.assumingMemoryBound(to: GtkFileChooserDialog.self) }



}



