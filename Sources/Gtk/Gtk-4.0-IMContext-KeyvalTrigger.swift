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

// MARK: - IMContext Class

/// The `IMContextProtocol` protocol exposes the methods and properties of an underlying `GtkIMContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContext`.
/// Alternatively, use `IMContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkIMContext` defines the interface for GTK input methods.
/// 
/// `GtkIMContext` is used by GTK text input widgets like `GtkText`
/// to map from key events to Unicode character strings.
/// 
/// By default, GTK uses a platform-dependent default input method.
/// On Windows, the default implementation is IME-based and on Wayland,
/// it is using the Wayland text protocol. The choice can be overridden
/// programmatically via the [property`Gtk.Settings:gtk-im-module`] setting.
/// Users may set the `GTK_IM_MODULE` environment variable to override the
/// default.
/// 
/// Text widgets have a :im-module property (e.g. [property`Gtk.TextView:im-module`])
/// that may also be used to set input methods for specific widget instances.
/// For instance, a certain entry widget might be expected to contain
/// certain characters which would be easier to input with a specific
/// input method.
/// 
/// An input method may consume multiple key events in sequence before finally
/// outputting the composed result. This is called *preediting*, and an input
/// method may provide feedback about this process by displaying the intermediate
/// composition states as preedit text.
/// 
/// For instance, the built-in GTK input method `GtkIMContextSimple` implements
/// the input of arbitrary Unicode code points by holding down the
/// &lt;kbd&gt;Control&lt;/kbd&gt; and &lt;kbd&gt;Shift&lt;/kbd&gt; keys and then typing &lt;kbd&gt;U&lt;/kbd&gt;
/// followed by the hexadecimal digits of the code point. When releasing the
/// &lt;kbd&gt;Control&lt;/kbd&gt; and &lt;kbd&gt;Shift&lt;/kbd&gt; keys, preediting ends and the
/// character is inserted as text. For example,
/// 
///     Ctrl+Shift+u 2 0 A C
/// 
/// results in the € sign.
/// 
/// Additional input methods can be made available for use by GTK widgets as
/// loadable modules. An input method module is a small shared library which
/// provides a `GIOExtension` for the extension point named "gtk-im-module".
public protocol IMContextProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkIMContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContext` instance.
    var im_context_ptr: UnsafeMutablePointer<GtkIMContext>! { get }

    /// Required Initialiser for types conforming to `IMContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IMContextRef` type acts as a lightweight Swift reference to an underlying `GtkIMContext` instance.
/// It exposes methods that can operate on this data type through `IMContextProtocol` conformance.
/// Use `IMContextRef` only as an `unowned` reference to an existing `GtkIMContext` instance.
///
/// `GtkIMContext` defines the interface for GTK input methods.
/// 
/// `GtkIMContext` is used by GTK text input widgets like `GtkText`
/// to map from key events to Unicode character strings.
/// 
/// By default, GTK uses a platform-dependent default input method.
/// On Windows, the default implementation is IME-based and on Wayland,
/// it is using the Wayland text protocol. The choice can be overridden
/// programmatically via the [property`Gtk.Settings:gtk-im-module`] setting.
/// Users may set the `GTK_IM_MODULE` environment variable to override the
/// default.
/// 
/// Text widgets have a :im-module property (e.g. [property`Gtk.TextView:im-module`])
/// that may also be used to set input methods for specific widget instances.
/// For instance, a certain entry widget might be expected to contain
/// certain characters which would be easier to input with a specific
/// input method.
/// 
/// An input method may consume multiple key events in sequence before finally
/// outputting the composed result. This is called *preediting*, and an input
/// method may provide feedback about this process by displaying the intermediate
/// composition states as preedit text.
/// 
/// For instance, the built-in GTK input method `GtkIMContextSimple` implements
/// the input of arbitrary Unicode code points by holding down the
/// &lt;kbd&gt;Control&lt;/kbd&gt; and &lt;kbd&gt;Shift&lt;/kbd&gt; keys and then typing &lt;kbd&gt;U&lt;/kbd&gt;
/// followed by the hexadecimal digits of the code point. When releasing the
/// &lt;kbd&gt;Control&lt;/kbd&gt; and &lt;kbd&gt;Shift&lt;/kbd&gt; keys, preediting ends and the
/// character is inserted as text. For example,
/// 
///     Ctrl+Shift+u 2 0 A C
/// 
/// results in the € sign.
/// 
/// Additional input methods can be made available for use by GTK widgets as
/// loadable modules. An input method module is a small shared library which
/// provides a `GIOExtension` for the extension point named "gtk-im-module".
public struct IMContextRef: IMContextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIMContext` instance.
    /// For type-safe access, use the generated, typed pointer `im_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContext>?) {
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

    /// Reference intialiser for a related type that implements `IMContextProtocol`
    @inlinable init<T: IMContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IMContextProtocol>(_ other: T) -> IMContextRef { IMContextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMContext` type acts as a reference-counted owner of an underlying `GtkIMContext` instance.
/// It provides the methods that can operate on this data type through `IMContextProtocol` conformance.
/// Use `IMContext` as a strong reference or owner of a `GtkIMContext` instance.
///
/// `GtkIMContext` defines the interface for GTK input methods.
/// 
/// `GtkIMContext` is used by GTK text input widgets like `GtkText`
/// to map from key events to Unicode character strings.
/// 
/// By default, GTK uses a platform-dependent default input method.
/// On Windows, the default implementation is IME-based and on Wayland,
/// it is using the Wayland text protocol. The choice can be overridden
/// programmatically via the [property`Gtk.Settings:gtk-im-module`] setting.
/// Users may set the `GTK_IM_MODULE` environment variable to override the
/// default.
/// 
/// Text widgets have a :im-module property (e.g. [property`Gtk.TextView:im-module`])
/// that may also be used to set input methods for specific widget instances.
/// For instance, a certain entry widget might be expected to contain
/// certain characters which would be easier to input with a specific
/// input method.
/// 
/// An input method may consume multiple key events in sequence before finally
/// outputting the composed result. This is called *preediting*, and an input
/// method may provide feedback about this process by displaying the intermediate
/// composition states as preedit text.
/// 
/// For instance, the built-in GTK input method `GtkIMContextSimple` implements
/// the input of arbitrary Unicode code points by holding down the
/// &lt;kbd&gt;Control&lt;/kbd&gt; and &lt;kbd&gt;Shift&lt;/kbd&gt; keys and then typing &lt;kbd&gt;U&lt;/kbd&gt;
/// followed by the hexadecimal digits of the code point. When releasing the
/// &lt;kbd&gt;Control&lt;/kbd&gt; and &lt;kbd&gt;Shift&lt;/kbd&gt; keys, preediting ends and the
/// character is inserted as text. For example,
/// 
///     Ctrl+Shift+u 2 0 A C
/// 
/// results in the € sign.
/// 
/// Additional input methods can be made available for use by GTK widgets as
/// loadable modules. An input method module is a small shared library which
/// provides a `GIOExtension` for the extension point named "gtk-im-module".
open class IMContext: GLibObject.Object, IMContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIMContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIMContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIMContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIMContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIMContext`.
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIMContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IMContextProtocol`
    /// Will retain `GtkIMContext`.
    /// - Parameter other: an instance of a related type that implements `IMContextProtocol`
    @inlinable public init<T: IMContextProtocol>(iMContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum IMContextPropertyName: String, PropertyNameProtocol {
    case inputHints = "input-hints"
    case inputPurpose = "input-purpose"
}

public extension IMContextProtocol {
    /// Bind a `IMContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IMContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IMContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IMContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IMContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IMContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IMContextSignalName: String, SignalNameProtocol {
    /// The `commit` signal is emitted when a complete input sequence
    /// has been entered by the user. This can be a single character
    /// immediately after a key press or the final result of preediting.
    case commit = "commit"
    /// The `delete-surrounding` signal is emitted when the input method
    /// needs to delete all or part of the context surrounding the cursor.
    case deleteSurrounding = "delete-surrounding"
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
    /// The `preedit-changed` signal is emitted whenever the preedit sequence
    /// currently being entered has changed.  It is also emitted at the end of
    /// a preedit sequence, in which case
    /// `gtk_im_context_get_preedit_string()` returns the empty string.
    case preeditChanged = "preedit-changed"
    /// The `preedit-end` signal is emitted when a preediting sequence
    /// has been completed or canceled.
    case preeditEnd = "preedit-end"
    /// The `preedit-start` signal is emitted when a new preediting sequence
    /// starts.
    case preeditStart = "preedit-start"
    /// The `retrieve-surrounding` signal is emitted when the input method
    /// requires the context surrounding the cursor.  The callback should set
    /// the input method surrounding context by calling the
    /// `gtk_im_context_set_surrounding()` method.
    case retrieveSurrounding = "retrieve-surrounding"
    case notifyInputHints = "notify::input-hints"
    case notifyInputPurpose = "notify::input-purpose"
}

// MARK: IMContext signals
public extension IMContextProtocol {
    /// Connect a Swift signal handler to the given, typed `IMContextSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IMContextSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `IMContextSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IMContextSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `commit` signal is emitted when a complete input sequence
    /// has been entered by the user. This can be a single character
    /// immediately after a key press or the final result of preediting.
    /// - Note: This represents the underlying `commit` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter str: the completed `character(s)` entered by the user
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `commit` signal is emitted
    @discardableResult @inlinable func onCommit(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ str: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IMContextRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return connect(
            signal: .commit,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `commit` signal for using the `connect(signal:)` methods
    static var commitSignal: IMContextSignalName { .commit }
    
    /// The `delete-surrounding` signal is emitted when the input method
    /// needs to delete all or part of the context surrounding the cursor.
    /// - Note: This represents the underlying `delete-surrounding` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter offset: the character offset from the cursor position of the text           to be deleted. A negative value indicates a position before           the cursor.
    /// - Parameter nChars: the number of characters to be deleted
    /// - Parameter handler: `true` if the signal was handled.
    /// Run the given callback whenever the `deleteSurrounding` signal is emitted
    @discardableResult @inlinable func onDeleteSurrounding(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ offset: Int, _ nChars: Int) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<IMContextRef, Int, Int, Bool>
        let cCallback: @convention(c) (gpointer, gint, gint, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IMContextRef(raw: unownedSelf), Int(arg1), Int(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .deleteSurrounding,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `delete-surrounding` signal for using the `connect(signal:)` methods
    static var deleteSurroundingSignal: IMContextSignalName { .deleteSurrounding }
    
    /// The `preedit-changed` signal is emitted whenever the preedit sequence
    /// currently being entered has changed.  It is also emitted at the end of
    /// a preedit sequence, in which case
    /// `gtk_im_context_get_preedit_string()` returns the empty string.
    /// - Note: This represents the underlying `preedit-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `preeditChanged` signal is emitted
    @discardableResult @inlinable func onPreeditChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .preeditChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `preedit-changed` signal for using the `connect(signal:)` methods
    static var preeditChangedSignal: IMContextSignalName { .preeditChanged }
    
    /// The `preedit-end` signal is emitted when a preediting sequence
    /// has been completed or canceled.
    /// - Note: This represents the underlying `preedit-end` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `preeditEnd` signal is emitted
    @discardableResult @inlinable func onPreeditEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .preeditEnd,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `preedit-end` signal for using the `connect(signal:)` methods
    static var preeditEndSignal: IMContextSignalName { .preeditEnd }
    
    /// The `preedit-start` signal is emitted when a new preediting sequence
    /// starts.
    /// - Note: This represents the underlying `preedit-start` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `preeditStart` signal is emitted
    @discardableResult @inlinable func onPreeditStart(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .preeditStart,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `preedit-start` signal for using the `connect(signal:)` methods
    static var preeditStartSignal: IMContextSignalName { .preeditStart }
    
    /// The `retrieve-surrounding` signal is emitted when the input method
    /// requires the context surrounding the cursor.  The callback should set
    /// the input method surrounding context by calling the
    /// `gtk_im_context_set_surrounding()` method.
    /// - Note: This represents the underlying `retrieve-surrounding` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: `true` if the signal was handled.
    /// Run the given callback whenever the `retrieveSurrounding` signal is emitted
    @discardableResult @inlinable func onRetrieveSurrounding(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IMContextRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .retrieveSurrounding,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `retrieve-surrounding` signal for using the `connect(signal:)` methods
    static var retrieveSurroundingSignal: IMContextSignalName { .retrieveSurrounding }
    
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
    /// - Note: This represents the underlying `notify::input-hints` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyInputHints` signal is emitted
    @discardableResult @inlinable func onNotifyInputHints(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IMContextRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyInputHints,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::input-hints` signal for using the `connect(signal:)` methods
    static var notifyInputHintsSignal: IMContextSignalName { .notifyInputHints }
    
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
    /// - Note: This represents the underlying `notify::input-purpose` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyInputPurpose` signal is emitted
    @discardableResult @inlinable func onNotifyInputPurpose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IMContextRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyInputPurpose,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::input-purpose` signal for using the `connect(signal:)` methods
    static var notifyInputPurposeSignal: IMContextSignalName { .notifyInputPurpose }
    
}

// MARK: IMContext Class: IMContextProtocol extension (methods and fields)
public extension IMContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContext` instance.
    @inlinable var im_context_ptr: UnsafeMutablePointer<GtkIMContext>! { return ptr?.assumingMemoryBound(to: GtkIMContext.self) }

    /// Asks the widget that the input context is attached to delete
    /// characters around the cursor position by emitting the
    /// GtkIMContext`delete_surrounding` signal.
    /// 
    /// Note that `offset` and `n_chars` are in characters not in bytes
    /// which differs from the usage other places in `GtkIMContext`.
    /// 
    /// In order to use this function, you should first call
    /// `gtk_im_context_get_surrounding()` to get the current context, and
    /// call this function immediately afterwards to make sure that you
    /// know what you are deleting. You should also account for the fact
    /// that even if the signal was handled, the input context might not
    /// have deleted all the characters that were requested to be deleted.
    /// 
    /// This function is used by an input method that wants to make
    /// subsitutions in the existing text in response to new input. It is
    /// not useful for applications.
    @inlinable func deleteSurrounding(offset: Int, nChars: Int) -> Bool {
        let rv = ((gtk_im_context_delete_surrounding(im_context_ptr, gint(offset), gint(nChars))) != 0)
        return rv
    }

    /// Allow an input method to forward key press and release events
    /// to another input methodm without necessarily having a `GdkEvent`
    /// available.
    @inlinable func filterKey<DeviceT: Gdk.DeviceProtocol, SurfaceT: Gdk.SurfaceProtocol>(press: Bool, surface: SurfaceT, device: DeviceT, time: guint32, keycode: Int, state: Gdk.ModifierType, group: Int) -> Bool {
        let rv = ((gtk_im_context_filter_key(im_context_ptr, gboolean((press) ? 1 : 0), surface.surface_ptr, device.device_ptr, time, guint(keycode), state.value, gint(group))) != 0)
        return rv
    }

    /// Allow an input method to internally handle key press and release
    /// events.
    /// 
    /// If this function returns `true`, then no further processing
    /// should be done for this key event.
    @inlinable func filterKeypress<EventT: Gdk.EventProtocol>(event: EventT) -> Bool {
        let rv = ((gtk_im_context_filter_keypress(im_context_ptr, event.event_ptr)) != 0)
        return rv
    }

    /// Notify the input method that the widget to which this
    /// input context corresponds has gained focus.
    /// 
    /// The input method may, for example, change the displayed
    /// feedback to reflect this change.
    @inlinable func focusIn() {
        gtk_im_context_focus_in(im_context_ptr)
    
    }

    /// Notify the input method that the widget to which this
    /// input context corresponds has lost focus.
    /// 
    /// The input method may, for example, change the displayed
    /// feedback or reset the contexts state to reflect this change.
    @inlinable func focusOut() {
        gtk_im_context_focus_out(im_context_ptr)
    
    }

    /// Retrieve the current preedit string for the input context,
    /// and a list of attributes to apply to the string.
    /// 
    /// This string should be displayed inserted at the insertion point.
    @inlinable func getPreeditString(str: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, attrs: UnsafeMutablePointer<UnsafeMutablePointer<PangoAttrList>?>!, cursorPos: UnsafeMutablePointer<gint>!) {
        gtk_im_context_get_preedit_string(im_context_ptr, str, attrs, cursorPos)
    
    }

    /// Retrieves context around the insertion point.
    /// 
    /// Input methods typically want context in order to constrain input text
    /// based on existing text; this is important for languages such as Thai
    /// where only some sequences of characters are allowed.
    /// 
    /// This function is implemented by emitting the
    /// [signal`Gtk.IMContext::retrieve-surrounding`] signal on the input method;
    /// in response to this signal, a widget should provide as much context as
    /// is available, up to an entire paragraph, by calling
    /// [method`Gtk.IMContext.set_surrounding`].
    /// 
    /// Note that there is no obligation for a widget to respond to the
    /// ``retrieve-surrounding`` signal, so input methods must be prepared to
    /// function without context.
    ///
    /// **get_surrounding is deprecated:**
    /// Use [method@Gtk.IMContext.get_surrounding_with_selection] instead.
    @available(*, deprecated) @inlinable func getSurrounding(text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, cursorIndex: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gtk_im_context_get_surrounding(im_context_ptr, text, cursorIndex)) != 0)
        return rv
    }

    /// Retrieves context around the insertion point.
    /// 
    /// Input methods typically want context in order to constrain input
    /// text based on existing text; this is important for languages such
    /// as Thai where only some sequences of characters are allowed.
    /// 
    /// This function is implemented by emitting the
    /// [signal`Gtk.IMContext::retrieve-surrounding`] signal on the input method;
    /// in response to this signal, a widget should provide as much context as
    /// is available, up to an entire paragraph, by calling
    /// [method`Gtk.IMContext.set_surrounding_with_selection`].
    /// 
    /// Note that there is no obligation for a widget to respond to the
    /// ``retrieve-surrounding`` signal, so input methods must be prepared to
    /// function without context.
    @inlinable func getSurroundingWithSelection(text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, cursorIndex: UnsafeMutablePointer<gint>!, anchorIndex: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gtk_im_context_get_surrounding_with_selection(im_context_ptr, text, cursorIndex, anchorIndex)) != 0)
        return rv
    }

    /// Notify the input method that a change such as a change in cursor
    /// position has been made.
    /// 
    /// This will typically cause the input method to clear the preedit state.
    @inlinable func reset() {
        gtk_im_context_reset(im_context_ptr)
    
    }

    /// Set the client widget for the input context.
    /// 
    /// This is the `GtkWidget` holding the input focus. This widget is
    /// used in order to correctly position status windows, and may
    /// also be used for purposes internal to the input method.
    @inlinable func setClient(widget: WidgetRef? = nil) {
        gtk_im_context_set_client_widget(im_context_ptr, widget?.widget_ptr)
    
    }
    /// Set the client widget for the input context.
    /// 
    /// This is the `GtkWidget` holding the input focus. This widget is
    /// used in order to correctly position status windows, and may
    /// also be used for purposes internal to the input method.
    @inlinable func setClient<WidgetT: WidgetProtocol>(widget: WidgetT?) {
        gtk_im_context_set_client_widget(im_context_ptr, widget?.widget_ptr)
    
    }

    /// Notify the input method that a change in cursor
    /// position has been made.
    /// 
    /// The location is relative to the client window.
    @inlinable func setCursorLocation<RectangleT: Gdk.RectangleProtocol>(area: RectangleT) {
        gtk_im_context_set_cursor_location(im_context_ptr, area.rectangle_ptr)
    
    }

    /// Sets surrounding context around the insertion point and preedit
    /// string.
    /// 
    /// This function is expected to be called in response to the
    /// [signal`Gtk.IMContext::retrieve-surrounding`] signal, and will
    /// likely have no effect if called at other times.
    ///
    /// **set_surrounding is deprecated:**
    /// Use [method@Gtk.IMContext.set_surrounding_with_selection] instead
    @available(*, deprecated) @inlinable func setSurrounding(text: UnsafePointer<CChar>!, len: Int, cursorIndex: Int) {
        gtk_im_context_set_surrounding(im_context_ptr, text, gint(len), gint(cursorIndex))
    
    }

    /// Sets surrounding context around the insertion point and preedit
    /// string. This function is expected to be called in response to the
    /// GtkIMContext`retrieve_surrounding` signal, and will likely have no
    /// effect if called at other times.
    @inlinable func setSurroundingWithSelection(text: UnsafePointer<CChar>!, len: Int, cursorIndex: Int, anchorIndex: Int) {
        gtk_im_context_set_surrounding_with_selection(im_context_ptr, text, gint(len), gint(cursorIndex), gint(anchorIndex))
    
    }

    /// Sets whether the IM context should use the preedit string
    /// to display feedback.
    /// 
    /// If `use_preedit` is `false` (default is `true`), then the IM context
    /// may use some other method to display feedback, such as displaying
    /// it in a child of the root window.
    @inlinable func set(usePreedit: Bool) {
        gtk_im_context_set_use_preedit(im_context_ptr, gboolean((usePreedit) ? 1 : 0))
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = im_context_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - IMContextSimple Class

/// The `IMContextSimpleProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextSimple` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextSimple`.
/// Alternatively, use `IMContextSimpleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkIMContextSimple` is an input method supporting table-based input methods.
/// 
/// `GtkIMContextSimple` has a built-in table of compose sequences that is
/// derived from the X11 Compose files.
/// 
/// `GtkIMContextSimple` reads additional compose sequences from the first of the
/// following files that is found: ~/.config/gtk-4.0/Compose, ~/.XCompose,
/// /usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
/// Compose file). The syntax of these files is described in the `Compose(5)`
/// manual page.
/// 
/// ## Unicode characters
/// 
/// `GtkIMContextSimple` also supports numeric entry of Unicode characters
/// by typing &lt;kbd&gt;Ctrl&lt;/kbd&gt;-&lt;kbd&gt;Shift&lt;/kbd&gt;-&lt;kbd&gt;u&lt;/kbd&gt;, followed by a
/// hexadecimal Unicode codepoint.
/// 
/// For example,
/// 
///     Ctrl-Shift-u 1 2 3 Enter
/// 
/// yields U+0123 LATIN SMALL LETTER G WITH CEDILLA, i.e. ģ.
public protocol IMContextSimpleProtocol: IMContextProtocol {
        /// Untyped pointer to the underlying `GtkIMContextSimple` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContextSimple` instance.
    var im_context_simple_ptr: UnsafeMutablePointer<GtkIMContextSimple>! { get }

    /// Required Initialiser for types conforming to `IMContextSimpleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IMContextSimpleRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextSimple` instance.
/// It exposes methods that can operate on this data type through `IMContextSimpleProtocol` conformance.
/// Use `IMContextSimpleRef` only as an `unowned` reference to an existing `GtkIMContextSimple` instance.
///
/// `GtkIMContextSimple` is an input method supporting table-based input methods.
/// 
/// `GtkIMContextSimple` has a built-in table of compose sequences that is
/// derived from the X11 Compose files.
/// 
/// `GtkIMContextSimple` reads additional compose sequences from the first of the
/// following files that is found: ~/.config/gtk-4.0/Compose, ~/.XCompose,
/// /usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
/// Compose file). The syntax of these files is described in the `Compose(5)`
/// manual page.
/// 
/// ## Unicode characters
/// 
/// `GtkIMContextSimple` also supports numeric entry of Unicode characters
/// by typing &lt;kbd&gt;Ctrl&lt;/kbd&gt;-&lt;kbd&gt;Shift&lt;/kbd&gt;-&lt;kbd&gt;u&lt;/kbd&gt;, followed by a
/// hexadecimal Unicode codepoint.
/// 
/// For example,
/// 
///     Ctrl-Shift-u 1 2 3 Enter
/// 
/// yields U+0123 LATIN SMALL LETTER G WITH CEDILLA, i.e. ģ.
public struct IMContextSimpleRef: IMContextSimpleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIMContextSimple` instance.
    /// For type-safe access, use the generated, typed pointer `im_context_simple_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextSimpleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContextSimple>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContextSimple>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContextSimple>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContextSimple>?) {
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

    /// Reference intialiser for a related type that implements `IMContextSimpleProtocol`
    @inlinable init<T: IMContextSimpleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IMContextSimpleProtocol>(_ other: T) -> IMContextSimpleRef { IMContextSimpleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIMContextSimple`.
    @inlinable init() {
        let rv = gtk_im_context_simple_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `IMContextSimple` type acts as a reference-counted owner of an underlying `GtkIMContextSimple` instance.
/// It provides the methods that can operate on this data type through `IMContextSimpleProtocol` conformance.
/// Use `IMContextSimple` as a strong reference or owner of a `GtkIMContextSimple` instance.
///
/// `GtkIMContextSimple` is an input method supporting table-based input methods.
/// 
/// `GtkIMContextSimple` has a built-in table of compose sequences that is
/// derived from the X11 Compose files.
/// 
/// `GtkIMContextSimple` reads additional compose sequences from the first of the
/// following files that is found: ~/.config/gtk-4.0/Compose, ~/.XCompose,
/// /usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
/// Compose file). The syntax of these files is described in the `Compose(5)`
/// manual page.
/// 
/// ## Unicode characters
/// 
/// `GtkIMContextSimple` also supports numeric entry of Unicode characters
/// by typing &lt;kbd&gt;Ctrl&lt;/kbd&gt;-&lt;kbd&gt;Shift&lt;/kbd&gt;-&lt;kbd&gt;u&lt;/kbd&gt;, followed by a
/// hexadecimal Unicode codepoint.
/// 
/// For example,
/// 
///     Ctrl-Shift-u 1 2 3 Enter
/// 
/// yields U+0123 LATIN SMALL LETTER G WITH CEDILLA, i.e. ģ.
open class IMContextSimple: IMContext, IMContextSimpleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIMContextSimple>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIMContextSimple>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIMContextSimple>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIMContextSimple>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIMContextSimple`.
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIMContextSimple>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IMContextSimpleProtocol`
    /// Will retain `GtkIMContextSimple`.
    /// - Parameter other: an instance of a related type that implements `IMContextSimpleProtocol`
    @inlinable public init<T: IMContextSimpleProtocol>(iMContextSimple other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkIMContextSimple`.
    @inlinable public init() {
        let rv = gtk_im_context_simple_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum IMContextSimplePropertyName: String, PropertyNameProtocol {
    case inputHints = "input-hints"
    case inputPurpose = "input-purpose"
}

public extension IMContextSimpleProtocol {
    /// Bind a `IMContextSimplePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IMContextSimplePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IMContextSimple property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IMContextSimplePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IMContextSimple property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IMContextSimplePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IMContextSimpleSignalName: String, SignalNameProtocol {
    /// The `commit` signal is emitted when a complete input sequence
    /// has been entered by the user. This can be a single character
    /// immediately after a key press or the final result of preediting.
    case commit = "commit"
    /// The `delete-surrounding` signal is emitted when the input method
    /// needs to delete all or part of the context surrounding the cursor.
    case deleteSurrounding = "delete-surrounding"
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
    /// The `preedit-changed` signal is emitted whenever the preedit sequence
    /// currently being entered has changed.  It is also emitted at the end of
    /// a preedit sequence, in which case
    /// `gtk_im_context_get_preedit_string()` returns the empty string.
    case preeditChanged = "preedit-changed"
    /// The `preedit-end` signal is emitted when a preediting sequence
    /// has been completed or canceled.
    case preeditEnd = "preedit-end"
    /// The `preedit-start` signal is emitted when a new preediting sequence
    /// starts.
    case preeditStart = "preedit-start"
    /// The `retrieve-surrounding` signal is emitted when the input method
    /// requires the context surrounding the cursor.  The callback should set
    /// the input method surrounding context by calling the
    /// `gtk_im_context_set_surrounding()` method.
    case retrieveSurrounding = "retrieve-surrounding"
    case notifyInputHints = "notify::input-hints"
    case notifyInputPurpose = "notify::input-purpose"
}

// MARK: IMContextSimple has no signals
// MARK: IMContextSimple Class: IMContextSimpleProtocol extension (methods and fields)
public extension IMContextSimpleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextSimple` instance.
    @inlinable var im_context_simple_ptr: UnsafeMutablePointer<GtkIMContextSimple>! { return ptr?.assumingMemoryBound(to: GtkIMContextSimple.self) }

    /// Adds an additional table from the X11 compose file.
    @inlinable func add(composeFile: UnsafePointer<CChar>!) {
        gtk_im_context_simple_add_compose_file(im_context_simple_ptr, composeFile)
    
    }

    /// Adds an additional table to search to the input context.
    /// Each row of the table consists of `max_seq_len` key symbols
    /// followed by two `guint16` interpreted as the high and low
    /// words of a `gunicode` value. Tables are searched starting
    /// from the last added.
    /// 
    /// The table must be sorted in dictionary order on the
    /// numeric value of the key symbol fields. (Values beyond
    /// the length of the sequence should be zero.)
    @inlinable func addTable(data: UnsafeMutablePointer<guint16>!, maxSeqLen: Int, nSeqs: Int) {
        gtk_im_context_simple_add_table(im_context_simple_ptr, data, gint(maxSeqLen), gint(nSeqs))
    
    }

    @inlinable var object: GtkIMContext {
        get {
            let rv = im_context_simple_ptr.pointee.object
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - IMMulticontext Class

/// The `IMMulticontextProtocol` protocol exposes the methods and properties of an underlying `GtkIMMulticontext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMMulticontext`.
/// Alternatively, use `IMMulticontextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkIMMulticontext` is input method supporting multiple, switchable input
/// methods.
/// 
/// Text widgets such as `GtkText` or `GtkTextView` use a `GtkIMMultiContext`
/// to implement their `im-module` property for switching between different
/// input methods.
public protocol IMMulticontextProtocol: IMContextProtocol {
        /// Untyped pointer to the underlying `GtkIMMulticontext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMMulticontext` instance.
    var im_multicontext_ptr: UnsafeMutablePointer<GtkIMMulticontext>! { get }

    /// Required Initialiser for types conforming to `IMMulticontextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IMMulticontextRef` type acts as a lightweight Swift reference to an underlying `GtkIMMulticontext` instance.
/// It exposes methods that can operate on this data type through `IMMulticontextProtocol` conformance.
/// Use `IMMulticontextRef` only as an `unowned` reference to an existing `GtkIMMulticontext` instance.
///
/// `GtkIMMulticontext` is input method supporting multiple, switchable input
/// methods.
/// 
/// Text widgets such as `GtkText` or `GtkTextView` use a `GtkIMMultiContext`
/// to implement their `im-module` property for switching between different
/// input methods.
public struct IMMulticontextRef: IMMulticontextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIMMulticontext` instance.
    /// For type-safe access, use the generated, typed pointer `im_multicontext_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMMulticontextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMMulticontext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMMulticontext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMMulticontext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMMulticontext>?) {
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

    /// Reference intialiser for a related type that implements `IMMulticontextProtocol`
    @inlinable init<T: IMMulticontextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IMMulticontextProtocol>(_ other: T) -> IMMulticontextRef { IMMulticontextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIMMulticontext`.
    @inlinable init() {
        let rv = gtk_im_multicontext_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `IMMulticontext` type acts as a reference-counted owner of an underlying `GtkIMMulticontext` instance.
/// It provides the methods that can operate on this data type through `IMMulticontextProtocol` conformance.
/// Use `IMMulticontext` as a strong reference or owner of a `GtkIMMulticontext` instance.
///
/// `GtkIMMulticontext` is input method supporting multiple, switchable input
/// methods.
/// 
/// Text widgets such as `GtkText` or `GtkTextView` use a `GtkIMMultiContext`
/// to implement their `im-module` property for switching between different
/// input methods.
open class IMMulticontext: IMContext, IMMulticontextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIMMulticontext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIMMulticontext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIMMulticontext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIMMulticontext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIMMulticontext`.
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIMMulticontext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IMMulticontextProtocol`
    /// Will retain `GtkIMMulticontext`.
    /// - Parameter other: an instance of a related type that implements `IMMulticontextProtocol`
    @inlinable public init<T: IMMulticontextProtocol>(iMMulticontext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkIMMulticontext`.
    @inlinable public init() {
        let rv = gtk_im_multicontext_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum IMMulticontextPropertyName: String, PropertyNameProtocol {
    case inputHints = "input-hints"
    case inputPurpose = "input-purpose"
}

public extension IMMulticontextProtocol {
    /// Bind a `IMMulticontextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IMMulticontextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IMMulticontext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IMMulticontextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IMMulticontext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IMMulticontextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IMMulticontextSignalName: String, SignalNameProtocol {
    /// The `commit` signal is emitted when a complete input sequence
    /// has been entered by the user. This can be a single character
    /// immediately after a key press or the final result of preediting.
    case commit = "commit"
    /// The `delete-surrounding` signal is emitted when the input method
    /// needs to delete all or part of the context surrounding the cursor.
    case deleteSurrounding = "delete-surrounding"
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
    /// The `preedit-changed` signal is emitted whenever the preedit sequence
    /// currently being entered has changed.  It is also emitted at the end of
    /// a preedit sequence, in which case
    /// `gtk_im_context_get_preedit_string()` returns the empty string.
    case preeditChanged = "preedit-changed"
    /// The `preedit-end` signal is emitted when a preediting sequence
    /// has been completed or canceled.
    case preeditEnd = "preedit-end"
    /// The `preedit-start` signal is emitted when a new preediting sequence
    /// starts.
    case preeditStart = "preedit-start"
    /// The `retrieve-surrounding` signal is emitted when the input method
    /// requires the context surrounding the cursor.  The callback should set
    /// the input method surrounding context by calling the
    /// `gtk_im_context_set_surrounding()` method.
    case retrieveSurrounding = "retrieve-surrounding"
    case notifyInputHints = "notify::input-hints"
    case notifyInputPurpose = "notify::input-purpose"
}

// MARK: IMMulticontext has no signals
// MARK: IMMulticontext Class: IMMulticontextProtocol extension (methods and fields)
public extension IMMulticontextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMMulticontext` instance.
    @inlinable var im_multicontext_ptr: UnsafeMutablePointer<GtkIMMulticontext>! { return ptr?.assumingMemoryBound(to: GtkIMMulticontext.self) }

    /// Gets the id of the currently active delegate of the `context`.
    @inlinable func getContextId() -> String! {
        let rv = gtk_im_multicontext_get_context_id(im_multicontext_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets the context id for `context`.
    /// 
    /// This causes the currently active delegate of `context` to be
    /// replaced by the delegate corresponding to the new context id.
    @inlinable func set(contextId: UnsafePointer<CChar>!) {
        gtk_im_multicontext_set_context_id(im_multicontext_ptr, contextId)
    
    }
    /// Gets the id of the currently active delegate of the `context`.
    @inlinable var contextId: String! {
        /// Gets the id of the currently active delegate of the `context`.
        get {
            let rv = gtk_im_multicontext_get_context_id(im_multicontext_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the context id for `context`.
        /// 
        /// This causes the currently active delegate of `context` to be
        /// replaced by the delegate corresponding to the new context id.
        nonmutating set {
            gtk_im_multicontext_set_context_id(im_multicontext_ptr, newValue)
        }
    }

    @inlinable var object: GtkIMContext {
        get {
            let rv = im_multicontext_ptr.pointee.object
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - IconPaintable Class

/// The `IconPaintableProtocol` protocol exposes the methods and properties of an underlying `GtkIconPaintable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconPaintable`.
/// Alternatively, use `IconPaintableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains information found when looking up an icon in `GtkIconTheme`.
/// 
/// `GtkIconPaintable` implements `GdkPaintable`.
public protocol IconPaintableProtocol: GLibObject.ObjectProtocol, Gdk.PaintableProtocol {
        /// Untyped pointer to the underlying `GtkIconPaintable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconPaintable` instance.
    var icon_paintable_ptr: UnsafeMutablePointer<GtkIconPaintable>! { get }

    /// Required Initialiser for types conforming to `IconPaintableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconPaintableRef` type acts as a lightweight Swift reference to an underlying `GtkIconPaintable` instance.
/// It exposes methods that can operate on this data type through `IconPaintableProtocol` conformance.
/// Use `IconPaintableRef` only as an `unowned` reference to an existing `GtkIconPaintable` instance.
///
/// Contains information found when looking up an icon in `GtkIconTheme`.
/// 
/// `GtkIconPaintable` implements `GdkPaintable`.
public struct IconPaintableRef: IconPaintableProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconPaintable` instance.
    /// For type-safe access, use the generated, typed pointer `icon_paintable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconPaintableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconPaintable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconPaintable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconPaintable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconPaintable>?) {
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

    /// Reference intialiser for a related type that implements `IconPaintableProtocol`
    @inlinable init<T: IconPaintableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconPaintableProtocol>(_ other: T) -> IconPaintableRef { IconPaintableRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkIconPaintable` for a file with a given size and scale.
    /// 
    /// The icon can then be rendered by using it as a `GdkPaintable`.
    @inlinable init<FileT: GIO.FileProtocol>(file: FileT, size: Int, scale: Int) {
        let rv = gtk_icon_paintable_new_for_file(file.file_ptr, gint(size), gint(scale))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GtkIconPaintable` for a file with a given size and scale.
    /// 
    /// The icon can then be rendered by using it as a `GdkPaintable`.
    @inlinable static func newFor<FileT: GIO.FileProtocol>(file: FileT, size: Int, scale: Int) -> IconPaintableRef! {
        guard let rv = IconPaintableRef(gconstpointer: gconstpointer(gtk_icon_paintable_new_for_file(file.file_ptr, gint(size), gint(scale)))) else { return nil }
        return rv
    }
}

/// The `IconPaintable` type acts as a reference-counted owner of an underlying `GtkIconPaintable` instance.
/// It provides the methods that can operate on this data type through `IconPaintableProtocol` conformance.
/// Use `IconPaintable` as a strong reference or owner of a `GtkIconPaintable` instance.
///
/// Contains information found when looking up an icon in `GtkIconTheme`.
/// 
/// `GtkIconPaintable` implements `GdkPaintable`.
open class IconPaintable: GLibObject.Object, IconPaintableProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconPaintable>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconPaintable>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconPaintable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconPaintable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconPaintable>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconPaintable`.
    /// i.e., ownership is transferred to the `IconPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconPaintable>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconPaintableProtocol`
    /// Will retain `GtkIconPaintable`.
    /// - Parameter other: an instance of a related type that implements `IconPaintableProtocol`
    @inlinable public init<T: IconPaintableProtocol>(iconPaintable other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconPaintableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GtkIconPaintable` for a file with a given size and scale.
    /// 
    /// The icon can then be rendered by using it as a `GdkPaintable`.
    @inlinable public init<FileT: GIO.FileProtocol>(file: FileT, size: Int, scale: Int) {
        let rv = gtk_icon_paintable_new_for_file(file.file_ptr, gint(size), gint(scale))
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkIconPaintable` for a file with a given size and scale.
    /// 
    /// The icon can then be rendered by using it as a `GdkPaintable`.
    @inlinable public static func newFor<FileT: GIO.FileProtocol>(file: FileT, size: Int, scale: Int) -> IconPaintable! {
        guard let rv = IconPaintable(gconstpointer: gconstpointer(gtk_icon_paintable_new_for_file(file.file_ptr, gint(size), gint(scale)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum IconPaintablePropertyName: String, PropertyNameProtocol {
    /// The file representing the icon, if any.
    case file = "file"
    /// The icon name that was chosen during lookup.
    case iconName = "icon-name"
    /// Whether the icon is symbolic or not.
    case isSymbolic = "is-symbolic"
}

public extension IconPaintableProtocol {
    /// Bind a `IconPaintablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IconPaintablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IconPaintable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IconPaintablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IconPaintable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IconPaintablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IconPaintableSignalName: String, SignalNameProtocol {
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
    /// The file representing the icon, if any.
    case notifyFile = "notify::file"
    /// The icon name that was chosen during lookup.
    case notifyIconName = "notify::icon-name"
    /// Whether the icon is symbolic or not.
    case notifyIsSymbolic = "notify::is-symbolic"
}

// MARK: IconPaintable has no signals
// MARK: IconPaintable Class: IconPaintableProtocol extension (methods and fields)
public extension IconPaintableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconPaintable` instance.
    @inlinable var icon_paintable_ptr: UnsafeMutablePointer<GtkIconPaintable>! { return ptr?.assumingMemoryBound(to: GtkIconPaintable.self) }

    /// Gets the `GFile` that was used to load the icon.
    /// 
    /// Returns `nil` if the icon was not loaded from a file.
    @inlinable func getFile() -> GIO.FileRef! {
        let rv = GIO.FileRef(gtk_icon_paintable_get_file(icon_paintable_ptr))
        return rv
    }

    /// Get the icon name being used for this icon.
    /// 
    /// When an icon looked up in the icon theme was not available, the
    /// icon theme may use fallback icons - either those specified to
    /// `gtk_icon_theme_lookup_icon()` or the always-available
    /// "image-missing". The icon chosen is returned by this function.
    /// 
    /// If the icon was created without an icon theme, this function
    /// returns `nil`.
    @inlinable func getIconName() -> String! {
        let rv = gtk_icon_paintable_get_icon_name(icon_paintable_ptr).map({ String(cString: $0) })
        return rv
    }
    /// The file representing the icon, if any.
    @inlinable var file: GIO.FileRef! {
        /// Gets the `GFile` that was used to load the icon.
        /// 
        /// Returns `nil` if the icon was not loaded from a file.
        get {
            let rv = GIO.FileRef(gtk_icon_paintable_get_file(icon_paintable_ptr))
            return rv
        }
    }

    /// Get the icon name being used for this icon.
    /// 
    /// When an icon looked up in the icon theme was not available, the
    /// icon theme may use fallback icons - either those specified to
    /// `gtk_icon_theme_lookup_icon()` or the always-available
    /// "image-missing". The icon chosen is returned by this function.
    /// 
    /// If the icon was created without an icon theme, this function
    /// returns `nil`.
    @inlinable var iconName: String! {
        /// Get the icon name being used for this icon.
        /// 
        /// When an icon looked up in the icon theme was not available, the
        /// icon theme may use fallback icons - either those specified to
        /// `gtk_icon_theme_lookup_icon()` or the always-available
        /// "image-missing". The icon chosen is returned by this function.
        /// 
        /// If the icon was created without an icon theme, this function
        /// returns `nil`.
        get {
            let rv = gtk_icon_paintable_get_icon_name(icon_paintable_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Checks if the icon is symbolic or not.
    /// 
    /// This currently uses only the file name and not the file contents
    /// for determining this. This behaviour may change in the future.
    /// 
    /// Note that to render a symbolic `GtkIconPaintable` properly (with
    /// recoloring), you have to set its icon name on a `GtkImage`.
    @inlinable var isSymbolic: Bool {
        /// Checks if the icon is symbolic or not.
        /// 
        /// This currently uses only the file name and not the file contents
        /// for determining this. This behaviour may change in the future.
        /// 
        /// Note that to render a symbolic `GtkIconPaintable` properly (with
        /// recoloring), you have to set its icon name on a `GtkImage`.
        get {
            let rv = ((gtk_icon_paintable_is_symbolic(icon_paintable_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - IconTheme Class

/// The `IconThemeProtocol` protocol exposes the methods and properties of an underlying `GtkIconTheme` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconTheme`.
/// Alternatively, use `IconThemeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkIconTheme` provides a facility for loading themed icons.
/// 
/// The main reason for using a name rather than simply providing a filename
/// is to allow different icons to be used depending on what “icon theme” is
/// selected by the user. The operation of icon themes on Linux and Unix
/// follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
/// There is a fallback icon theme, named `hicolor`, where applications
/// should install their icons, but additional icon themes can be installed
/// as operating system vendors and users choose.
/// 
/// In many cases, named themes are used indirectly, via [class`Gtk.Image`]
/// rather than directly, but looking up icons directly is also simple. The
/// `GtkIconTheme` object acts as a database of all the icons in the current
/// theme. You can create new `GtkIconTheme` objects, but it’s much more
/// efficient to use the standard icon theme of the `GtkWidget` so that the
/// icon information is shared with other people looking up icons.
/// 
/// ```c
/// GtkIconTheme *icon_theme;
/// GtkIconPaintable *icon;
/// GdkPaintable *paintable;
/// 
/// icon_theme = gtk_icon_theme_get_for_display (gtk_widget_get_display (my_widget));
/// icon = gtk_icon_theme_lookup_icon (icon_theme,
///                                    "my-icon-name", // icon name
///                                    48, // icon size
///                                    1,  // scale
///                                    0,  // flags);
/// paintable = GDK_PAINTABLE (icon);
/// // Use the paintable
/// g_object_unref (icon);
/// ```
public protocol IconThemeProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkIconTheme` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconTheme` instance.
    var icon_theme_ptr: UnsafeMutablePointer<GtkIconTheme>! { get }

    /// Required Initialiser for types conforming to `IconThemeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconThemeRef` type acts as a lightweight Swift reference to an underlying `GtkIconTheme` instance.
/// It exposes methods that can operate on this data type through `IconThemeProtocol` conformance.
/// Use `IconThemeRef` only as an `unowned` reference to an existing `GtkIconTheme` instance.
///
/// `GtkIconTheme` provides a facility for loading themed icons.
/// 
/// The main reason for using a name rather than simply providing a filename
/// is to allow different icons to be used depending on what “icon theme” is
/// selected by the user. The operation of icon themes on Linux and Unix
/// follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
/// There is a fallback icon theme, named `hicolor`, where applications
/// should install their icons, but additional icon themes can be installed
/// as operating system vendors and users choose.
/// 
/// In many cases, named themes are used indirectly, via [class`Gtk.Image`]
/// rather than directly, but looking up icons directly is also simple. The
/// `GtkIconTheme` object acts as a database of all the icons in the current
/// theme. You can create new `GtkIconTheme` objects, but it’s much more
/// efficient to use the standard icon theme of the `GtkWidget` so that the
/// icon information is shared with other people looking up icons.
/// 
/// ```c
/// GtkIconTheme *icon_theme;
/// GtkIconPaintable *icon;
/// GdkPaintable *paintable;
/// 
/// icon_theme = gtk_icon_theme_get_for_display (gtk_widget_get_display (my_widget));
/// icon = gtk_icon_theme_lookup_icon (icon_theme,
///                                    "my-icon-name", // icon name
///                                    48, // icon size
///                                    1,  // scale
///                                    0,  // flags);
/// paintable = GDK_PAINTABLE (icon);
/// // Use the paintable
/// g_object_unref (icon);
/// ```
public struct IconThemeRef: IconThemeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconTheme` instance.
    /// For type-safe access, use the generated, typed pointer `icon_theme_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconThemeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconTheme>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconTheme>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconTheme>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconTheme>?) {
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

    /// Reference intialiser for a related type that implements `IconThemeProtocol`
    @inlinable init<T: IconThemeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconThemeProtocol>(_ other: T) -> IconThemeRef { IconThemeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new icon theme object.
    /// 
    /// Icon theme objects are used to lookup up an icon by name
    /// in a particular icon theme. Usually, you’ll want to use
    /// [func`Gtk.IconTheme.get_for_display`] rather than creating
    /// a new icon theme object for scratch.
    @inlinable init() {
        let rv = gtk_icon_theme_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Gets the icon theme object associated with `display`.
    /// 
    /// If this function has not previously been called for the given
    /// display, a new icon theme object will be created and associated
    /// with the display. Icon theme objects are fairly expensive to create,
    /// so using this function is usually a better choice than calling
    /// [ctor`Gtk.IconTheme.new`] and setting the display yourself; by using
    /// this function a single icon theme object will be shared between users.
    @inlinable static func getFor<DisplayT: Gdk.DisplayProtocol>(display: DisplayT) -> IconThemeRef! {
        guard let rv = IconThemeRef(gconstpointer: gconstpointer(gtk_icon_theme_get_for_display(display.display_ptr))) else { return nil }
        return rv
    }
}

/// The `IconTheme` type acts as a reference-counted owner of an underlying `GtkIconTheme` instance.
/// It provides the methods that can operate on this data type through `IconThemeProtocol` conformance.
/// Use `IconTheme` as a strong reference or owner of a `GtkIconTheme` instance.
///
/// `GtkIconTheme` provides a facility for loading themed icons.
/// 
/// The main reason for using a name rather than simply providing a filename
/// is to allow different icons to be used depending on what “icon theme” is
/// selected by the user. The operation of icon themes on Linux and Unix
/// follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
/// There is a fallback icon theme, named `hicolor`, where applications
/// should install their icons, but additional icon themes can be installed
/// as operating system vendors and users choose.
/// 
/// In many cases, named themes are used indirectly, via [class`Gtk.Image`]
/// rather than directly, but looking up icons directly is also simple. The
/// `GtkIconTheme` object acts as a database of all the icons in the current
/// theme. You can create new `GtkIconTheme` objects, but it’s much more
/// efficient to use the standard icon theme of the `GtkWidget` so that the
/// icon information is shared with other people looking up icons.
/// 
/// ```c
/// GtkIconTheme *icon_theme;
/// GtkIconPaintable *icon;
/// GdkPaintable *paintable;
/// 
/// icon_theme = gtk_icon_theme_get_for_display (gtk_widget_get_display (my_widget));
/// icon = gtk_icon_theme_lookup_icon (icon_theme,
///                                    "my-icon-name", // icon name
///                                    48, // icon size
///                                    1,  // scale
///                                    0,  // flags);
/// paintable = GDK_PAINTABLE (icon);
/// // Use the paintable
/// g_object_unref (icon);
/// ```
open class IconTheme: GLibObject.Object, IconThemeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconTheme>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconTheme>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconTheme>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconTheme>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconTheme`.
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconTheme>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconThemeProtocol`
    /// Will retain `GtkIconTheme`.
    /// - Parameter other: an instance of a related type that implements `IconThemeProtocol`
    @inlinable public init<T: IconThemeProtocol>(iconTheme other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new icon theme object.
    /// 
    /// Icon theme objects are used to lookup up an icon by name
    /// in a particular icon theme. Usually, you’ll want to use
    /// [func`Gtk.IconTheme.get_for_display`] rather than creating
    /// a new icon theme object for scratch.
    @inlinable public init() {
        let rv = gtk_icon_theme_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Gets the icon theme object associated with `display`.
    /// 
    /// If this function has not previously been called for the given
    /// display, a new icon theme object will be created and associated
    /// with the display. Icon theme objects are fairly expensive to create,
    /// so using this function is usually a better choice than calling
    /// [ctor`Gtk.IconTheme.new`] and setting the display yourself; by using
    /// this function a single icon theme object will be shared between users.
    @inlinable public static func getFor<DisplayT: Gdk.DisplayProtocol>(display: DisplayT) -> IconTheme! {
        guard let rv = IconTheme(gconstpointer: gconstpointer(gtk_icon_theme_get_for_display(display.display_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum IconThemePropertyName: String, PropertyNameProtocol {
    /// The display that this icon theme object is attached to.
    case display = "display"
    /// The icon names that are supported by the icon theme.
    case iconNames = "icon-names"
    /// Resource paths that will be looked at when looking for icons,
    /// similar to search paths.
    /// 
    /// The resources are considered as part of the hicolor icon theme
    /// and must be located in subdirectories that are defined in the
    /// hicolor icon theme, such as ``path`/16x16/actions/run.png`.
    /// Icons that are directly placed in the resource path instead
    /// of a subdirectory are also considered as ultimate fallback.
    case resourcePath = "resource-path"
    /// The search path for this icon theme.
    /// 
    /// When looking for icons, GTK will search for a subdirectory of
    /// one or more of the directories in the search path with the same
    /// name as the icon theme containing an index.theme file. (Themes
    /// from multiple of the path elements are combined to allow themes
    /// to be extended by adding icons in the user’s home directory.)
    case searchPath = "search-path"
    /// The name of the icon theme that is being used.
    /// 
    /// Unless set to a different value, this will be the value of
    /// the `GtkSettings:gtk-icon-theme-name` property of the `GtkSettings`
    /// object associated to the display of the icontheme object.
    case themeName = "theme-name"
}

public extension IconThemeProtocol {
    /// Bind a `IconThemePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IconThemePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IconTheme property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IconThemePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IconTheme property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IconThemePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IconThemeSignalName: String, SignalNameProtocol {
    /// Emitted when the icon theme changes.
    /// 
    /// This can happen becuase current icon theme is switched or
    /// because GTK detects that a change has occurred in the
    /// contents of the current icon theme.
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
    /// The display that this icon theme object is attached to.
    case notifyDisplay = "notify::display"
    /// The icon names that are supported by the icon theme.
    case notifyIconNames = "notify::icon-names"
    /// Resource paths that will be looked at when looking for icons,
    /// similar to search paths.
    /// 
    /// The resources are considered as part of the hicolor icon theme
    /// and must be located in subdirectories that are defined in the
    /// hicolor icon theme, such as ``path`/16x16/actions/run.png`.
    /// Icons that are directly placed in the resource path instead
    /// of a subdirectory are also considered as ultimate fallback.
    case notifyResourcePath = "notify::resource-path"
    /// The search path for this icon theme.
    /// 
    /// When looking for icons, GTK will search for a subdirectory of
    /// one or more of the directories in the search path with the same
    /// name as the icon theme containing an index.theme file. (Themes
    /// from multiple of the path elements are combined to allow themes
    /// to be extended by adding icons in the user’s home directory.)
    case notifySearchPath = "notify::search-path"
    /// The name of the icon theme that is being used.
    /// 
    /// Unless set to a different value, this will be the value of
    /// the `GtkSettings:gtk-icon-theme-name` property of the `GtkSettings`
    /// object associated to the display of the icontheme object.
    case notifyThemeName = "notify::theme-name"
}

// MARK: IconTheme signals
public extension IconThemeProtocol {
    /// Connect a Swift signal handler to the given, typed `IconThemeSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconThemeSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `IconThemeSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconThemeSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the icon theme changes.
    /// 
    /// This can happen becuase current icon theme is switched or
    /// because GTK detects that a change has occurred in the
    /// contents of the current icon theme.
    /// - Note: This represents the underlying `changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changed` signal is emitted
    @discardableResult @inlinable func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconThemeRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconThemeRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconThemeRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .changed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `changed` signal for using the `connect(signal:)` methods
    static var changedSignal: IconThemeSignalName { .changed }
    
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
    /// - Note: This represents the underlying `notify::display` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDisplay` signal is emitted
    @discardableResult @inlinable func onNotifyDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconThemeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconThemeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconThemeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDisplay,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::display` signal for using the `connect(signal:)` methods
    static var notifyDisplaySignal: IconThemeSignalName { .notifyDisplay }
    
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
    /// - Note: This represents the underlying `notify::icon-names` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIconNames` signal is emitted
    @discardableResult @inlinable func onNotifyIconNames(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconThemeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconThemeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconThemeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIconNames,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::icon-names` signal for using the `connect(signal:)` methods
    static var notifyIconNamesSignal: IconThemeSignalName { .notifyIconNames }
    
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
    /// - Note: This represents the underlying `notify::resource-path` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyResourcePath` signal is emitted
    @discardableResult @inlinable func onNotifyResourcePath(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconThemeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconThemeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconThemeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyResourcePath,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::resource-path` signal for using the `connect(signal:)` methods
    static var notifyResourcePathSignal: IconThemeSignalName { .notifyResourcePath }
    
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
    /// - Note: This represents the underlying `notify::search-path` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySearchPath` signal is emitted
    @discardableResult @inlinable func onNotifySearchPath(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconThemeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconThemeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconThemeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySearchPath,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::search-path` signal for using the `connect(signal:)` methods
    static var notifySearchPathSignal: IconThemeSignalName { .notifySearchPath }
    
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
    /// - Note: This represents the underlying `notify::theme-name` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyThemeName` signal is emitted
    @discardableResult @inlinable func onNotifyThemeName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconThemeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconThemeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconThemeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyThemeName,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::theme-name` signal for using the `connect(signal:)` methods
    static var notifyThemeNameSignal: IconThemeSignalName { .notifyThemeName }
    
}

// MARK: IconTheme Class: IconThemeProtocol extension (methods and fields)
public extension IconThemeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconTheme` instance.
    @inlinable var icon_theme_ptr: UnsafeMutablePointer<GtkIconTheme>! { return ptr?.assumingMemoryBound(to: GtkIconTheme.self) }

    /// Adds a resource path that will be looked at when looking
    /// for icons, similar to search paths.
    /// 
    /// See [method`Gtk.IconTheme.set_resource_path`].
    /// 
    /// This function should be used to make application-specific icons
    /// available as part of the icon theme.
    @inlinable func addResource(path: UnsafePointer<CChar>!) {
        gtk_icon_theme_add_resource_path(icon_theme_ptr, path)
    
    }

    /// Appends a directory to the search path.
    /// 
    /// See [method`Gtk.IconTheme.set_search_path`].
    @inlinable func addSearch(path: UnsafePointer<CChar>!) {
        gtk_icon_theme_add_search_path(icon_theme_ptr, path)
    
    }

    /// Returns the display that the `GtkIconTheme` object was
    /// created for.
    @inlinable func getDisplay() -> Gdk.DisplayRef! {
        let rv = Gdk.DisplayRef(gtk_icon_theme_get_display(icon_theme_ptr))
        return rv
    }

    /// Lists the names of icons in the current icon theme.
    @inlinable func getIconNames() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = gtk_icon_theme_get_icon_names(icon_theme_ptr)
        return rv
    }

    /// Returns an array of integers describing the sizes at which
    /// the icon is available without scaling.
    /// 
    /// A size of -1 means that the icon is available in a scalable
    /// format. The array is zero-terminated.
    @inlinable func getIconSizes(iconName: UnsafePointer<CChar>!) -> UnsafeMutablePointer<CInt>! {
        let rv = gtk_icon_theme_get_icon_sizes(icon_theme_ptr, iconName)
        return rv
    }

    /// Gets the current resource path.
    /// 
    /// See [method`Gtk.IconTheme.set_resource_path`].
    @inlinable func getResourcePath() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = gtk_icon_theme_get_resource_path(icon_theme_ptr)
        return rv
    }

    /// Gets the current search path.
    /// 
    /// See [method`Gtk.IconTheme.set_search_path`].
    @inlinable func getSearchPath() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = gtk_icon_theme_get_search_path(icon_theme_ptr)
        return rv
    }

    /// Gets the current icon theme name.
    /// 
    /// Returns (transfer full): the current icon theme name,
    @inlinable func getThemeName() -> String! {
        let rv = gtk_icon_theme_get_theme_name(icon_theme_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks whether an icon theme includes an icon
    /// for a particular `GIcon`.
    @inlinable func has<IconT: GIO.IconProtocol>(gicon: IconT) -> Bool {
        let rv = ((gtk_icon_theme_has_gicon(icon_theme_ptr, gicon.icon_ptr)) != 0)
        return rv
    }

    /// Checks whether an icon theme includes an icon
    /// for a particular name.
    @inlinable func hasIcon(iconName: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_icon_theme_has_icon(icon_theme_ptr, iconName)) != 0)
        return rv
    }

    /// Looks up a icon for a desired size and window scale.
    /// 
    /// The icon can then be rendered by using it as a `GdkPaintable`,
    /// or you can get information such as the filename and size.
    @inlinable func lookupByGicon<IconT: GIO.IconProtocol>(icon: IconT, size: Int, scale: Int, direction: GtkTextDirection, flags: IconLookupFlags) -> IconPaintableRef! {
        let rv = IconPaintableRef(gconstpointer: gconstpointer(gtk_icon_theme_lookup_by_gicon(icon_theme_ptr, icon.icon_ptr, gint(size), gint(scale), direction, flags.value)))
        return rv
    }

    /// Looks up a named icon for a desired size and window scale,
    /// returning a `GtkIconPaintable`.
    /// 
    /// The icon can then be rendered by using it as a `GdkPaintable`,
    /// or you can get information such as the filename and size.
    /// 
    /// If the available `icon_name` is not available and `fallbacks` are
    /// provided, they will be tried in order.
    /// 
    /// If no matching icon is found, then a paintable that renders the
    /// "missing icon" icon is returned. If you need to do something else
    /// for missing icons you need to use [method`Gtk.IconTheme.has_icon`].
    /// 
    /// Note that you probably want to listen for icon theme changes and
    /// update the icon. This is usually done by overriding the
    /// `GtkWidgetClass.css-changed()` function.
    @inlinable func lookupIcon(iconName: UnsafePointer<CChar>!, fallbacks: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil, size: Int, scale: Int, direction: GtkTextDirection, flags: IconLookupFlags) -> IconPaintableRef! {
        let rv = IconPaintableRef(gconstpointer: gconstpointer(gtk_icon_theme_lookup_icon(icon_theme_ptr, iconName, fallbacks, gint(size), gint(scale), direction, flags.value)))
        return rv
    }

    /// Sets the resource paths that will be looked at when
    /// looking for icons, similar to search paths.
    /// 
    /// The resources are considered as part of the hicolor icon theme
    /// and must be located in subdirectories that are defined in the
    /// hicolor icon theme, such as ``path`/16x16/actions/run.png`
    /// or ``path`/scalable/actions/run.svg`.
    /// 
    /// Icons that are directly placed in the resource path instead
    /// of a subdirectory are also considered as ultimate fallback,
    /// but they are treated like unthemed icons.
    @inlinable func setResource(path: UnsafePointer<UnsafePointer<CChar>?>!) {
        gtk_icon_theme_set_resource_path(icon_theme_ptr, path)
    
    }

    /// Sets the search path for the icon theme object.
    /// 
    /// When looking for an icon theme, GTK will search for a subdirectory
    /// of one or more of the directories in `path` with the same name
    /// as the icon theme containing an index.theme file. (Themes from
    /// multiple of the path elements are combined to allow themes to be
    /// extended by adding icons in the user’s home directory.)
    /// 
    /// In addition if an icon found isn’t found either in the current
    /// icon theme or the default icon theme, and an image file with
    /// the right name is found directly in one of the elements of
    /// `path`, then that image will be used for the icon name.
    /// (This is legacy feature, and new icons should be put
    /// into the fallback icon theme, which is called hicolor,
    /// rather than directly on the icon path.)
    @inlinable func setSearch(path: UnsafePointer<UnsafePointer<CChar>?>! = nil) {
        gtk_icon_theme_set_search_path(icon_theme_ptr, path)
    
    }

    /// Sets the name of the icon theme that the `GtkIconTheme` object uses
    /// overriding system configuration.
    /// 
    /// This function cannot be called on the icon theme objects returned
    /// from [type_func`Gtk.IconTheme.get_for_display`].
    @inlinable func set(themeName: UnsafePointer<CChar>? = nil) {
        gtk_icon_theme_set_theme_name(icon_theme_ptr, themeName)
    
    }
    /// The display that this icon theme object is attached to.
    @inlinable var display: Gdk.DisplayRef! {
        /// Returns the display that the `GtkIconTheme` object was
        /// created for.
        get {
            let rv = Gdk.DisplayRef(gtk_icon_theme_get_display(icon_theme_ptr))
            return rv
        }
    }

    /// Lists the names of icons in the current icon theme.
    @inlinable var iconNames: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        /// Lists the names of icons in the current icon theme.
        get {
            let rv = gtk_icon_theme_get_icon_names(icon_theme_ptr)
            return rv
        }
    }

    /// Gets the current resource path.
    /// 
    /// See [method`Gtk.IconTheme.set_resource_path`].
    @inlinable var resourcePath: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        /// Gets the current resource path.
        /// 
        /// See [method`Gtk.IconTheme.set_resource_path`].
        get {
            let rv = gtk_icon_theme_get_resource_path(icon_theme_ptr)
            return rv
        }
        /// Sets the resource paths that will be looked at when
        /// looking for icons, similar to search paths.
        /// 
        /// The resources are considered as part of the hicolor icon theme
        /// and must be located in subdirectories that are defined in the
        /// hicolor icon theme, such as ``path`/16x16/actions/run.png`
        /// or ``path`/scalable/actions/run.svg`.
        /// 
        /// Icons that are directly placed in the resource path instead
        /// of a subdirectory are also considered as ultimate fallback,
        /// but they are treated like unthemed icons.
        nonmutating set {
            gtk_icon_theme_set_resource_path(icon_theme_ptr, unsafeBitCast(newValue, to: UnsafePointer<UnsafePointer<CChar>?>.self))
        }
    }

    /// Gets the current search path.
    /// 
    /// See [method`Gtk.IconTheme.set_search_path`].
    @inlinable var searchPath: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        /// Gets the current search path.
        /// 
        /// See [method`Gtk.IconTheme.set_search_path`].
        get {
            let rv = gtk_icon_theme_get_search_path(icon_theme_ptr)
            return rv
        }
        /// Sets the search path for the icon theme object.
        /// 
        /// When looking for an icon theme, GTK will search for a subdirectory
        /// of one or more of the directories in `path` with the same name
        /// as the icon theme containing an index.theme file. (Themes from
        /// multiple of the path elements are combined to allow themes to be
        /// extended by adding icons in the user’s home directory.)
        /// 
        /// In addition if an icon found isn’t found either in the current
        /// icon theme or the default icon theme, and an image file with
        /// the right name is found directly in one of the elements of
        /// `path`, then that image will be used for the icon name.
        /// (This is legacy feature, and new icons should be put
        /// into the fallback icon theme, which is called hicolor,
        /// rather than directly on the icon path.)
        nonmutating set {
            gtk_icon_theme_set_search_path(icon_theme_ptr, unsafeBitCast(newValue, to: UnsafePointer<UnsafePointer<CChar>?>.self))
        }
    }

    /// Gets the current icon theme name.
    /// 
    /// Returns (transfer full): the current icon theme name,
    @inlinable var themeName: String! {
        /// Gets the current icon theme name.
        /// 
        /// Returns (transfer full): the current icon theme name,
        get {
            let rv = gtk_icon_theme_get_theme_name(icon_theme_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name of the icon theme that the `GtkIconTheme` object uses
        /// overriding system configuration.
        /// 
        /// This function cannot be called on the icon theme objects returned
        /// from [type_func`Gtk.IconTheme.get_for_display`].
        nonmutating set {
            gtk_icon_theme_set_theme_name(icon_theme_ptr, newValue)
        }
    }


}



// MARK: - IconView Class

/// The `IconViewProtocol` protocol exposes the methods and properties of an underlying `GtkIconView` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconView`.
/// Alternatively, use `IconViewRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkIconView` is a widget which displays data in a grid of icons.
/// 
/// `GtkIconView` provides an alternative view on a `GtkTreeModel`.
/// It displays the model as a grid of icons with labels. Like
/// [class`Gtk.TreeView`], it allows to select one or multiple items
/// (depending on the selection mode, see [method`Gtk.IconView.set_selection_mode`]).
/// In addition to selection with the arrow keys, `GtkIconView` supports
/// rubberband selection, which is controlled by dragging the pointer.
/// 
/// Note that if the tree model is backed by an actual tree store (as
/// opposed to a flat list where the mapping to icons is obvious),
/// `GtkIconView` will only display the first level of the tree and
/// ignore the tree’s branches.
/// 
/// # CSS nodes
/// 
/// ```
/// iconview.view
/// ╰── [rubberband]
/// ```
/// 
/// `GtkIconView` has a single CSS node with name iconview and style class .view.
/// For rubberband selection, a subnode with name rubberband is used.
public protocol IconViewProtocol: WidgetProtocol, CellLayoutProtocol, ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkIconView` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconView` instance.
    var icon_view_ptr: UnsafeMutablePointer<GtkIconView>! { get }

    /// Required Initialiser for types conforming to `IconViewProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconViewRef` type acts as a lightweight Swift reference to an underlying `GtkIconView` instance.
/// It exposes methods that can operate on this data type through `IconViewProtocol` conformance.
/// Use `IconViewRef` only as an `unowned` reference to an existing `GtkIconView` instance.
///
/// `GtkIconView` is a widget which displays data in a grid of icons.
/// 
/// `GtkIconView` provides an alternative view on a `GtkTreeModel`.
/// It displays the model as a grid of icons with labels. Like
/// [class`Gtk.TreeView`], it allows to select one or multiple items
/// (depending on the selection mode, see [method`Gtk.IconView.set_selection_mode`]).
/// In addition to selection with the arrow keys, `GtkIconView` supports
/// rubberband selection, which is controlled by dragging the pointer.
/// 
/// Note that if the tree model is backed by an actual tree store (as
/// opposed to a flat list where the mapping to icons is obvious),
/// `GtkIconView` will only display the first level of the tree and
/// ignore the tree’s branches.
/// 
/// # CSS nodes
/// 
/// ```
/// iconview.view
/// ╰── [rubberband]
/// ```
/// 
/// `GtkIconView` has a single CSS node with name iconview and style class .view.
/// For rubberband selection, a subnode with name rubberband is used.
public struct IconViewRef: IconViewProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconView` instance.
    /// For type-safe access, use the generated, typed pointer `icon_view_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconViewRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconView>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconView>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconView>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconView>?) {
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

    /// Reference intialiser for a related type that implements `IconViewProtocol`
    @inlinable init<T: IconViewProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconViewProtocol>(_ other: T) -> IconViewRef { IconViewRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIconView` widget
    @inlinable init() {
        let rv = gtk_icon_view_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable init<CellAreaT: CellAreaProtocol>(area: CellAreaT) {
        let rv = gtk_icon_view_new_with_area(area.cell_area_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable init<TreeModelT: TreeModelProtocol>(model: TreeModelT) {
        let rv = gtk_icon_view_new_with_model(model.tree_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable static func newWith<CellAreaT: CellAreaProtocol>(area: CellAreaT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_icon_view_new_with_area(area.cell_area_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable static func newWith<TreeModelT: TreeModelProtocol>(model: TreeModelT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_icon_view_new_with_model(model.tree_model_ptr))) else { return nil }
        return rv
    }
}

/// The `IconView` type acts as a reference-counted owner of an underlying `GtkIconView` instance.
/// It provides the methods that can operate on this data type through `IconViewProtocol` conformance.
/// Use `IconView` as a strong reference or owner of a `GtkIconView` instance.
///
/// `GtkIconView` is a widget which displays data in a grid of icons.
/// 
/// `GtkIconView` provides an alternative view on a `GtkTreeModel`.
/// It displays the model as a grid of icons with labels. Like
/// [class`Gtk.TreeView`], it allows to select one or multiple items
/// (depending on the selection mode, see [method`Gtk.IconView.set_selection_mode`]).
/// In addition to selection with the arrow keys, `GtkIconView` supports
/// rubberband selection, which is controlled by dragging the pointer.
/// 
/// Note that if the tree model is backed by an actual tree store (as
/// opposed to a flat list where the mapping to icons is obvious),
/// `GtkIconView` will only display the first level of the tree and
/// ignore the tree’s branches.
/// 
/// # CSS nodes
/// 
/// ```
/// iconview.view
/// ╰── [rubberband]
/// ```
/// 
/// `GtkIconView` has a single CSS node with name iconview and style class .view.
/// For rubberband selection, a subnode with name rubberband is used.
open class IconView: Widget, IconViewProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconView>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconView>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconView>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconView>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconView`.
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconView>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconViewProtocol`
    /// Will retain `GtkIconView`.
    /// - Parameter other: an instance of a related type that implements `IconViewProtocol`
    @inlinable public init<T: IconViewProtocol>(iconView other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkIconView` widget
    @inlinable public init() {
        let rv = gtk_icon_view_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable public init<CellAreaT: CellAreaProtocol>(area: CellAreaT) {
        let rv = gtk_icon_view_new_with_area(area.cell_area_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable public init<TreeModelT: TreeModelProtocol>(model: TreeModelT) {
        let rv = gtk_icon_view_new_with_model(model.tree_model_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable public static func newWith<CellAreaT: CellAreaProtocol>(area: CellAreaT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_icon_view_new_with_area(area.cell_area_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable public static func newWith<TreeModelT: TreeModelProtocol>(model: TreeModelT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_icon_view_new_with_model(model.tree_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum IconViewPropertyName: String, PropertyNameProtocol {
    /// The activate-on-single-click property specifies whether the "item-activated" signal
    /// will be emitted after a single click.
    case activateOnSingleClick = "activate-on-single-click"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The `GtkCellArea` used to layout cell renderers for this view.
    /// 
    /// If no area is specified when creating the icon view with `gtk_icon_view_new_with_area()`
    /// a `GtkCellAreaBox` will be used.
    case cellArea = "cell-area"
    /// The column-spacing property specifies the space which is inserted between
    /// the columns of the icon view.
    case columnSpacing = "column-spacing"
    /// The columns property contains the number of the columns in which the
    /// items should be displayed. If it is -1, the number of columns will
    /// be chosen automatically to fill the available area.
    case columns = "columns"
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
    /// The item-orientation property specifies how the cells (i.e. the icon and
    /// the text) of the item are positioned relative to each other.
    case itemOrientation = "item-orientation"
    /// The item-padding property specifies the padding around each
    /// of the icon view's item.
    case itemPadding = "item-padding"
    /// The item-width property specifies the width to use for each item.
    /// If it is set to -1, the icon view will automatically determine a
    /// suitable item size.
    case itemWidth = "item-width"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// The margin property specifies the space which is inserted
    /// at the edges of the icon view.
    case margin = "margin"
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
    /// The `markup-column` property contains the number of the model column
    /// containing markup information to be displayed. The markup column must be
    /// of type `G_TYPE_STRING`. If this property and the :text-column property
    /// are both set to column numbers, it overrides the text column.
    /// If both are set to -1, no texts are displayed.
    case markupColumn = "markup-column"
    case model = "model"
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
    /// The `pixbuf-column` property contains the number of the model column
    /// containing the pixbufs which are displayed. The pixbuf column must be
    /// of type `GDK_TYPE_PIXBUF`. Setting this property to -1 turns off the
    /// display of pixbufs.
    case pixbufColumn = "pixbuf-column"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The reorderable property specifies if the items can be reordered
    /// by DND.
    case reorderable = "reorderable"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The row-spacing property specifies the space which is inserted between
    /// the rows of the icon view.
    case rowSpacing = "row-spacing"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// The `selection-mode` property specifies the selection mode of
    /// icon view. If the mode is `GTK_SELECTION_MULTIPLE`, rubberband selection
    /// is enabled, for the other modes, only keyboard selection is possible.
    case selectionMode = "selection-mode"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// The spacing property specifies the space which is inserted between
    /// the cells (i.e. the icon and the text) of an item.
    case spacing = "spacing"
    /// The `text-column` property contains the number of the model column
    /// containing the texts which are displayed. The text column must be
    /// of type `G_TYPE_STRING`. If this property and the :markup-column
    /// property are both set to -1, no texts are displayed.
    case textColumn = "text-column"
    case tooltipColumn = "tooltip-column"
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

public extension IconViewProtocol {
    /// Bind a `IconViewPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IconViewPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IconView property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IconViewPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IconView property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IconViewPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IconViewSignalName: String, SignalNameProtocol {
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user activates the currently
    /// focused item.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control activation
    /// programmatically.
    /// 
    /// The default bindings for this signal are Space, Return and Enter.
    case activateCursorItem = "activate-cursor-item"
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
    /// The `item-activated` signal is emitted when the method
    /// `gtk_icon_view_item_activated()` is called, when the user double
    /// clicks an item with the "activate-on-single-click" property set
    /// to `false`, or when the user single clicks an item when the
    /// "activate-on-single-click" property set to `true`. It is also
    /// emitted when a non-editable item is selected and one of the keys:
    /// Space, Return or Enter is pressed.
    case itemActivated = "item-activated"
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
    /// The `move-cursor` signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user initiates a cursor movement.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal include
    /// - Arrow keys which move by individual steps
    /// - Home/End keys which move to the first/last item
    /// - PageUp/PageDown which move by "pages"
    /// All of these will extend the selection when combined with
    /// the Shift modifier.
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
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user selects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-a.
    case selectAll = "select-all"
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user selects the item that is currently
    /// focused.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal.
    case selectCursorItem = "select-cursor-item"
    /// The `selection-changed` signal is emitted when the selection
    /// (i.e. the set of selected items) changes.
    case selectionChanged = "selection-changed"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user toggles whether the currently
    /// focused item is selected or not. The exact effect of this
    /// depend on the selection mode.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal is Ctrl-Space.
    case toggleCursorItem = "toggle-cursor-item"
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
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user unselects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-Shift-a.
    case unselectAll = "unselect-all"
    /// The activate-on-single-click property specifies whether the "item-activated" signal
    /// will be emitted after a single click.
    case notifyActivateOnSingleClick = "notify::activate-on-single-click"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// The `GtkCellArea` used to layout cell renderers for this view.
    /// 
    /// If no area is specified when creating the icon view with `gtk_icon_view_new_with_area()`
    /// a `GtkCellAreaBox` will be used.
    case notifyCellArea = "notify::cell-area"
    /// The column-spacing property specifies the space which is inserted between
    /// the columns of the icon view.
    case notifyColumnSpacing = "notify::column-spacing"
    /// The columns property contains the number of the columns in which the
    /// items should be displayed. If it is -1, the number of columns will
    /// be chosen automatically to fill the available area.
    case notifyColumns = "notify::columns"
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
    /// The item-orientation property specifies how the cells (i.e. the icon and
    /// the text) of the item are positioned relative to each other.
    case notifyItemOrientation = "notify::item-orientation"
    /// The item-padding property specifies the padding around each
    /// of the icon view's item.
    case notifyItemPadding = "notify::item-padding"
    /// The item-width property specifies the width to use for each item.
    /// If it is set to -1, the icon view will automatically determine a
    /// suitable item size.
    case notifyItemWidth = "notify::item-width"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// The margin property specifies the space which is inserted
    /// at the edges of the icon view.
    case notifyMargin = "notify::margin"
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
    /// The `markup-column` property contains the number of the model column
    /// containing markup information to be displayed. The markup column must be
    /// of type `G_TYPE_STRING`. If this property and the :text-column property
    /// are both set to column numbers, it overrides the text column.
    /// If both are set to -1, no texts are displayed.
    case notifyMarkupColumn = "notify::markup-column"
    case notifyModel = "notify::model"
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
    /// The `pixbuf-column` property contains the number of the model column
    /// containing the pixbufs which are displayed. The pixbuf column must be
    /// of type `GDK_TYPE_PIXBUF`. Setting this property to -1 turns off the
    /// display of pixbufs.
    case notifyPixbufColumn = "notify::pixbuf-column"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The reorderable property specifies if the items can be reordered
    /// by DND.
    case notifyReorderable = "notify::reorderable"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The row-spacing property specifies the space which is inserted between
    /// the rows of the icon view.
    case notifyRowSpacing = "notify::row-spacing"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// The `selection-mode` property specifies the selection mode of
    /// icon view. If the mode is `GTK_SELECTION_MULTIPLE`, rubberband selection
    /// is enabled, for the other modes, only keyboard selection is possible.
    case notifySelectionMode = "notify::selection-mode"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// The spacing property specifies the space which is inserted between
    /// the cells (i.e. the icon and the text) of an item.
    case notifySpacing = "notify::spacing"
    /// The `text-column` property contains the number of the model column
    /// containing the texts which are displayed. The text column must be
    /// of type `G_TYPE_STRING`. If this property and the :markup-column
    /// property are both set to -1, no texts are displayed.
    case notifyTextColumn = "notify::text-column"
    case notifyTooltipColumn = "notify::tooltip-column"
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

// MARK: IconView signals
public extension IconViewProtocol {
    /// Connect a Swift signal handler to the given, typed `IconViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconViewSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `IconViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconViewSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user activates the currently
    /// focused item.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control activation
    /// programmatically.
    /// 
    /// The default bindings for this signal are Space, Return and Enter.
    /// - Note: This represents the underlying `activate-cursor-item` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateCursorItem` signal is emitted
    @discardableResult @inlinable func onActivateCursorItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IconViewRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .activateCursorItem,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-cursor-item` signal for using the `connect(signal:)` methods
    static var activateCursorItemSignal: IconViewSignalName { .activateCursorItem }
    
    /// The `item-activated` signal is emitted when the method
    /// `gtk_icon_view_item_activated()` is called, when the user double
    /// clicks an item with the "activate-on-single-click" property set
    /// to `false`, or when the user single clicks an item when the
    /// "activate-on-single-click" property set to `true`. It is also
    /// emitted when a non-editable item is selected and one of the keys:
    /// Space, Return or Enter is pressed.
    /// - Note: This represents the underlying `item-activated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter path: the `GtkTreePath` for the activated item
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `itemActivated` signal is emitted
    @discardableResult @inlinable func onItemActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ path: TreePathRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, TreePathRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), TreePathRef(raw: arg1))
            return output
        }
        return connect(
            signal: .itemActivated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `item-activated` signal for using the `connect(signal:)` methods
    static var itemActivatedSignal: IconViewSignalName { .itemActivated }
    
    /// The `move-cursor` signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user initiates a cursor movement.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal include
    /// - Arrow keys which move by individual steps
    /// - Home/End keys which move to the first/last item
    /// - PageUp/PageDown which move by "pages"
    /// All of these will extend the selection when combined with
    /// the Shift modifier.
    /// - Note: This represents the underlying `move-cursor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: the granularity of the move, as a `GtkMovementStep`
    /// - Parameter count: the number of `step` units to move
    /// - Parameter extend: whether to extend the selection
    /// - Parameter modify: whether to modify the selection
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `moveCursor` signal is emitted
    @discardableResult @inlinable func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ step: MovementStep, _ count: Int, _ extend: Bool, _ modify: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder5<IconViewRef, MovementStep, Int, Bool, Bool, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gboolean, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, arg4, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IconViewRef(raw: unownedSelf), MovementStep(arg1), Int(arg2), ((arg3) != 0), ((arg4) != 0))
            return gboolean((output) ? 1 : 0)
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
    static var moveCursorSignal: IconViewSignalName { .moveCursor }
    
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user selects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-a.
    /// - Note: This represents the underlying `select-all` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectAll` signal is emitted
    @discardableResult @inlinable func onSelectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
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
    static var selectAllSignal: IconViewSignalName { .selectAll }
    
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user selects the item that is currently
    /// focused.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal.
    /// - Note: This represents the underlying `select-cursor-item` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectCursorItem` signal is emitted
    @discardableResult @inlinable func onSelectCursorItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .selectCursorItem,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `select-cursor-item` signal for using the `connect(signal:)` methods
    static var selectCursorItemSignal: IconViewSignalName { .selectCursorItem }
    
    /// The `selection-changed` signal is emitted when the selection
    /// (i.e. the set of selected items) changes.
    /// - Note: This represents the underlying `selection-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectionChanged` signal is emitted
    @discardableResult @inlinable func onSelectionChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .selectionChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `selection-changed` signal for using the `connect(signal:)` methods
    static var selectionChangedSignal: IconViewSignalName { .selectionChanged }
    
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user toggles whether the currently
    /// focused item is selected or not. The exact effect of this
    /// depend on the selection mode.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal is Ctrl-Space.
    /// - Note: This represents the underlying `toggle-cursor-item` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `toggleCursorItem` signal is emitted
    @discardableResult @inlinable func onToggleCursorItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .toggleCursorItem,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `toggle-cursor-item` signal for using the `connect(signal:)` methods
    static var toggleCursorItemSignal: IconViewSignalName { .toggleCursorItem }
    
    /// A [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user unselects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-Shift-a.
    /// - Note: This represents the underlying `unselect-all` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `unselectAll` signal is emitted
    @discardableResult @inlinable func onUnselectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
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
    static var unselectAllSignal: IconViewSignalName { .unselectAll }
    
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
    @discardableResult @inlinable func onNotifyActivateOnSingleClick(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyActivateOnSingleClickSignal: IconViewSignalName { .notifyActivateOnSingleClick }
    
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
    /// - Note: This represents the underlying `notify::cell-area` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCellArea` signal is emitted
    @discardableResult @inlinable func onNotifyCellArea(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCellArea,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::cell-area` signal for using the `connect(signal:)` methods
    static var notifyCellAreaSignal: IconViewSignalName { .notifyCellArea }
    
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
    /// - Note: This represents the underlying `notify::column-spacing` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyColumnSpacing` signal is emitted
    @discardableResult @inlinable func onNotifyColumnSpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyColumnSpacing,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::column-spacing` signal for using the `connect(signal:)` methods
    static var notifyColumnSpacingSignal: IconViewSignalName { .notifyColumnSpacing }
    
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
    /// - Note: This represents the underlying `notify::columns` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyColumns` signal is emitted
    @discardableResult @inlinable func onNotifyColumns(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyColumns,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::columns` signal for using the `connect(signal:)` methods
    static var notifyColumnsSignal: IconViewSignalName { .notifyColumns }
    
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
    /// - Note: This represents the underlying `notify::item-orientation` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyItemOrientation` signal is emitted
    @discardableResult @inlinable func onNotifyItemOrientation(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyItemOrientation,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::item-orientation` signal for using the `connect(signal:)` methods
    static var notifyItemOrientationSignal: IconViewSignalName { .notifyItemOrientation }
    
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
    /// - Note: This represents the underlying `notify::item-padding` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyItemPadding` signal is emitted
    @discardableResult @inlinable func onNotifyItemPadding(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyItemPadding,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::item-padding` signal for using the `connect(signal:)` methods
    static var notifyItemPaddingSignal: IconViewSignalName { .notifyItemPadding }
    
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
    /// - Note: This represents the underlying `notify::item-width` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyItemWidth` signal is emitted
    @discardableResult @inlinable func onNotifyItemWidth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyItemWidth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::item-width` signal for using the `connect(signal:)` methods
    static var notifyItemWidthSignal: IconViewSignalName { .notifyItemWidth }
    
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
    /// - Note: This represents the underlying `notify::margin` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMargin` signal is emitted
    @discardableResult @inlinable func onNotifyMargin(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMargin,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::margin` signal for using the `connect(signal:)` methods
    static var notifyMarginSignal: IconViewSignalName { .notifyMargin }
    
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
    /// - Note: This represents the underlying `notify::markup-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMarkupColumn` signal is emitted
    @discardableResult @inlinable func onNotifyMarkupColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMarkupColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::markup-column` signal for using the `connect(signal:)` methods
    static var notifyMarkupColumnSignal: IconViewSignalName { .notifyMarkupColumn }
    
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
    @discardableResult @inlinable func onNotifyModel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyModelSignal: IconViewSignalName { .notifyModel }
    
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
    /// - Note: This represents the underlying `notify::pixbuf-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPixbufColumn` signal is emitted
    @discardableResult @inlinable func onNotifyPixbufColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPixbufColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::pixbuf-column` signal for using the `connect(signal:)` methods
    static var notifyPixbufColumnSignal: IconViewSignalName { .notifyPixbufColumn }
    
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
    /// - Note: This represents the underlying `notify::reorderable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyReorderable` signal is emitted
    @discardableResult @inlinable func onNotifyReorderable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyReorderable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::reorderable` signal for using the `connect(signal:)` methods
    static var notifyReorderableSignal: IconViewSignalName { .notifyReorderable }
    
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
    /// - Note: This represents the underlying `notify::row-spacing` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRowSpacing` signal is emitted
    @discardableResult @inlinable func onNotifyRowSpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRowSpacing,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::row-spacing` signal for using the `connect(signal:)` methods
    static var notifyRowSpacingSignal: IconViewSignalName { .notifyRowSpacing }
    
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
    @discardableResult @inlinable func onNotifySelectionMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifySelectionModeSignal: IconViewSignalName { .notifySelectionMode }
    
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
    /// - Note: This represents the underlying `notify::spacing` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySpacing` signal is emitted
    @discardableResult @inlinable func onNotifySpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySpacing,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::spacing` signal for using the `connect(signal:)` methods
    static var notifySpacingSignal: IconViewSignalName { .notifySpacing }
    
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
    /// - Note: This represents the underlying `notify::text-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTextColumn` signal is emitted
    @discardableResult @inlinable func onNotifyTextColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTextColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::text-column` signal for using the `connect(signal:)` methods
    static var notifyTextColumnSignal: IconViewSignalName { .notifyTextColumn }
    
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
    /// - Note: This represents the underlying `notify::tooltip-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTooltipColumn` signal is emitted
    @discardableResult @inlinable func onNotifyTooltipColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTooltipColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::tooltip-column` signal for using the `connect(signal:)` methods
    static var notifyTooltipColumnSignal: IconViewSignalName { .notifyTooltipColumn }
    
}

// MARK: IconView Class: IconViewProtocol extension (methods and fields)
public extension IconViewProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconView` instance.
    @inlinable var icon_view_ptr: UnsafeMutablePointer<GtkIconView>! { return ptr?.assumingMemoryBound(to: GtkIconView.self) }

    /// Creates a `cairo_surface_t` representation of the item at `path`.
    /// This image is used for a drag icon.
    @inlinable func createDragIcon<TreePathT: TreePathProtocol>(path: TreePathT) -> Gdk.PaintableRef! {
        let rv = Gdk.PaintableRef(gtk_icon_view_create_drag_icon(icon_view_ptr, path.tree_path_ptr))
        return rv
    }

    /// Turns `icon_view` into a drop destination for automatic DND. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func enableModelDragDest<ContentFormatsT: Gdk.ContentFormatsProtocol>(formats: ContentFormatsT, actions: Gdk.DragAction) {
        gtk_icon_view_enable_model_drag_dest(icon_view_ptr, formats.content_formats_ptr, actions.value)
    
    }

    /// Turns `icon_view` into a drag source for automatic DND. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func enableModelDragSource<ContentFormatsT: Gdk.ContentFormatsProtocol>(startButtonMask: Gdk.ModifierType, formats: ContentFormatsT, actions: Gdk.DragAction) {
        gtk_icon_view_enable_model_drag_source(icon_view_ptr, startButtonMask.value, formats.content_formats_ptr, actions.value)
    
    }

    /// Gets the setting set by `gtk_icon_view_set_activate_on_single_click()`.
    @inlinable func getActivateOnSingleClick() -> Bool {
        let rv = ((gtk_icon_view_get_activate_on_single_click(icon_view_ptr)) != 0)
        return rv
    }

    /// Fills the bounding rectangle in widget coordinates for the cell specified by
    /// `path` and `cell`. If `cell` is `nil` the main cell area is used.
    /// 
    /// This function is only valid if `icon_view` is realized.
    @inlinable func getCellRect<RectangleT: Gdk.RectangleProtocol, TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererRef? = nil, rect: RectangleT) -> Bool {
        let rv = ((gtk_icon_view_get_cell_rect(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, rect.rectangle_ptr)) != 0)
        return rv
    }
    /// Fills the bounding rectangle in widget coordinates for the cell specified by
    /// `path` and `cell`. If `cell` is `nil` the main cell area is used.
    /// 
    /// This function is only valid if `icon_view` is realized.
    @inlinable func getCellRect<CellRendererT: CellRendererProtocol, RectangleT: Gdk.RectangleProtocol, TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererT?, rect: RectangleT) -> Bool {
        let rv = ((gtk_icon_view_get_cell_rect(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, rect.rectangle_ptr)) != 0)
        return rv
    }

    /// Returns the value of the `column-spacing` property.
    @inlinable func getColumnSpacing() -> Int {
        let rv = Int(gtk_icon_view_get_column_spacing(icon_view_ptr))
        return rv
    }

    /// Returns the value of the `columns` property.
    @inlinable func getColumns() -> Int {
        let rv = Int(gtk_icon_view_get_columns(icon_view_ptr))
        return rv
    }

    /// Fills in `path` and `cell` with the current cursor path and cell.
    /// If the cursor isn’t currently set, then *`path` will be `nil`.
    /// If no cell currently has focus, then *`cell` will be `nil`.
    /// 
    /// The returned `GtkTreePath` must be freed with `gtk_tree_path_free()`.
    @inlinable func getCursor(path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, cell: UnsafeMutablePointer<UnsafeMutablePointer<GtkCellRenderer>?>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_cursor(icon_view_ptr, path, cell)) != 0)
        return rv
    }

    /// Determines the destination item for a given position.
    @inlinable func getDestItemAtPos(dragX: Int, dragY: Int, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, pos: UnsafeMutablePointer<GtkIconViewDropPosition>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_dest_item_at_pos(icon_view_ptr, gint(dragX), gint(dragY), path, pos)) != 0)
        return rv
    }

    /// Gets information about the item that is highlighted for feedback.
    @inlinable func getDragDestItem(path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, pos: UnsafeMutablePointer<GtkIconViewDropPosition>! = nil) {
        gtk_icon_view_get_drag_dest_item(icon_view_ptr, path, pos)
    
    }

    /// Gets the path and cell for the icon at the given position.
    @inlinable func getItemAtPos(x: Int, y: Int, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, cell: UnsafeMutablePointer<UnsafeMutablePointer<GtkCellRenderer>?>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_item_at_pos(icon_view_ptr, gint(x), gint(y), path, cell)) != 0)
        return rv
    }

    /// Gets the column in which the item `path` is currently
    /// displayed. Column numbers start at 0.
    @inlinable func getItemColumn<TreePathT: TreePathProtocol>(path: TreePathT) -> Int {
        let rv = Int(gtk_icon_view_get_item_column(icon_view_ptr, path.tree_path_ptr))
        return rv
    }

    /// Returns the value of the `item-orientation` property which determines
    /// whether the labels are drawn beside the icons instead of below.
    @inlinable func getItemOrientation() -> GtkOrientation {
        let rv = gtk_icon_view_get_item_orientation(icon_view_ptr)
        return rv
    }

    /// Returns the value of the `item-padding` property.
    @inlinable func getItemPadding() -> Int {
        let rv = Int(gtk_icon_view_get_item_padding(icon_view_ptr))
        return rv
    }

    /// Gets the row in which the item `path` is currently
    /// displayed. Row numbers start at 0.
    @inlinable func getItemRow<TreePathT: TreePathProtocol>(path: TreePathT) -> Int {
        let rv = Int(gtk_icon_view_get_item_row(icon_view_ptr, path.tree_path_ptr))
        return rv
    }

    /// Returns the value of the `item-width` property.
    @inlinable func getItemWidth() -> Int {
        let rv = Int(gtk_icon_view_get_item_width(icon_view_ptr))
        return rv
    }

    /// Returns the value of the `margin` property.
    @inlinable func getMargin() -> Int {
        let rv = Int(gtk_icon_view_get_margin(icon_view_ptr))
        return rv
    }

    /// Returns the column with markup text for `icon_view`.
    @inlinable func getMarkupColumn() -> Int {
        let rv = Int(gtk_icon_view_get_markup_column(icon_view_ptr))
        return rv
    }

    /// Returns the model the `GtkIconView` is based on.  Returns `nil` if the
    /// model is unset.
    @inlinable func getModel() -> TreeModelRef! {
        let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_icon_view_get_model(icon_view_ptr)))
        return rv
    }

    /// Gets the path for the icon at the given position.
    @inlinable func getPathAtPos(x: Int, y: Int) -> TreePathRef! {
        let rv = TreePathRef(gconstpointer: gconstpointer(gtk_icon_view_get_path_at_pos(icon_view_ptr, gint(x), gint(y))))
        return rv
    }

    /// Returns the column with pixbufs for `icon_view`.
    @inlinable func getPixbufColumn() -> Int {
        let rv = Int(gtk_icon_view_get_pixbuf_column(icon_view_ptr))
        return rv
    }

    /// Retrieves whether the user can reorder the list via drag-and-drop.
    /// See `gtk_icon_view_set_reorderable()`.
    @inlinable func getReorderable() -> Bool {
        let rv = ((gtk_icon_view_get_reorderable(icon_view_ptr)) != 0)
        return rv
    }

    /// Returns the value of the `row-spacing` property.
    @inlinable func getRowSpacing() -> Int {
        let rv = Int(gtk_icon_view_get_row_spacing(icon_view_ptr))
        return rv
    }

    /// Creates a list of paths of all selected items. Additionally, if you are
    /// planning on modifying the model after calling this function, you may
    /// want to convert the returned list into a list of `GtkTreeRowReferences`.
    /// To do this, you can use `gtk_tree_row_reference_new()`.
    /// 
    /// To free the return value, use:
    /// (C Language Example):
    /// ```C
    /// g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
    /// ```
    /// 
    @inlinable func getSelectedItems() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_icon_view_get_selected_items(icon_view_ptr))
        return rv
    }

    /// Gets the selection mode of the `icon_view`.
    @inlinable func getSelectionMode() -> GtkSelectionMode {
        let rv = gtk_icon_view_get_selection_mode(icon_view_ptr)
        return rv
    }

    /// Returns the value of the `spacing` property.
    @inlinable func getSpacing() -> Int {
        let rv = Int(gtk_icon_view_get_spacing(icon_view_ptr))
        return rv
    }

    /// Returns the column with text for `icon_view`.
    @inlinable func getTextColumn() -> Int {
        let rv = Int(gtk_icon_view_get_text_column(icon_view_ptr))
        return rv
    }

    /// Returns the column of `icon_view`’s model which is being used for
    /// displaying tooltips on `icon_view`’s rows.
    @inlinable func getTooltipColumn() -> Int {
        let rv = Int(gtk_icon_view_get_tooltip_column(icon_view_ptr))
        return rv
    }

    /// This function is supposed to be used in a `GtkWidget::query-tooltip`
    /// signal handler for `GtkIconView`.  The `x`, `y` and `keyboard_tip` values
    /// which are received in the signal handler, should be passed to this
    /// function without modification.
    /// 
    /// The return value indicates whether there is an icon view item at the given
    /// coordinates (`true`) or not (`false`) for mouse tooltips. For keyboard
    /// tooltips the item returned will be the cursor item. When `true`, then any of
    /// `model`, `path` and `iter` which have been provided will be set to point to
    /// that row and the corresponding model.
    @inlinable func getTooltipContext(x: Int, y: Int, keyboardTip: Bool, model: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreeModel>?>! = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, iter: TreeIterRef? = nil) -> Bool {
        let rv = ((gtk_icon_view_get_tooltip_context(icon_view_ptr, gint(x), gint(y), gboolean((keyboardTip) ? 1 : 0), model, path, iter?.tree_iter_ptr)) != 0)
        return rv
    }
    /// This function is supposed to be used in a `GtkWidget::query-tooltip`
    /// signal handler for `GtkIconView`.  The `x`, `y` and `keyboard_tip` values
    /// which are received in the signal handler, should be passed to this
    /// function without modification.
    /// 
    /// The return value indicates whether there is an icon view item at the given
    /// coordinates (`true`) or not (`false`) for mouse tooltips. For keyboard
    /// tooltips the item returned will be the cursor item. When `true`, then any of
    /// `model`, `path` and `iter` which have been provided will be set to point to
    /// that row and the corresponding model.
    @inlinable func getTooltipContext<TreeIterT: TreeIterProtocol>(x: Int, y: Int, keyboardTip: Bool, model: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreeModel>?>! = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, iter: TreeIterT?) -> Bool {
        let rv = ((gtk_icon_view_get_tooltip_context(icon_view_ptr, gint(x), gint(y), gboolean((keyboardTip) ? 1 : 0), model, path, iter?.tree_iter_ptr)) != 0)
        return rv
    }

    /// Sets `start_path` and `end_path` to be the first and last visible path.
    /// Note that there may be invisible paths in between.
    /// 
    /// Both paths should be freed with `gtk_tree_path_free()` after use.
    @inlinable func getVisibleRange(startPath: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, endPath: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_visible_range(icon_view_ptr, startPath, endPath)) != 0)
        return rv
    }

    /// Activates the item determined by `path`.
    @inlinable func itemActivated<TreePathT: TreePathProtocol>(path: TreePathT) {
        gtk_icon_view_item_activated(icon_view_ptr, path.tree_path_ptr)
    
    }

    /// Returns `true` if the icon pointed to by `path` is currently
    /// selected. If `path` does not point to a valid location, `false` is returned.
    @inlinable func pathIsSelected<TreePathT: TreePathProtocol>(path: TreePathT) -> Bool {
        let rv = ((gtk_icon_view_path_is_selected(icon_view_ptr, path.tree_path_ptr)) != 0)
        return rv
    }

    /// Moves the alignments of `icon_view` to the position specified by `path`.
    /// `row_align` determines where the row is placed, and `col_align` determines
    /// where `column` is placed.  Both are expected to be between 0.0 and 1.0.
    /// 0.0 means left/top alignment, 1.0 means right/bottom alignment, 0.5 means
    /// center.
    /// 
    /// If `use_align` is `false`, then the alignment arguments are ignored, and the
    /// tree does the minimum amount of work to scroll the item onto the screen.
    /// This means that the item will be scrolled to the edge closest to its current
    /// position.  If the item is currently visible on the screen, nothing is done.
    /// 
    /// This function only works if the model is set, and `path` is a valid row on
    /// the model. If the model changes before the `icon_view` is realized, the
    /// centered path will be modified to reflect this change.
    @inlinable func scrollTo<TreePathT: TreePathProtocol>(path: TreePathT, useAlign: Bool, rowAlign: CFloat, colAlign: CFloat) {
        gtk_icon_view_scroll_to_path(icon_view_ptr, path.tree_path_ptr, gboolean((useAlign) ? 1 : 0), rowAlign, colAlign)
    
    }

    /// Selects all the icons. `icon_view` must has its selection mode set
    /// to `GTK_SELECTION_MULTIPLE`.
    @inlinable func selectAll() {
        gtk_icon_view_select_all(icon_view_ptr)
    
    }

    /// Selects the row at `path`.
    @inlinable func select<TreePathT: TreePathProtocol>(path: TreePathT) {
        gtk_icon_view_select_path(icon_view_ptr, path.tree_path_ptr)
    
    }

    /// Calls a function for each selected icon. Note that the model or
    /// selection cannot be modified from within this function.
    @inlinable func selectedForeach(`func`: GtkIconViewForeachFunc?, data: gpointer! = nil) {
        gtk_icon_view_selected_foreach(icon_view_ptr, `func`, data)
    
    }

    /// Causes the `GtkIconView::item-activated` signal to be emitted on
    /// a single click instead of a double click.
    @inlinable func setActivateOnSingleClick(single: Bool) {
        gtk_icon_view_set_activate_on_single_click(icon_view_ptr, gboolean((single) ? 1 : 0))
    
    }

    /// Sets the `column-spacing` property which specifies the space
    /// which is inserted between the columns of the icon view.
    @inlinable func set(columnSpacing: Int) {
        gtk_icon_view_set_column_spacing(icon_view_ptr, gint(columnSpacing))
    
    }

    /// Sets the `columns` property which determines in how
    /// many columns the icons are arranged. If `columns` is
    /// -1, the number of columns will be chosen automatically
    /// to fill the available area.
    @inlinable func set(columns: Int) {
        gtk_icon_view_set_columns(icon_view_ptr, gint(columns))
    
    }

    /// Sets the current keyboard focus to be at `path`, and selects it.  This is
    /// useful when you want to focus the user’s attention on a particular item.
    /// If `cell` is not `nil`, then focus is given to the cell specified by
    /// it. Additionally, if `start_editing` is `true`, then editing should be
    /// started in the specified cell.
    /// 
    /// This function is often followed by `gtk_widget_grab_focus
    /// (icon_view)` in order to give keyboard focus to the widget.
    /// Please note that editing can only happen when the widget is realized.
    @inlinable func setCursor<TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererRef? = nil, startEditing: Bool) {
        gtk_icon_view_set_cursor(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, gboolean((startEditing) ? 1 : 0))
    
    }
    /// Sets the current keyboard focus to be at `path`, and selects it.  This is
    /// useful when you want to focus the user’s attention on a particular item.
    /// If `cell` is not `nil`, then focus is given to the cell specified by
    /// it. Additionally, if `start_editing` is `true`, then editing should be
    /// started in the specified cell.
    /// 
    /// This function is often followed by `gtk_widget_grab_focus
    /// (icon_view)` in order to give keyboard focus to the widget.
    /// Please note that editing can only happen when the widget is realized.
    @inlinable func setCursor<CellRendererT: CellRendererProtocol, TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererT?, startEditing: Bool) {
        gtk_icon_view_set_cursor(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, gboolean((startEditing) ? 1 : 0))
    
    }

    /// Sets the item that is highlighted for feedback.
    @inlinable func setDragDestItem(path: TreePathRef? = nil, pos: GtkIconViewDropPosition) {
        gtk_icon_view_set_drag_dest_item(icon_view_ptr, path?.tree_path_ptr, pos)
    
    }
    /// Sets the item that is highlighted for feedback.
    @inlinable func setDragDestItem<TreePathT: TreePathProtocol>(path: TreePathT?, pos: GtkIconViewDropPosition) {
        gtk_icon_view_set_drag_dest_item(icon_view_ptr, path?.tree_path_ptr, pos)
    
    }

    /// Sets the `item-orientation` property which determines whether the labels
    /// are drawn beside the icons instead of below.
    @inlinable func setItem(orientation: GtkOrientation) {
        gtk_icon_view_set_item_orientation(icon_view_ptr, orientation)
    
    }

    /// Sets the `GtkIconView:item-padding` property which specifies the padding
    /// around each of the icon view’s items.
    @inlinable func set(itemPadding: Int) {
        gtk_icon_view_set_item_padding(icon_view_ptr, gint(itemPadding))
    
    }

    /// Sets the `item-width` property which specifies the width
    /// to use for each item. If it is set to -1, the icon view will
    /// automatically determine a suitable item size.
    @inlinable func set(itemWidth: Int) {
        gtk_icon_view_set_item_width(icon_view_ptr, gint(itemWidth))
    
    }

    /// Sets the `margin` property which specifies the space
    /// which is inserted at the top, bottom, left and right
    /// of the icon view.
    @inlinable func set(margin: Int) {
        gtk_icon_view_set_margin(icon_view_ptr, gint(margin))
    
    }

    /// Sets the column with markup information for `icon_view` to be
    /// `column`. The markup column must be of type `G_TYPE_STRING`.
    /// If the markup column is set to something, it overrides
    /// the text column set by `gtk_icon_view_set_text_column()`.
    @inlinable func setMarkup(column: Int) {
        gtk_icon_view_set_markup_column(icon_view_ptr, gint(column))
    
    }

    /// Sets the model for a `GtkIconView`.
    /// If the `icon_view` already has a model set, it will remove
    /// it before setting the new model.  If `model` is `nil`, then
    /// it will unset the old model.
    @inlinable func set(model: TreeModelRef? = nil) {
        gtk_icon_view_set_model(icon_view_ptr, model?.tree_model_ptr)
    
    }
    /// Sets the model for a `GtkIconView`.
    /// If the `icon_view` already has a model set, it will remove
    /// it before setting the new model.  If `model` is `nil`, then
    /// it will unset the old model.
    @inlinable func set<TreeModelT: TreeModelProtocol>(model: TreeModelT?) {
        gtk_icon_view_set_model(icon_view_ptr, model?.tree_model_ptr)
    
    }

    /// Sets the column with pixbufs for `icon_view` to be `column`. The pixbuf
    /// column must be of type `GDK_TYPE_PIXBUF`
    @inlinable func setPixbuf(column: Int) {
        gtk_icon_view_set_pixbuf_column(icon_view_ptr, gint(column))
    
    }

    /// This function is a convenience function to allow you to reorder models that
    /// support the `GtkTreeDragSourceIface` and the `GtkTreeDragDestIface`.  Both
    /// `GtkTreeStore` and `GtkListStore` support these.  If `reorderable` is `true`, then
    /// the user can reorder the model by dragging and dropping rows.  The
    /// developer can listen to these changes by connecting to the model's
    /// row_inserted and row_deleted signals. The reordering is implemented by setting up
    /// the icon view as a drag source and destination. Therefore, drag and
    /// drop can not be used in a reorderable view for any other purpose.
    /// 
    /// This function does not give you any degree of control over the order -- any
    /// reordering is allowed.  If more control is needed, you should probably
    /// handle drag and drop manually.
    @inlinable func set(reorderable: Bool) {
        gtk_icon_view_set_reorderable(icon_view_ptr, gboolean((reorderable) ? 1 : 0))
    
    }

    /// Sets the `row-spacing` property which specifies the space
    /// which is inserted between the rows of the icon view.
    @inlinable func set(rowSpacing: Int) {
        gtk_icon_view_set_row_spacing(icon_view_ptr, gint(rowSpacing))
    
    }

    /// Sets the selection mode of the `icon_view`.
    @inlinable func setSelection(mode: GtkSelectionMode) {
        gtk_icon_view_set_selection_mode(icon_view_ptr, mode)
    
    }

    /// Sets the `spacing` property which specifies the space
    /// which is inserted between the cells (i.e. the icon and
    /// the text) of an item.
    @inlinable func set(spacing: Int) {
        gtk_icon_view_set_spacing(icon_view_ptr, gint(spacing))
    
    }

    /// Sets the column with text for `icon_view` to be `column`. The text
    /// column must be of type `G_TYPE_STRING`.
    @inlinable func setText(column: Int) {
        gtk_icon_view_set_text_column(icon_view_ptr, gint(column))
    
    }

    /// Sets the tip area of `tooltip` to the area which `cell` occupies in
    /// the item pointed to by `path`. See also `gtk_tooltip_set_tip_area()`.
    /// 
    /// See also `gtk_icon_view_set_tooltip_column()` for a simpler alternative.
    @inlinable func setTooltipCell<TooltipT: TooltipProtocol, TreePathT: TreePathProtocol>(tooltip: TooltipT, path: TreePathT, cell: CellRendererRef? = nil) {
        gtk_icon_view_set_tooltip_cell(icon_view_ptr, tooltip.tooltip_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr)
    
    }
    /// Sets the tip area of `tooltip` to the area which `cell` occupies in
    /// the item pointed to by `path`. See also `gtk_tooltip_set_tip_area()`.
    /// 
    /// See also `gtk_icon_view_set_tooltip_column()` for a simpler alternative.
    @inlinable func setTooltipCell<CellRendererT: CellRendererProtocol, TooltipT: TooltipProtocol, TreePathT: TreePathProtocol>(tooltip: TooltipT, path: TreePathT, cell: CellRendererT?) {
        gtk_icon_view_set_tooltip_cell(icon_view_ptr, tooltip.tooltip_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr)
    
    }

    /// If you only plan to have simple (text-only) tooltips on full items, you
    /// can use this function to have `GtkIconView` handle these automatically
    /// for you. `column` should be set to the column in `icon_view`’s model
    /// containing the tooltip texts, or -1 to disable this feature.
    /// 
    /// When enabled, `GtkWidget:has-tooltip` will be set to `true` and
    /// `icon_view` will connect a `GtkWidget::query-tooltip` signal handler.
    /// 
    /// Note that the signal handler sets the text with `gtk_tooltip_set_markup()`,
    /// so &, &lt;, etc have to be escaped in the text.
    @inlinable func setTooltip(column: Int) {
        gtk_icon_view_set_tooltip_column(icon_view_ptr, gint(column))
    
    }

    /// Sets the tip area of `tooltip` to be the area covered by the item at `path`.
    /// See also `gtk_icon_view_set_tooltip_column()` for a simpler alternative.
    /// See also `gtk_tooltip_set_tip_area()`.
    @inlinable func setTooltipItem<TooltipT: TooltipProtocol, TreePathT: TreePathProtocol>(tooltip: TooltipT, path: TreePathT) {
        gtk_icon_view_set_tooltip_item(icon_view_ptr, tooltip.tooltip_ptr, path.tree_path_ptr)
    
    }

    /// Unselects all the icons.
    @inlinable func unselectAll() {
        gtk_icon_view_unselect_all(icon_view_ptr)
    
    }

    /// Unselects the row at `path`.
    @inlinable func unselect<TreePathT: TreePathProtocol>(path: TreePathT) {
        gtk_icon_view_unselect_path(icon_view_ptr, path.tree_path_ptr)
    
    }

    /// Undoes the effect of `gtk_icon_view_enable_model_drag_dest()`. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func unsetModelDragDest() {
        gtk_icon_view_unset_model_drag_dest(icon_view_ptr)
    
    }

    /// Undoes the effect of `gtk_icon_view_enable_model_drag_source()`. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func unsetModelDragSource() {
        gtk_icon_view_unset_model_drag_source(icon_view_ptr)
    
    }
    /// Gets the setting set by `gtk_icon_view_set_activate_on_single_click()`.
    @inlinable var activateOnSingleClick: Bool {
        /// Gets the setting set by `gtk_icon_view_set_activate_on_single_click()`.
        get {
            let rv = ((gtk_icon_view_get_activate_on_single_click(icon_view_ptr)) != 0)
            return rv
        }
        /// Causes the `GtkIconView::item-activated` signal to be emitted on
        /// a single click instead of a double click.
        nonmutating set {
            gtk_icon_view_set_activate_on_single_click(icon_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the value of the `column-spacing` property.
    @inlinable var columnSpacing: Int {
        /// Returns the value of the `column-spacing` property.
        get {
            let rv = Int(gtk_icon_view_get_column_spacing(icon_view_ptr))
            return rv
        }
        /// Sets the `column-spacing` property which specifies the space
        /// which is inserted between the columns of the icon view.
        nonmutating set {
            gtk_icon_view_set_column_spacing(icon_view_ptr, gint(newValue))
        }
    }

    /// The columns property contains the number of the columns in which the
    /// items should be displayed. If it is -1, the number of columns will
    /// be chosen automatically to fill the available area.
    @inlinable var columns: Int {
        /// Returns the value of the `columns` property.
        get {
            let rv = Int(gtk_icon_view_get_columns(icon_view_ptr))
            return rv
        }
        /// Sets the `columns` property which determines in how
        /// many columns the icons are arranged. If `columns` is
        /// -1, the number of columns will be chosen automatically
        /// to fill the available area.
        nonmutating set {
            gtk_icon_view_set_columns(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the value of the `item-orientation` property which determines
    /// whether the labels are drawn beside the icons instead of below.
    @inlinable var itemOrientation: GtkOrientation {
        /// Returns the value of the `item-orientation` property which determines
        /// whether the labels are drawn beside the icons instead of below.
        get {
            let rv = gtk_icon_view_get_item_orientation(icon_view_ptr)
            return rv
        }
        /// Sets the `item-orientation` property which determines whether the labels
        /// are drawn beside the icons instead of below.
        nonmutating set {
            gtk_icon_view_set_item_orientation(icon_view_ptr, newValue)
        }
    }

    /// Returns the value of the `item-padding` property.
    @inlinable var itemPadding: Int {
        /// Returns the value of the `item-padding` property.
        get {
            let rv = Int(gtk_icon_view_get_item_padding(icon_view_ptr))
            return rv
        }
        /// Sets the `GtkIconView:item-padding` property which specifies the padding
        /// around each of the icon view’s items.
        nonmutating set {
            gtk_icon_view_set_item_padding(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the value of the `item-width` property.
    @inlinable var itemWidth: Int {
        /// Returns the value of the `item-width` property.
        get {
            let rv = Int(gtk_icon_view_get_item_width(icon_view_ptr))
            return rv
        }
        /// Sets the `item-width` property which specifies the width
        /// to use for each item. If it is set to -1, the icon view will
        /// automatically determine a suitable item size.
        nonmutating set {
            gtk_icon_view_set_item_width(icon_view_ptr, gint(newValue))
        }
    }

    /// The margin property specifies the space which is inserted
    /// at the edges of the icon view.
    @inlinable var margin: Int {
        /// Returns the value of the `margin` property.
        get {
            let rv = Int(gtk_icon_view_get_margin(icon_view_ptr))
            return rv
        }
        /// Sets the `margin` property which specifies the space
        /// which is inserted at the top, bottom, left and right
        /// of the icon view.
        nonmutating set {
            gtk_icon_view_set_margin(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the column with markup text for `icon_view`.
    @inlinable var markupColumn: Int {
        /// Returns the column with markup text for `icon_view`.
        get {
            let rv = Int(gtk_icon_view_get_markup_column(icon_view_ptr))
            return rv
        }
        /// Sets the column with markup information for `icon_view` to be
        /// `column`. The markup column must be of type `G_TYPE_STRING`.
        /// If the markup column is set to something, it overrides
        /// the text column set by `gtk_icon_view_set_text_column()`.
        nonmutating set {
            gtk_icon_view_set_markup_column(icon_view_ptr, gint(newValue))
        }
    }

    @inlinable var model: TreeModelRef! {
        /// Returns the model the `GtkIconView` is based on.  Returns `nil` if the
        /// model is unset.
        get {
            let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_icon_view_get_model(icon_view_ptr)))
            return rv
        }
        /// Sets the model for a `GtkIconView`.
        /// If the `icon_view` already has a model set, it will remove
        /// it before setting the new model.  If `model` is `nil`, then
        /// it will unset the old model.
        nonmutating set {
            gtk_icon_view_set_model(icon_view_ptr, UnsafeMutablePointer<GtkTreeModel>(newValue?.tree_model_ptr))
        }
    }

    /// Returns the column with pixbufs for `icon_view`.
    @inlinable var pixbufColumn: Int {
        /// Returns the column with pixbufs for `icon_view`.
        get {
            let rv = Int(gtk_icon_view_get_pixbuf_column(icon_view_ptr))
            return rv
        }
        /// Sets the column with pixbufs for `icon_view` to be `column`. The pixbuf
        /// column must be of type `GDK_TYPE_PIXBUF`
        nonmutating set {
            gtk_icon_view_set_pixbuf_column(icon_view_ptr, gint(newValue))
        }
    }

    /// The reorderable property specifies if the items can be reordered
    /// by DND.
    @inlinable var reorderable: Bool {
        /// Retrieves whether the user can reorder the list via drag-and-drop.
        /// See `gtk_icon_view_set_reorderable()`.
        get {
            let rv = ((gtk_icon_view_get_reorderable(icon_view_ptr)) != 0)
            return rv
        }
        /// This function is a convenience function to allow you to reorder models that
        /// support the `GtkTreeDragSourceIface` and the `GtkTreeDragDestIface`.  Both
        /// `GtkTreeStore` and `GtkListStore` support these.  If `reorderable` is `true`, then
        /// the user can reorder the model by dragging and dropping rows.  The
        /// developer can listen to these changes by connecting to the model's
        /// row_inserted and row_deleted signals. The reordering is implemented by setting up
        /// the icon view as a drag source and destination. Therefore, drag and
        /// drop can not be used in a reorderable view for any other purpose.
        /// 
        /// This function does not give you any degree of control over the order -- any
        /// reordering is allowed.  If more control is needed, you should probably
        /// handle drag and drop manually.
        nonmutating set {
            gtk_icon_view_set_reorderable(icon_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the value of the `row-spacing` property.
    @inlinable var rowSpacing: Int {
        /// Returns the value of the `row-spacing` property.
        get {
            let rv = Int(gtk_icon_view_get_row_spacing(icon_view_ptr))
            return rv
        }
        /// Sets the `row-spacing` property which specifies the space
        /// which is inserted between the rows of the icon view.
        nonmutating set {
            gtk_icon_view_set_row_spacing(icon_view_ptr, gint(newValue))
        }
    }

    /// Creates a list of paths of all selected items. Additionally, if you are
    /// planning on modifying the model after calling this function, you may
    /// want to convert the returned list into a list of `GtkTreeRowReferences`.
    /// To do this, you can use `gtk_tree_row_reference_new()`.
    /// 
    /// To free the return value, use:
    /// (C Language Example):
    /// ```C
    /// g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
    /// ```
    /// 
    @inlinable var selectedItems: GLib.ListRef! {
        /// Creates a list of paths of all selected items. Additionally, if you are
        /// planning on modifying the model after calling this function, you may
        /// want to convert the returned list into a list of `GtkTreeRowReferences`.
        /// To do this, you can use `gtk_tree_row_reference_new()`.
        /// 
        /// To free the return value, use:
        /// (C Language Example):
        /// ```C
        /// g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
        /// ```
        /// 
        get {
            let rv = GLib.ListRef(gtk_icon_view_get_selected_items(icon_view_ptr))
            return rv
        }
    }

    /// Gets the selection mode of the `icon_view`.
    @inlinable var selectionMode: GtkSelectionMode {
        /// Gets the selection mode of the `icon_view`.
        get {
            let rv = gtk_icon_view_get_selection_mode(icon_view_ptr)
            return rv
        }
        /// Sets the selection mode of the `icon_view`.
        nonmutating set {
            gtk_icon_view_set_selection_mode(icon_view_ptr, newValue)
        }
    }

    /// The spacing property specifies the space which is inserted between
    /// the cells (i.e. the icon and the text) of an item.
    @inlinable var spacing: Int {
        /// Returns the value of the `spacing` property.
        get {
            let rv = Int(gtk_icon_view_get_spacing(icon_view_ptr))
            return rv
        }
        /// Sets the `spacing` property which specifies the space
        /// which is inserted between the cells (i.e. the icon and
        /// the text) of an item.
        nonmutating set {
            gtk_icon_view_set_spacing(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the column with text for `icon_view`.
    @inlinable var textColumn: Int {
        /// Returns the column with text for `icon_view`.
        get {
            let rv = Int(gtk_icon_view_get_text_column(icon_view_ptr))
            return rv
        }
        /// Sets the column with text for `icon_view` to be `column`. The text
        /// column must be of type `G_TYPE_STRING`.
        nonmutating set {
            gtk_icon_view_set_text_column(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the column of `icon_view`’s model which is being used for
    /// displaying tooltips on `icon_view`’s rows.
    @inlinable var tooltipColumn: Int {
        /// Returns the column of `icon_view`’s model which is being used for
        /// displaying tooltips on `icon_view`’s rows.
        get {
            let rv = Int(gtk_icon_view_get_tooltip_column(icon_view_ptr))
            return rv
        }
        /// If you only plan to have simple (text-only) tooltips on full items, you
        /// can use this function to have `GtkIconView` handle these automatically
        /// for you. `column` should be set to the column in `icon_view`’s model
        /// containing the tooltip texts, or -1 to disable this feature.
        /// 
        /// When enabled, `GtkWidget:has-tooltip` will be set to `true` and
        /// `icon_view` will connect a `GtkWidget::query-tooltip` signal handler.
        /// 
        /// Note that the signal handler sets the text with `gtk_tooltip_set_markup()`,
        /// so &, &lt;, etc have to be escaped in the text.
        nonmutating set {
            gtk_icon_view_set_tooltip_column(icon_view_ptr, gint(newValue))
        }
    }


}



// MARK: - Image Class

/// The `ImageProtocol` protocol exposes the methods and properties of an underlying `GtkImage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Image`.
/// Alternatively, use `ImageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkImage` widget displays an image.
/// 
/// ![An example GtkImage](image.png)
/// 
/// Various kinds of object can be displayed as an image; most typically,
/// you would load a `GdkTexture` from a file, using the convenience function
/// [ctor`Gtk.Image.new_from_file`], for instance:
/// 
/// ```c
/// GtkWidget *image = gtk_image_new_from_file ("myfile.png");
/// ```
/// 
/// If the file isn’t loaded successfully, the image will contain a
/// “broken image” icon similar to that used in many web browsers.
/// 
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// [ctor`Gdk.Texture.new_from_file`], then create the `GtkImage` with
/// [ctor`Gtk.Image.new_from_paintable`].
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. See the documentation of `GResource` inside
/// GIO, for details. In this case, [property`Gtk.Image:resource`],
/// [ctor`Gtk.Image.new_from_resource`], and [method`Gtk.Image.set_from_resource`]
/// should be used.
/// 
/// `GtkImage` displays its image as an icon, with a size that is determined
/// by the application. See [class`Gtk.Picture`] if you want to show an image
/// at is actual size.
/// 
/// ## CSS nodes
/// 
/// `GtkImage` has a single CSS node with the name `image`. The style classes
/// `.normal-icons` or `.large-icons` may appear, depending on the
/// [property`Gtk.Image:icon-size`] property.
/// 
/// ## Accessibility
/// 
/// `GtkImage` uses the `GTK_ACCESSIBLE_ROLE_IMG` role.
public protocol ImageProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkImage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImage` instance.
    var image_ptr: UnsafeMutablePointer<GtkImage>! { get }

    /// Required Initialiser for types conforming to `ImageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ImageRef` type acts as a lightweight Swift reference to an underlying `GtkImage` instance.
/// It exposes methods that can operate on this data type through `ImageProtocol` conformance.
/// Use `ImageRef` only as an `unowned` reference to an existing `GtkImage` instance.
///
/// The `GtkImage` widget displays an image.
/// 
/// ![An example GtkImage](image.png)
/// 
/// Various kinds of object can be displayed as an image; most typically,
/// you would load a `GdkTexture` from a file, using the convenience function
/// [ctor`Gtk.Image.new_from_file`], for instance:
/// 
/// ```c
/// GtkWidget *image = gtk_image_new_from_file ("myfile.png");
/// ```
/// 
/// If the file isn’t loaded successfully, the image will contain a
/// “broken image” icon similar to that used in many web browsers.
/// 
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// [ctor`Gdk.Texture.new_from_file`], then create the `GtkImage` with
/// [ctor`Gtk.Image.new_from_paintable`].
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. See the documentation of `GResource` inside
/// GIO, for details. In this case, [property`Gtk.Image:resource`],
/// [ctor`Gtk.Image.new_from_resource`], and [method`Gtk.Image.set_from_resource`]
/// should be used.
/// 
/// `GtkImage` displays its image as an icon, with a size that is determined
/// by the application. See [class`Gtk.Picture`] if you want to show an image
/// at is actual size.
/// 
/// ## CSS nodes
/// 
/// `GtkImage` has a single CSS node with the name `image`. The style classes
/// `.normal-icons` or `.large-icons` may appear, depending on the
/// [property`Gtk.Image:icon-size`] property.
/// 
/// ## Accessibility
/// 
/// `GtkImage` uses the `GTK_ACCESSIBLE_ROLE_IMG` role.
public struct ImageRef: ImageProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkImage` instance.
    /// For type-safe access, use the generated, typed pointer `image_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImage>?) {
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

    /// Reference intialiser for a related type that implements `ImageProtocol`
    @inlinable init<T: ImageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ImageProtocol>(_ other: T) -> ImageRef { ImageRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GtkImage` widget.
    @inlinable init() {
        let rv = gtk_image_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying the file `filename`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage`
    /// will display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`Gdk.Texture.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the texture.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`])
    /// of the returned image is not defined, it will be whatever
    /// is appropriate for displaying the file.
    @inlinable init(file filename: UnsafePointer<CChar>!) {
        let rv = gtk_image_new_from_file(filename)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable init<IconT: GIO.IconProtocol>(gicon icon: IconT) {
        let rv = gtk_image_new_from_gicon(icon.icon_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable init(iconName iconName: UnsafePointer<CChar>? = nil) {
        let rv = gtk_image_new_from_icon_name(iconName)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying `paintable`.
    /// 
    /// The `GtkImage` does not assume a reference to the paintable; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// The `GtkImage` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable init<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) {
        let rv = gtk_image_new_from_paintable(paintable?.paintable_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// 
    /// The `GtkImage` does not assume a reference to the pixbuf; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// This is a helper for [ctor`Gtk.Image.new_from_paintable`], and you can't
    /// get back the exact pixbuf once this is called, only a texture.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf.
    /// The `GtkImage` created will not react to state changes. Should you
    /// want that, you should use [ctor`Gtk.Image.new_from_icon_name`].
    @inlinable init<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        let rv = gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`GdkPixbuf.Pixbuf.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the pixbuf.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`]) of
    /// the returned image is not defined, it will be whatever is
    /// appropriate for displaying the file.
    @inlinable init(resource resourcePath: UnsafePointer<CChar>!) {
        let rv = gtk_image_new_from_resource(resourcePath)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkImage` displaying the file `filename`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage`
    /// will display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`Gdk.Texture.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the texture.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`])
    /// of the returned image is not defined, it will be whatever
    /// is appropriate for displaying the file.
    @inlinable static func newFrom(file filename: UnsafePointer<CChar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_file(filename))) else { return nil }
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable static func newFromG<IconT: GIO.IconProtocol>(gicon icon: IconT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_gicon(icon.icon_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable static func newFrom(iconName iconName: UnsafePointer<CChar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_icon_name(iconName))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImage` displaying `paintable`.
    /// 
    /// The `GtkImage` does not assume a reference to the paintable; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// The `GtkImage` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable static func newFrom<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_paintable(paintable?.paintable_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// 
    /// The `GtkImage` does not assume a reference to the pixbuf; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// This is a helper for [ctor`Gtk.Image.new_from_paintable`], and you can't
    /// get back the exact pixbuf once this is called, only a texture.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf.
    /// The `GtkImage` created will not react to state changes. Should you
    /// want that, you should use [ctor`Gtk.Image.new_from_icon_name`].
    @inlinable static func newFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`GdkPixbuf.Pixbuf.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the pixbuf.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`]) of
    /// the returned image is not defined, it will be whatever is
    /// appropriate for displaying the file.
    @inlinable static func newFrom(resource resourcePath: UnsafePointer<CChar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_resource(resourcePath))) else { return nil }
        return rv
    }
}

/// The `Image` type acts as a reference-counted owner of an underlying `GtkImage` instance.
/// It provides the methods that can operate on this data type through `ImageProtocol` conformance.
/// Use `Image` as a strong reference or owner of a `GtkImage` instance.
///
/// The `GtkImage` widget displays an image.
/// 
/// ![An example GtkImage](image.png)
/// 
/// Various kinds of object can be displayed as an image; most typically,
/// you would load a `GdkTexture` from a file, using the convenience function
/// [ctor`Gtk.Image.new_from_file`], for instance:
/// 
/// ```c
/// GtkWidget *image = gtk_image_new_from_file ("myfile.png");
/// ```
/// 
/// If the file isn’t loaded successfully, the image will contain a
/// “broken image” icon similar to that used in many web browsers.
/// 
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// [ctor`Gdk.Texture.new_from_file`], then create the `GtkImage` with
/// [ctor`Gtk.Image.new_from_paintable`].
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. See the documentation of `GResource` inside
/// GIO, for details. In this case, [property`Gtk.Image:resource`],
/// [ctor`Gtk.Image.new_from_resource`], and [method`Gtk.Image.set_from_resource`]
/// should be used.
/// 
/// `GtkImage` displays its image as an icon, with a size that is determined
/// by the application. See [class`Gtk.Picture`] if you want to show an image
/// at is actual size.
/// 
/// ## CSS nodes
/// 
/// `GtkImage` has a single CSS node with the name `image`. The style classes
/// `.normal-icons` or `.large-icons` may appear, depending on the
/// [property`Gtk.Image:icon-size`] property.
/// 
/// ## Accessibility
/// 
/// `GtkImage` uses the `GTK_ACCESSIBLE_ROLE_IMG` role.
open class Image: Widget, ImageProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkImage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkImage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkImage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkImage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkImage`.
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkImage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ImageProtocol`
    /// Will retain `GtkImage`.
    /// - Parameter other: an instance of a related type that implements `ImageProtocol`
    @inlinable public init<T: ImageProtocol>(image other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty `GtkImage` widget.
    @inlinable public init() {
        let rv = gtk_image_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying the file `filename`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage`
    /// will display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`Gdk.Texture.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the texture.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`])
    /// of the returned image is not defined, it will be whatever
    /// is appropriate for displaying the file.
    @inlinable public init(file filename: UnsafePointer<CChar>!) {
        let rv = gtk_image_new_from_file(filename)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public init<IconT: GIO.IconProtocol>(gicon icon: IconT) {
        let rv = gtk_image_new_from_gicon(icon.icon_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public init(iconName iconName: UnsafePointer<CChar>? = nil) {
        let rv = gtk_image_new_from_icon_name(iconName)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying `paintable`.
    /// 
    /// The `GtkImage` does not assume a reference to the paintable; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// The `GtkImage` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable public init<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) {
        let rv = gtk_image_new_from_paintable(paintable?.paintable_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// 
    /// The `GtkImage` does not assume a reference to the pixbuf; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// This is a helper for [ctor`Gtk.Image.new_from_paintable`], and you can't
    /// get back the exact pixbuf once this is called, only a texture.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf.
    /// The `GtkImage` created will not react to state changes. Should you
    /// want that, you should use [ctor`Gtk.Image.new_from_icon_name`].
    @inlinable public init<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        let rv = gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`GdkPixbuf.Pixbuf.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the pixbuf.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`]) of
    /// the returned image is not defined, it will be whatever is
    /// appropriate for displaying the file.
    @inlinable public init(resource resourcePath: UnsafePointer<CChar>!) {
        let rv = gtk_image_new_from_resource(resourcePath)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying the file `filename`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage`
    /// will display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`Gdk.Texture.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the texture.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`])
    /// of the returned image is not defined, it will be whatever
    /// is appropriate for displaying the file.
    @inlinable public static func newFrom(file filename: UnsafePointer<CChar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_file(filename))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public static func newFromG<IconT: GIO.IconProtocol>(gicon icon: IconT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_gicon(icon.icon_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public static func newFrom(iconName iconName: UnsafePointer<CChar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_icon_name(iconName))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImage` displaying `paintable`.
    /// 
    /// The `GtkImage` does not assume a reference to the paintable; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// The `GtkImage` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable public static func newFrom<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_paintable(paintable?.paintable_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// 
    /// The `GtkImage` does not assume a reference to the pixbuf; you still
    /// need to unref it if you own references. `GtkImage` will add its own
    /// reference rather than adopting yours.
    /// 
    /// This is a helper for [ctor`Gtk.Image.new_from_paintable`], and you can't
    /// get back the exact pixbuf once this is called, only a texture.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf.
    /// The `GtkImage` created will not react to state changes. Should you
    /// want that, you should use [ctor`Gtk.Image.new_from_icon_name`].
    @inlinable public static func newFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`.
    /// 
    /// If the file isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If you need to detect failures to load the file, use
    /// [ctor`GdkPixbuf.Pixbuf.new_from_file`] to load the file yourself,
    /// then create the `GtkImage` from the pixbuf.
    /// 
    /// The storage type (see [method`Gtk.Image.get_storage_type`]) of
    /// the returned image is not defined, it will be whatever is
    /// appropriate for displaying the file.
    @inlinable public static func newFrom(resource resourcePath: UnsafePointer<CChar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_resource(resourcePath))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ImagePropertyName: String, PropertyNameProtocol {
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
    /// The `GFile to display.
    case file = "file"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// The `GIcon` displayed in the GtkImage.
    /// 
    /// For themed icons, If the icon theme is changed, the image will be updated
    /// automatically.
    case gicon = "gicon"
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
    /// The name of the icon in the icon theme.
    /// 
    /// If the icon theme is changed, the image will be updated automatically.
    case iconName = "icon-name"
    /// The symbolic size to display icons at.
    case iconSize = "icon-size"
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
    /// The `GdkPaintable` to display.
    case paintable = "paintable"
    /// The parent widget of this widget.
    case parent = "parent"
    /// The size in pixels to display icons at.
    /// 
    /// If set to a value != -1, this property overrides the
    /// [property`Gtk.Image:icon-size`] property for images of type
    /// `GTK_IMAGE_ICON_NAME`.
    case pixelSize = "pixel-size"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// A path to a resource file to display.
    case resource = "resource"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// The representation being used for image data.
    case storageType = "storage-type"
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
    /// Whether the icon displayed in the `GtkImage` will use
    /// standard icon names fallback.
    /// 
    /// The value of this property is only relevant for images of type
    /// `GTK_IMAGE_ICON_NAME` and `GTK_IMAGE_GICON`.
    case useFallback = "use-fallback"
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

public extension ImageProtocol {
    /// Bind a `ImagePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ImagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Image property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ImagePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Image property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ImagePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ImageSignalName: String, SignalNameProtocol {
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
    /// The `GFile to display.
    case notifyFile = "notify::file"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// The `GIcon` displayed in the GtkImage.
    /// 
    /// For themed icons, If the icon theme is changed, the image will be updated
    /// automatically.
    case notifyGicon = "notify::gicon"
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
    /// The name of the icon in the icon theme.
    /// 
    /// If the icon theme is changed, the image will be updated automatically.
    case notifyIconName = "notify::icon-name"
    /// The symbolic size to display icons at.
    case notifyIconSize = "notify::icon-size"
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
    /// The `GdkPaintable` to display.
    case notifyPaintable = "notify::paintable"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// The size in pixels to display icons at.
    /// 
    /// If set to a value != -1, this property overrides the
    /// [property`Gtk.Image:icon-size`] property for images of type
    /// `GTK_IMAGE_ICON_NAME`.
    case notifyPixelSize = "notify::pixel-size"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// A path to a resource file to display.
    case notifyResource = "notify::resource"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// The representation being used for image data.
    case notifyStorageType = "notify::storage-type"
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
    /// Whether the icon displayed in the `GtkImage` will use
    /// standard icon names fallback.
    /// 
    /// The value of this property is only relevant for images of type
    /// `GTK_IMAGE_ICON_NAME` and `GTK_IMAGE_GICON`.
    case notifyUseFallback = "notify::use-fallback"
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

// MARK: Image has no signals
// MARK: Image Class: ImageProtocol extension (methods and fields)
public extension ImageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImage` instance.
    @inlinable var image_ptr: UnsafeMutablePointer<GtkImage>! { return ptr?.assumingMemoryBound(to: GtkImage.self) }

    /// Resets the image to be empty.
    @inlinable func clear() {
        gtk_image_clear(image_ptr)
    
    }

    /// Gets the `GIcon` being displayed by the `GtkImage`.
    /// 
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_GICON` (see [method`Gtk.Image.get_storage_type`]).
    /// The caller of this function does not own a reference to the
    /// returned `GIcon`.
    @inlinable func getGicon() -> GIO.IconRef! {
        let rv = GIO.IconRef(gtk_image_get_gicon(image_ptr))
        return rv
    }

    /// Gets the icon name and size being displayed by the `GtkImage`.
    /// 
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_ICON_NAME` (see [method`Gtk.Image.get_storage_type`]).
    /// The returned string is owned by the `GtkImage` and should not
    /// be freed.
    @inlinable func getIconName() -> String! {
        let rv = gtk_image_get_icon_name(image_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the icon size used by the `image` when rendering icons.
    @inlinable func getIconSize() -> GtkIconSize {
        let rv = gtk_image_get_icon_size(image_ptr)
        return rv
    }

    /// Gets the image `GdkPaintable` being displayed by the `GtkImage`.
    /// 
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_PAINTABLE` (see [method`Gtk.Image.get_storage_type`]).
    /// The caller of this function does not own a reference to the
    /// returned paintable.
    @inlinable func getPaintable() -> Gdk.PaintableRef! {
        let rv = Gdk.PaintableRef(gtk_image_get_paintable(image_ptr))
        return rv
    }

    /// Gets the pixel size used for named icons.
    @inlinable func getPixelSize() -> Int {
        let rv = Int(gtk_image_get_pixel_size(image_ptr))
        return rv
    }

    /// Gets the type of representation being used by the `GtkImage`
    /// to store image data.
    /// 
    /// If the `GtkImage` has no image data, the return value will
    /// be `GTK_IMAGE_EMPTY`.
    @inlinable func getStorageType() -> GtkImageType {
        let rv = gtk_image_get_storage_type(image_ptr)
        return rv
    }

    /// Sets a `GtkImage` to show a file.
    /// 
    /// See [ctor`Gtk.Image.new_from_file`] for details.
    @inlinable func setFromFile(filename: UnsafePointer<CChar>? = nil) {
        gtk_image_set_from_file(image_ptr, filename)
    
    }

    /// Sets a `GtkImage` to show a `GIcon`.
    /// 
    /// See [ctor`Gtk.Image.new_from_gicon`] for details.
    @inlinable func setFromGicon<IconT: GIO.IconProtocol>(icon: IconT) {
        gtk_image_set_from_gicon(image_ptr, icon.icon_ptr)
    
    }

    /// Sets a `GtkImage` to show a named icon.
    /// 
    /// See [ctor`Gtk.Image.new_from_icon_name`] for details.
    @inlinable func setFrom(iconName: UnsafePointer<CChar>? = nil) {
        gtk_image_set_from_icon_name(image_ptr, iconName)
    
    }

    /// Sets a `GtkImage` to show a `GdkPaintable`.
    /// 
    /// See [ctor`Gtk.Image.new_from_paintable`] for details.
    @inlinable func setFrom(paintable: Gdk.PaintableRef? = nil) {
        gtk_image_set_from_paintable(image_ptr, paintable?.paintable_ptr)
    
    }
    /// Sets a `GtkImage` to show a `GdkPaintable`.
    /// 
    /// See [ctor`Gtk.Image.new_from_paintable`] for details.
    @inlinable func setFrom<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) {
        gtk_image_set_from_paintable(image_ptr, paintable?.paintable_ptr)
    
    }

    /// Sets a `GtkImage` to show a `GdkPixbuf`.
    /// 
    /// See [ctor`Gtk.Image.new_from_pixbuf`] for details.
    /// 
    /// Note: This is a helper for [method`Gtk.Image.set_from_paintable`],
    /// and you can't get back the exact pixbuf once this is called,
    /// only a paintable.
    @inlinable func setFrom(pixbuf: PixbufRef? = nil) {
        gtk_image_set_from_pixbuf(image_ptr, pixbuf?.pixbuf_ptr)
    
    }
    /// Sets a `GtkImage` to show a `GdkPixbuf`.
    /// 
    /// See [ctor`Gtk.Image.new_from_pixbuf`] for details.
    /// 
    /// Note: This is a helper for [method`Gtk.Image.set_from_paintable`],
    /// and you can't get back the exact pixbuf once this is called,
    /// only a paintable.
    @inlinable func setFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        gtk_image_set_from_pixbuf(image_ptr, pixbuf?.pixbuf_ptr)
    
    }

    /// Sets a `GtkImage` to show a resource.
    /// 
    /// See [ctor`Gtk.Image.new_from_resource`] for details.
    @inlinable func setFromResource(resourcePath: UnsafePointer<CChar>? = nil) {
        gtk_image_set_from_resource(image_ptr, resourcePath)
    
    }

    /// Suggests an icon size to the theme for named icons.
    @inlinable func set(iconSize: GtkIconSize) {
        gtk_image_set_icon_size(image_ptr, iconSize)
    
    }

    /// Sets the pixel size to use for named icons.
    /// 
    /// If the pixel size is set to a value != -1, it is used instead
    /// of the icon size set by [method`Gtk.Image.set_from_icon_name`].
    @inlinable func set(pixelSize: Int) {
        gtk_image_set_pixel_size(image_ptr, gint(pixelSize))
    
    }
    /// The `GIcon` displayed in the GtkImage.
    /// 
    /// For themed icons, If the icon theme is changed, the image will be updated
    /// automatically.
    @inlinable var gicon: GIO.IconRef! {
        /// Gets the `GIcon` being displayed by the `GtkImage`.
        /// 
        /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
        /// `GTK_IMAGE_GICON` (see [method`Gtk.Image.get_storage_type`]).
        /// The caller of this function does not own a reference to the
        /// returned `GIcon`.
        get {
            let rv = GIO.IconRef(gtk_image_get_gicon(image_ptr))
            return rv
        }
    }

    /// Gets the icon name and size being displayed by the `GtkImage`.
    /// 
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_ICON_NAME` (see [method`Gtk.Image.get_storage_type`]).
    /// The returned string is owned by the `GtkImage` and should not
    /// be freed.
    @inlinable var iconName: String! {
        /// Gets the icon name and size being displayed by the `GtkImage`.
        /// 
        /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
        /// `GTK_IMAGE_ICON_NAME` (see [method`Gtk.Image.get_storage_type`]).
        /// The returned string is owned by the `GtkImage` and should not
        /// be freed.
        get {
            let rv = gtk_image_get_icon_name(image_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the icon size used by the `image` when rendering icons.
    @inlinable var iconSize: GtkIconSize {
        /// Gets the icon size used by the `image` when rendering icons.
        get {
            let rv = gtk_image_get_icon_size(image_ptr)
            return rv
        }
        /// Suggests an icon size to the theme for named icons.
        nonmutating set {
            gtk_image_set_icon_size(image_ptr, newValue)
        }
    }

    /// The `GdkPaintable` to display.
    @inlinable var paintable: Gdk.PaintableRef! {
        /// Gets the image `GdkPaintable` being displayed by the `GtkImage`.
        /// 
        /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
        /// `GTK_IMAGE_PAINTABLE` (see [method`Gtk.Image.get_storage_type`]).
        /// The caller of this function does not own a reference to the
        /// returned paintable.
        get {
            let rv = Gdk.PaintableRef(gtk_image_get_paintable(image_ptr))
            return rv
        }
    }

    /// Gets the pixel size used for named icons.
    @inlinable var pixelSize: Int {
        /// Gets the pixel size used for named icons.
        get {
            let rv = Int(gtk_image_get_pixel_size(image_ptr))
            return rv
        }
        /// Sets the pixel size to use for named icons.
        /// 
        /// If the pixel size is set to a value != -1, it is used instead
        /// of the icon size set by [method`Gtk.Image.set_from_icon_name`].
        nonmutating set {
            gtk_image_set_pixel_size(image_ptr, gint(newValue))
        }
    }

    /// Gets the type of representation being used by the `GtkImage`
    /// to store image data.
    /// 
    /// If the `GtkImage` has no image data, the return value will
    /// be `GTK_IMAGE_EMPTY`.
    @inlinable var storageType: GtkImageType {
        /// Gets the type of representation being used by the `GtkImage`
        /// to store image data.
        /// 
        /// If the `GtkImage` has no image data, the return value will
        /// be `GTK_IMAGE_EMPTY`.
        get {
            let rv = gtk_image_get_storage_type(image_ptr)
            return rv
        }
    }


}



// MARK: - InfoBar Class

/// The `InfoBarProtocol` protocol exposes the methods and properties of an underlying `GtkInfoBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InfoBar`.
/// Alternatively, use `InfoBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkInfoBar` can be show messages to the user without a dialog.
/// 
/// ![An example GtkInfoBar](info-bar.png)
/// 
/// It is often temporarily shown at the top or bottom of a document.
/// In contrast to [class`Gtk.Dialog`], which has an action area at the
/// bottom, `GtkInfoBar` has an action area at the side.
/// 
/// The API of `GtkInfoBar` is very similar to `GtkDialog`, allowing you
/// to add buttons to the action area with [method`Gtk.InfoBar.add_button`]
/// or [ctor`Gtk.InfoBar.new_with_buttons`]. The sensitivity of action widgets
/// can be controlled with [method`Gtk.InfoBar.set_response_sensitive`].
/// 
/// To add widgets to the main content area of a `GtkInfoBar`, use
/// [method`Gtk.InfoBar.add_child`].
/// 
/// Similar to [class`Gtk.MessageDialog`], the contents of a `GtkInfoBar`
/// can by classified as error message, warning, informational message, etc,
/// by using [method`Gtk.InfoBar.set_message_type`]. GTK may use the message
/// type to determine how the message is displayed.
/// 
/// A simple example for using a `GtkInfoBar`:
/// ```c
/// GtkWidget *message_label;
/// GtkWidget *widget;
/// GtkWidget *grid;
/// GtkInfoBar *bar;
/// 
/// // set up info bar
/// widget = gtk_info_bar_new ();
/// bar = GTK_INFO_BAR (widget);
/// grid = gtk_grid_new ();
/// 
/// message_label = gtk_label_new ("");
/// gtk_info_bar_add_child (bar, message_label);
/// gtk_info_bar_add_button (bar,
///                          `_("_OK")`,
///                          GTK_RESPONSE_OK);
/// g_signal_connect (bar,
///                   "response",
///                   G_CALLBACK (gtk_widget_hide),
///                   NULL);
/// gtk_grid_attach (GTK_GRID (grid),
///                  widget,
///                  0, 2, 1, 1);
/// 
/// // ...
/// 
/// // show an error message
/// gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
/// gtk_info_bar_set_message_type (bar, GTK_MESSAGE_ERROR);
/// gtk_widget_show (bar);
/// ```
/// 
/// # GtkInfoBar as GtkBuildable
/// 
/// The `GtkInfoBar` implementation of the `GtkBuildable` interface exposes
/// the content area and action area as internal children with the names
/// “content_area” and “action_area”.
/// 
/// `GtkInfoBar` supports a custom &lt;action-widgets&gt; element, which can contain
/// multiple &lt;action-widget&gt; elements. The “response” attribute specifies a
/// numeric response, and the content of the element is the id of widget
/// (which should be a child of the dialogs `action_area`).
/// 
/// # CSS nodes
/// 
/// `GtkInfoBar` has a single CSS node with name infobar. The node may get
/// one of the style classes .info, .warning, .error or .question, depending
/// on the message type.
/// If the info bar shows a close button, that button will have the .close
/// style class applied.
public protocol InfoBarProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkInfoBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkInfoBar` instance.
    var info_bar_ptr: UnsafeMutablePointer<GtkInfoBar>! { get }

    /// Required Initialiser for types conforming to `InfoBarProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `InfoBarRef` type acts as a lightweight Swift reference to an underlying `GtkInfoBar` instance.
/// It exposes methods that can operate on this data type through `InfoBarProtocol` conformance.
/// Use `InfoBarRef` only as an `unowned` reference to an existing `GtkInfoBar` instance.
///
/// `GtkInfoBar` can be show messages to the user without a dialog.
/// 
/// ![An example GtkInfoBar](info-bar.png)
/// 
/// It is often temporarily shown at the top or bottom of a document.
/// In contrast to [class`Gtk.Dialog`], which has an action area at the
/// bottom, `GtkInfoBar` has an action area at the side.
/// 
/// The API of `GtkInfoBar` is very similar to `GtkDialog`, allowing you
/// to add buttons to the action area with [method`Gtk.InfoBar.add_button`]
/// or [ctor`Gtk.InfoBar.new_with_buttons`]. The sensitivity of action widgets
/// can be controlled with [method`Gtk.InfoBar.set_response_sensitive`].
/// 
/// To add widgets to the main content area of a `GtkInfoBar`, use
/// [method`Gtk.InfoBar.add_child`].
/// 
/// Similar to [class`Gtk.MessageDialog`], the contents of a `GtkInfoBar`
/// can by classified as error message, warning, informational message, etc,
/// by using [method`Gtk.InfoBar.set_message_type`]. GTK may use the message
/// type to determine how the message is displayed.
/// 
/// A simple example for using a `GtkInfoBar`:
/// ```c
/// GtkWidget *message_label;
/// GtkWidget *widget;
/// GtkWidget *grid;
/// GtkInfoBar *bar;
/// 
/// // set up info bar
/// widget = gtk_info_bar_new ();
/// bar = GTK_INFO_BAR (widget);
/// grid = gtk_grid_new ();
/// 
/// message_label = gtk_label_new ("");
/// gtk_info_bar_add_child (bar, message_label);
/// gtk_info_bar_add_button (bar,
///                          `_("_OK")`,
///                          GTK_RESPONSE_OK);
/// g_signal_connect (bar,
///                   "response",
///                   G_CALLBACK (gtk_widget_hide),
///                   NULL);
/// gtk_grid_attach (GTK_GRID (grid),
///                  widget,
///                  0, 2, 1, 1);
/// 
/// // ...
/// 
/// // show an error message
/// gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
/// gtk_info_bar_set_message_type (bar, GTK_MESSAGE_ERROR);
/// gtk_widget_show (bar);
/// ```
/// 
/// # GtkInfoBar as GtkBuildable
/// 
/// The `GtkInfoBar` implementation of the `GtkBuildable` interface exposes
/// the content area and action area as internal children with the names
/// “content_area” and “action_area”.
/// 
/// `GtkInfoBar` supports a custom &lt;action-widgets&gt; element, which can contain
/// multiple &lt;action-widget&gt; elements. The “response” attribute specifies a
/// numeric response, and the content of the element is the id of widget
/// (which should be a child of the dialogs `action_area`).
/// 
/// # CSS nodes
/// 
/// `GtkInfoBar` has a single CSS node with name infobar. The node may get
/// one of the style classes .info, .warning, .error or .question, depending
/// on the message type.
/// If the info bar shows a close button, that button will have the .close
/// style class applied.
public struct InfoBarRef: InfoBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkInfoBar` instance.
    /// For type-safe access, use the generated, typed pointer `info_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InfoBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkInfoBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkInfoBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkInfoBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkInfoBar>?) {
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

    /// Reference intialiser for a related type that implements `InfoBarProtocol`
    @inlinable init<T: InfoBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InfoBarProtocol>(_ other: T) -> InfoBarRef { InfoBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkInfoBar` object.
    @inlinable init() {
        let rv = gtk_info_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newWithButtons() is not available because it has a varargs (...) parameter!


    // *** newWithButtons() is not available because it has a varargs (...) parameter!

}

/// The `InfoBar` type acts as a reference-counted owner of an underlying `GtkInfoBar` instance.
/// It provides the methods that can operate on this data type through `InfoBarProtocol` conformance.
/// Use `InfoBar` as a strong reference or owner of a `GtkInfoBar` instance.
///
/// `GtkInfoBar` can be show messages to the user without a dialog.
/// 
/// ![An example GtkInfoBar](info-bar.png)
/// 
/// It is often temporarily shown at the top or bottom of a document.
/// In contrast to [class`Gtk.Dialog`], which has an action area at the
/// bottom, `GtkInfoBar` has an action area at the side.
/// 
/// The API of `GtkInfoBar` is very similar to `GtkDialog`, allowing you
/// to add buttons to the action area with [method`Gtk.InfoBar.add_button`]
/// or [ctor`Gtk.InfoBar.new_with_buttons`]. The sensitivity of action widgets
/// can be controlled with [method`Gtk.InfoBar.set_response_sensitive`].
/// 
/// To add widgets to the main content area of a `GtkInfoBar`, use
/// [method`Gtk.InfoBar.add_child`].
/// 
/// Similar to [class`Gtk.MessageDialog`], the contents of a `GtkInfoBar`
/// can by classified as error message, warning, informational message, etc,
/// by using [method`Gtk.InfoBar.set_message_type`]. GTK may use the message
/// type to determine how the message is displayed.
/// 
/// A simple example for using a `GtkInfoBar`:
/// ```c
/// GtkWidget *message_label;
/// GtkWidget *widget;
/// GtkWidget *grid;
/// GtkInfoBar *bar;
/// 
/// // set up info bar
/// widget = gtk_info_bar_new ();
/// bar = GTK_INFO_BAR (widget);
/// grid = gtk_grid_new ();
/// 
/// message_label = gtk_label_new ("");
/// gtk_info_bar_add_child (bar, message_label);
/// gtk_info_bar_add_button (bar,
///                          `_("_OK")`,
///                          GTK_RESPONSE_OK);
/// g_signal_connect (bar,
///                   "response",
///                   G_CALLBACK (gtk_widget_hide),
///                   NULL);
/// gtk_grid_attach (GTK_GRID (grid),
///                  widget,
///                  0, 2, 1, 1);
/// 
/// // ...
/// 
/// // show an error message
/// gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
/// gtk_info_bar_set_message_type (bar, GTK_MESSAGE_ERROR);
/// gtk_widget_show (bar);
/// ```
/// 
/// # GtkInfoBar as GtkBuildable
/// 
/// The `GtkInfoBar` implementation of the `GtkBuildable` interface exposes
/// the content area and action area as internal children with the names
/// “content_area” and “action_area”.
/// 
/// `GtkInfoBar` supports a custom &lt;action-widgets&gt; element, which can contain
/// multiple &lt;action-widget&gt; elements. The “response” attribute specifies a
/// numeric response, and the content of the element is the id of widget
/// (which should be a child of the dialogs `action_area`).
/// 
/// # CSS nodes
/// 
/// `GtkInfoBar` has a single CSS node with name infobar. The node may get
/// one of the style classes .info, .warning, .error or .question, depending
/// on the message type.
/// If the info bar shows a close button, that button will have the .close
/// style class applied.
open class InfoBar: Widget, InfoBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkInfoBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkInfoBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkInfoBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkInfoBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkInfoBar`.
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkInfoBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InfoBarProtocol`
    /// Will retain `GtkInfoBar`.
    /// - Parameter other: an instance of a related type that implements `InfoBarProtocol`
    @inlinable public init<T: InfoBarProtocol>(infoBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkInfoBar` object.
    @inlinable public init() {
        let rv = gtk_info_bar_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


    // *** newWithButtons() is not available because it has a varargs (...) parameter!



    // *** newWithButtons() is not available because it has a varargs (...) parameter!


}

public enum InfoBarPropertyName: String, PropertyNameProtocol {
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
    /// The type of the message.
    /// 
    /// The type may be used to determine the appearance of the info bar.
    case messageType = "message-type"
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
    /// Whether the info bar shows its contents.
    case revealed = "revealed"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Whether to include a standard close button.
    case showCloseButton = "show-close-button"
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

public extension InfoBarProtocol {
    /// Bind a `InfoBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: InfoBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a InfoBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: InfoBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InfoBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: InfoBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum InfoBarSignalName: String, SignalNameProtocol {
    /// Gets emitted when the user uses a keybinding to dismiss the info bar.
    /// 
    /// The `close` signal is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is the Escape key.
    case close = "close"
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
    /// Emitted when an action widget is clicked.
    /// 
    /// The signal is also emitted when the application programmer
    /// calls [method`Gtk.InfoBar.response`]. The `response_id` depends
    /// on which action widget was clicked.
    case response = "response"
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
    /// The type of the message.
    /// 
    /// The type may be used to determine the appearance of the info bar.
    case notifyMessageType = "notify::message-type"
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
    /// Whether the info bar shows its contents.
    case notifyRevealed = "notify::revealed"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Whether to include a standard close button.
    case notifyShowCloseButton = "notify::show-close-button"
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

// MARK: InfoBar signals
public extension InfoBarProtocol {
    /// Connect a Swift signal handler to the given, typed `InfoBarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: InfoBarSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `InfoBarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: InfoBarSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Gets emitted when the user uses a keybinding to dismiss the info bar.
    /// 
    /// The `close` signal is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is the Escape key.
    /// - Note: This represents the underlying `close` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `close` signal is emitted
    @discardableResult @inlinable func onClose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<InfoBarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .close,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `close` signal for using the `connect(signal:)` methods
    static var closeSignal: InfoBarSignalName { .close }
    
    /// Emitted when an action widget is clicked.
    /// 
    /// The signal is also emitted when the application programmer
    /// calls [method`Gtk.InfoBar.response`]. The `response_id` depends
    /// on which action widget was clicked.
    /// - Note: This represents the underlying `response` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter responseId: the response ID
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `response` signal is emitted
    @discardableResult @inlinable func onResponse(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ responseId: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), Int(arg1))
            return output
        }
        return connect(
            signal: .response,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `response` signal for using the `connect(signal:)` methods
    static var responseSignal: InfoBarSignalName { .response }
    
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
    /// - Note: This represents the underlying `notify::message-type` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMessageType` signal is emitted
    @discardableResult @inlinable func onNotifyMessageType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMessageType,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::message-type` signal for using the `connect(signal:)` methods
    static var notifyMessageTypeSignal: InfoBarSignalName { .notifyMessageType }
    
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
    /// - Note: This represents the underlying `notify::revealed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRevealed` signal is emitted
    @discardableResult @inlinable func onNotifyRevealed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRevealed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::revealed` signal for using the `connect(signal:)` methods
    static var notifyRevealedSignal: InfoBarSignalName { .notifyRevealed }
    
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
    /// - Note: This represents the underlying `notify::show-close-button` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowCloseButton` signal is emitted
    @discardableResult @inlinable func onNotifyShowCloseButton(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowCloseButton,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-close-button` signal for using the `connect(signal:)` methods
    static var notifyShowCloseButtonSignal: InfoBarSignalName { .notifyShowCloseButton }
    
}

// MARK: InfoBar Class: InfoBarProtocol extension (methods and fields)
public extension InfoBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInfoBar` instance.
    @inlinable var info_bar_ptr: UnsafeMutablePointer<GtkInfoBar>! { return ptr?.assumingMemoryBound(to: GtkInfoBar.self) }

    /// Add an activatable widget to the action area of a `GtkInfoBar`.
    /// 
    /// This also connects a signal handler that will emit the
    /// [signal`Gtk.InfoBar::response`] signal on the message area
    /// when the widget is activated. The widget is appended to the
    /// end of the message areas action area.
    @inlinable func addActionWidget<WidgetT: WidgetProtocol>(child: WidgetT, responseId: Int) {
        gtk_info_bar_add_action_widget(info_bar_ptr, child.widget_ptr, gint(responseId))
    
    }

    /// Adds a button with the given text.
    /// 
    /// Clicking the button will emit the [signal`Gtk.InfoBar::response`]
    /// signal with the given response_id. The button is appended to the
    /// end of the info bars's action area. The button widget is returned,
    /// but usually you don't need it.
    @inlinable func addButton(buttonText: UnsafePointer<CChar>!, responseId: Int) -> ButtonRef! {
        let rv = ButtonRef(gconstpointer: gconstpointer(gtk_info_bar_add_button(info_bar_ptr, buttonText, gint(responseId))))
        return rv
    }


    // *** addButtons() is not available because it has a varargs (...) parameter!


    /// Adds a widget to the content area of the info bar.
    @inlinable func addChild<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_info_bar_add_child(info_bar_ptr, widget.widget_ptr)
    
    }

    /// Returns the message type of the message area.
    @inlinable func getMessageType() -> GtkMessageType {
        let rv = gtk_info_bar_get_message_type(info_bar_ptr)
        return rv
    }

    /// Returns whether the info bar is currently revealed.
    @inlinable func getRevealed() -> Bool {
        let rv = ((gtk_info_bar_get_revealed(info_bar_ptr)) != 0)
        return rv
    }

    /// Returns whether the widget will display a standard close button.
    @inlinable func getShowCloseButton() -> Bool {
        let rv = ((gtk_info_bar_get_show_close_button(info_bar_ptr)) != 0)
        return rv
    }

    /// Removes a widget from the action area of `info_bar`.
    /// 
    /// The widget must have been put there by a call to
    /// [method`Gtk.InfoBar.add_action_widget`] or [method`Gtk.InfoBar.add_button`].
    @inlinable func removeAction<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_info_bar_remove_action_widget(info_bar_ptr, widget.widget_ptr)
    
    }

    /// Removes a widget from the content area of the info bar.
    @inlinable func removeChild<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_info_bar_remove_child(info_bar_ptr, widget.widget_ptr)
    
    }

    /// Emits the “response” signal with the given `response_id`.
    @inlinable func response(responseId: Int) {
        gtk_info_bar_response(info_bar_ptr, gint(responseId))
    
    }

    /// Sets the last widget in the info bar’s action area with
    /// the given response_id as the default widget for the dialog.
    /// 
    /// Pressing “Enter” normally activates the default widget.
    /// 
    /// Note that this function currently requires `info_bar` to
    /// be added to a widget hierarchy.
    @inlinable func setDefaultResponse(responseId: Int) {
        gtk_info_bar_set_default_response(info_bar_ptr, gint(responseId))
    
    }

    /// Sets the message type of the message area.
    /// 
    /// GTK uses this type to determine how the message is displayed.
    @inlinable func set(messageType: GtkMessageType) {
        gtk_info_bar_set_message_type(info_bar_ptr, messageType)
    
    }

    /// Sets the sensitivity of action widgets for `response_id`.
    /// 
    /// Calls `gtk_widget_set_sensitive (widget, setting)` for each
    /// widget in the info bars’s action area with the given `response_id`.
    /// A convenient way to sensitize/desensitize buttons.
    @inlinable func setResponseSensitive(responseId: Int, setting: Bool) {
        gtk_info_bar_set_response_sensitive(info_bar_ptr, gint(responseId), gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the `GtkInfoBar` is revealed.
    /// 
    /// Changing this will make `info_bar` reveal or conceal
    /// itself via a sliding transition.
    /// 
    /// Note: this does not show or hide `info_bar` in the
    /// [property`Gtk.Widget:visible`] sense, so revealing has no effect
    /// if [property`Gtk.Widget:visible`] is `false`.
    @inlinable func set(revealed: Bool) {
        gtk_info_bar_set_revealed(info_bar_ptr, gboolean((revealed) ? 1 : 0))
    
    }

    /// If true, a standard close button is shown.
    /// 
    /// When clicked it emits the response `GTK_RESPONSE_CLOSE`.
    @inlinable func setShowCloseButton(setting: Bool) {
        gtk_info_bar_set_show_close_button(info_bar_ptr, gboolean((setting) ? 1 : 0))
    
    }
    /// Returns the message type of the message area.
    @inlinable var messageType: GtkMessageType {
        /// Returns the message type of the message area.
        get {
            let rv = gtk_info_bar_get_message_type(info_bar_ptr)
            return rv
        }
        /// Sets the message type of the message area.
        /// 
        /// GTK uses this type to determine how the message is displayed.
        nonmutating set {
            gtk_info_bar_set_message_type(info_bar_ptr, newValue)
        }
    }

    /// Whether the info bar shows its contents.
    @inlinable var revealed: Bool {
        /// Returns whether the info bar is currently revealed.
        get {
            let rv = ((gtk_info_bar_get_revealed(info_bar_ptr)) != 0)
            return rv
        }
        /// Sets whether the `GtkInfoBar` is revealed.
        /// 
        /// Changing this will make `info_bar` reveal or conceal
        /// itself via a sliding transition.
        /// 
        /// Note: this does not show or hide `info_bar` in the
        /// [property`Gtk.Widget:visible`] sense, so revealing has no effect
        /// if [property`Gtk.Widget:visible`] is `false`.
        nonmutating set {
            gtk_info_bar_set_revealed(info_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the widget will display a standard close button.
    @inlinable var showCloseButton: Bool {
        /// Returns whether the widget will display a standard close button.
        get {
            let rv = ((gtk_info_bar_get_show_close_button(info_bar_ptr)) != 0)
            return rv
        }
        /// If true, a standard close button is shown.
        /// 
        /// When clicked it emits the response `GTK_RESPONSE_CLOSE`.
        nonmutating set {
            gtk_info_bar_set_show_close_button(info_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - KeyvalTrigger Class

/// The `KeyvalTriggerProtocol` protocol exposes the methods and properties of an underlying `GtkKeyvalTrigger` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `KeyvalTrigger`.
/// Alternatively, use `KeyvalTriggerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
public protocol KeyvalTriggerProtocol: ShortcutTriggerProtocol {
        /// Untyped pointer to the underlying `GtkKeyvalTrigger` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkKeyvalTrigger` instance.
    var keyval_trigger_ptr: UnsafeMutablePointer<GtkKeyvalTrigger>! { get }

    /// Required Initialiser for types conforming to `KeyvalTriggerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `KeyvalTriggerRef` type acts as a lightweight Swift reference to an underlying `GtkKeyvalTrigger` instance.
/// It exposes methods that can operate on this data type through `KeyvalTriggerProtocol` conformance.
/// Use `KeyvalTriggerRef` only as an `unowned` reference to an existing `GtkKeyvalTrigger` instance.
///
/// A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
public struct KeyvalTriggerRef: KeyvalTriggerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkKeyvalTrigger` instance.
    /// For type-safe access, use the generated, typed pointer `keyval_trigger_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension KeyvalTriggerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkKeyvalTrigger>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkKeyvalTrigger>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkKeyvalTrigger>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkKeyvalTrigger>?) {
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

    /// Reference intialiser for a related type that implements `KeyvalTriggerProtocol`
    @inlinable init<T: KeyvalTriggerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: KeyvalTriggerProtocol>(_ other: T) -> KeyvalTriggerRef { KeyvalTriggerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkShortcutTrigger` that will trigger whenever
    /// the key with the given `keyval` and `modifiers` is pressed.
    @inlinable init( keyval: Int, modifiers: Gdk.ModifierType) {
        let rv = gtk_keyval_trigger_new(guint(keyval), modifiers.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `KeyvalTrigger` type acts as a reference-counted owner of an underlying `GtkKeyvalTrigger` instance.
/// It provides the methods that can operate on this data type through `KeyvalTriggerProtocol` conformance.
/// Use `KeyvalTrigger` as a strong reference or owner of a `GtkKeyvalTrigger` instance.
///
/// A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
open class KeyvalTrigger: ShortcutTrigger, KeyvalTriggerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyvalTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkKeyvalTrigger>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyvalTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkKeyvalTrigger>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyvalTrigger` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyvalTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyvalTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkKeyvalTrigger>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyvalTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkKeyvalTrigger>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkKeyvalTrigger`.
    /// i.e., ownership is transferred to the `KeyvalTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkKeyvalTrigger>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `KeyvalTriggerProtocol`
    /// Will retain `GtkKeyvalTrigger`.
    /// - Parameter other: an instance of a related type that implements `KeyvalTriggerProtocol`
    @inlinable public init<T: KeyvalTriggerProtocol>(keyvalTrigger other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GtkShortcutTrigger` that will trigger whenever
    /// the key with the given `keyval` and `modifiers` is pressed.
    @inlinable public init( keyval: Int, modifiers: Gdk.ModifierType) {
        let rv = gtk_keyval_trigger_new(guint(keyval), modifiers.value)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum KeyvalTriggerPropertyName: String, PropertyNameProtocol {
    /// The key value for the trigger.
    case keyval = "keyval"
    /// The key modifiers for the trigger.
    case modifiers = "modifiers"
}

public extension KeyvalTriggerProtocol {
    /// Bind a `KeyvalTriggerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: KeyvalTriggerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a KeyvalTrigger property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: KeyvalTriggerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a KeyvalTrigger property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: KeyvalTriggerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum KeyvalTriggerSignalName: String, SignalNameProtocol {
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
    /// The key value for the trigger.
    case notifyKeyval = "notify::keyval"
    /// The key modifiers for the trigger.
    case notifyModifiers = "notify::modifiers"
}

// MARK: KeyvalTrigger has no signals
// MARK: KeyvalTrigger Class: KeyvalTriggerProtocol extension (methods and fields)
public extension KeyvalTriggerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkKeyvalTrigger` instance.
    @inlinable var keyval_trigger_ptr: UnsafeMutablePointer<GtkKeyvalTrigger>! { return ptr?.assumingMemoryBound(to: GtkKeyvalTrigger.self) }

    /// Gets the keyval that must be pressed to succeed
    /// triggering `self`.
    @inlinable func getKeyval() -> Int {
        let rv = Int(gtk_keyval_trigger_get_keyval(keyval_trigger_ptr))
        return rv
    }

    /// Gets the modifiers that must be present to succeed
    /// triggering `self`.
    @inlinable func getModifiers() -> Gdk.ModifierType {
        let rv = Gdk.ModifierType(gtk_keyval_trigger_get_modifiers(keyval_trigger_ptr))
        return rv
    }
    /// The key value for the trigger.
    @inlinable var keyval: Int {
        /// Gets the keyval that must be pressed to succeed
        /// triggering `self`.
        get {
            let rv = Int(gtk_keyval_trigger_get_keyval(keyval_trigger_ptr))
            return rv
        }
    }

    /// The key modifiers for the trigger.
    @inlinable var modifiers: Gdk.ModifierType {
        /// Gets the modifiers that must be present to succeed
        /// triggering `self`.
        get {
            let rv = Gdk.ModifierType(gtk_keyval_trigger_get_modifiers(keyval_trigger_ptr))
            return rv
        }
    }


}



