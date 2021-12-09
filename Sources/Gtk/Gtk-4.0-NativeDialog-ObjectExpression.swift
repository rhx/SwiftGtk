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

// MARK: - NativeDialog Class

/// Native dialogs are platform dialogs that don't use `GtkDialog`.
/// 
/// They are used in order to integrate better with a platform, by
/// looking the same as other native applications and supporting
/// platform specific features.
/// 
/// The [class`Gtk.Dialog`] functions cannot be used on such objects,
/// but we need a similar API in order to drive them. The `GtkNativeDialog`
/// object is an API that allows you to do this. It allows you to set
/// various common properties on the dialog, as well as show and hide
/// it and get a [signal`Gtk.NativeDialog::response`] signal when the user
/// finished with the dialog.
/// 
/// Note that unlike `GtkDialog`, `GtkNativeDialog` objects are not
/// toplevel widgets, and GTK does not keep them alive. It is your
/// responsibility to keep a reference until you are done with the
/// object.
///
/// The `NativeDialogProtocol` protocol exposes the methods and properties of an underlying `GtkNativeDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeDialog`.
/// Alternatively, use `NativeDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NativeDialogProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkNativeDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNativeDialog` instance.
    var native_dialog_ptr: UnsafeMutablePointer<GtkNativeDialog>! { get }

    /// Required Initialiser for types conforming to `NativeDialogProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Native dialogs are platform dialogs that don't use `GtkDialog`.
/// 
/// They are used in order to integrate better with a platform, by
/// looking the same as other native applications and supporting
/// platform specific features.
/// 
/// The [class`Gtk.Dialog`] functions cannot be used on such objects,
/// but we need a similar API in order to drive them. The `GtkNativeDialog`
/// object is an API that allows you to do this. It allows you to set
/// various common properties on the dialog, as well as show and hide
/// it and get a [signal`Gtk.NativeDialog::response`] signal when the user
/// finished with the dialog.
/// 
/// Note that unlike `GtkDialog`, `GtkNativeDialog` objects are not
/// toplevel widgets, and GTK does not keep them alive. It is your
/// responsibility to keep a reference until you are done with the
/// object.
///
/// The `NativeDialogRef` type acts as a lightweight Swift reference to an underlying `GtkNativeDialog` instance.
/// It exposes methods that can operate on this data type through `NativeDialogProtocol` conformance.
/// Use `NativeDialogRef` only as an `unowned` reference to an existing `GtkNativeDialog` instance.
///
public struct NativeDialogRef: NativeDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNativeDialog` instance.
    /// For type-safe access, use the generated, typed pointer `native_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNativeDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNativeDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNativeDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNativeDialog>?) {
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

    /// Reference intialiser for a related type that implements `NativeDialogProtocol`
    @inlinable init<T: NativeDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NativeDialogProtocol>(_ other: T) -> NativeDialogRef { NativeDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Native dialogs are platform dialogs that don't use `GtkDialog`.
/// 
/// They are used in order to integrate better with a platform, by
/// looking the same as other native applications and supporting
/// platform specific features.
/// 
/// The [class`Gtk.Dialog`] functions cannot be used on such objects,
/// but we need a similar API in order to drive them. The `GtkNativeDialog`
/// object is an API that allows you to do this. It allows you to set
/// various common properties on the dialog, as well as show and hide
/// it and get a [signal`Gtk.NativeDialog::response`] signal when the user
/// finished with the dialog.
/// 
/// Note that unlike `GtkDialog`, `GtkNativeDialog` objects are not
/// toplevel widgets, and GTK does not keep them alive. It is your
/// responsibility to keep a reference until you are done with the
/// object.
///
/// The `NativeDialog` type acts as a reference-counted owner of an underlying `GtkNativeDialog` instance.
/// It provides the methods that can operate on this data type through `NativeDialogProtocol` conformance.
/// Use `NativeDialog` as a strong reference or owner of a `GtkNativeDialog` instance.
///
open class NativeDialog: GLibObject.Object, NativeDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNativeDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNativeDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNativeDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNativeDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNativeDialog`.
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNativeDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NativeDialogProtocol`
    /// Will retain `GtkNativeDialog`.
    /// - Parameter other: an instance of a related type that implements `NativeDialogProtocol`
    @inlinable public init<T: NativeDialogProtocol>(nativeDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum NativeDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should be modal with respect to its transient parent.
    case modal = "modal"
    /// The title of the dialog window
    case title = "title"
    /// The transient parent of the dialog, or `nil` for none.
    case transientFor = "transient-for"
    /// Whether the window is currently visible.
    case visible = "visible"
}

public extension NativeDialogProtocol {
    /// Bind a `NativeDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NativeDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NativeDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NativeDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NativeDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NativeDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NativeDialogSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the user responds to the dialog.
    /// 
    /// When this is called the dialog has been hidden.
    /// 
    /// If you call [method`Gtk.NativeDialog.hide`] before the user
    /// responds to the dialog this signal will not be emitted.
    case response = "response"
    /// Whether the window should be modal with respect to its transient parent.
    case notifyModal = "notify::modal"
    /// The title of the dialog window
    case notifyTitle = "notify::title"
    /// The transient parent of the dialog, or `nil` for none.
    case notifyTransientFor = "notify::transient-for"
    /// Whether the window is currently visible.
    case notifyVisible = "notify::visible"
}

// MARK: NativeDialog signals
public extension NativeDialogProtocol {
    /// Connect a Swift signal handler to the given, typed `NativeDialogSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: NativeDialogSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `NativeDialogSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: NativeDialogSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the user responds to the dialog.
    /// 
    /// When this is called the dialog has been hidden.
    /// 
    /// If you call [method`Gtk.NativeDialog.hide`] before the user
    /// responds to the dialog this signal will not be emitted.
    /// - Note: This represents the underlying `response` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter responseId: the response ID
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `response` signal is emitted
    @discardableResult @inlinable func onResponse(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ responseId: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), Int(arg1))
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
    static var responseSignal: NativeDialogSignalName { .response }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::modal` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModal` signal is emitted
    @discardableResult @inlinable func onNotifyModal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModal,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::modal` signal for using the `connect(signal:)` methods
    static var notifyModalSignal: NativeDialogSignalName { .notifyModal }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::title` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTitle` signal is emitted
    @discardableResult @inlinable func onNotifyTitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTitle,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::title` signal for using the `connect(signal:)` methods
    static var notifyTitleSignal: NativeDialogSignalName { .notifyTitle }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::transient-for` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTransientFor` signal is emitted
    @discardableResult @inlinable func onNotifyTransientFor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTransientFor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::transient-for` signal for using the `connect(signal:)` methods
    static var notifyTransientForSignal: NativeDialogSignalName { .notifyTransientFor }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::visible` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyVisible` signal is emitted
    @discardableResult @inlinable func onNotifyVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyVisible,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::visible` signal for using the `connect(signal:)` methods
    static var notifyVisibleSignal: NativeDialogSignalName { .notifyVisible }
    
}

// MARK: NativeDialog Class: NativeDialogProtocol extension (methods and fields)
public extension NativeDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNativeDialog` instance.
    @inlinable var native_dialog_ptr: UnsafeMutablePointer<GtkNativeDialog>! { return ptr?.assumingMemoryBound(to: GtkNativeDialog.self) }

    /// Destroys a dialog.
    /// 
    /// When a dialog is destroyed, it will break any references it holds
    /// to other objects.
    /// 
    /// If it is visible it will be hidden and any underlying window system
    /// resources will be destroyed.
    /// 
    /// Note that this does not release any reference to the object (as opposed
    /// to destroying a `GtkWindow`) because there is no reference from the
    /// windowing system to the `GtkNativeDialog`.
    @inlinable func destroy() {
        gtk_native_dialog_destroy(native_dialog_ptr)
    
    }

    /// Returns whether the dialog is modal.
    @inlinable func getModal() -> Bool {
        let rv = ((gtk_native_dialog_get_modal(native_dialog_ptr)) != 0)
        return rv
    }

    /// Gets the title of the `GtkNativeDialog`.
    @inlinable func getTitle() -> String! {
        let rv = gtk_native_dialog_get_title(native_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Fetches the transient parent for this window.
    @inlinable func getTransientFor() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gtk_native_dialog_get_transient_for(native_dialog_ptr)))
        return rv
    }

    /// Determines whether the dialog is visible.
    @inlinable func getVisible() -> Bool {
        let rv = ((gtk_native_dialog_get_visible(native_dialog_ptr)) != 0)
        return rv
    }

    /// Hides the dialog if it is visible, aborting any interaction.
    /// 
    /// Once this is called the [signal`Gtk.NativeDialog::response`] signal
    /// will *not* be emitted until after the next call to
    /// [method`Gtk.NativeDialog.show`].
    /// 
    /// If the dialog is not visible this does nothing.
    @inlinable func hide() {
        gtk_native_dialog_hide(native_dialog_ptr)
    
    }

    /// Sets a dialog modal or non-modal.
    /// 
    /// Modal dialogs prevent interaction with other windows in the same
    /// application. To keep modal dialogs on top of main application
    /// windows, use [method`Gtk.NativeDialog.set_transient_for`] to make
    /// the dialog transient for the parent; most window managers will
    /// then disallow lowering the dialog below the parent.
    @inlinable func set(modal: Bool) {
        gtk_native_dialog_set_modal(native_dialog_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// Sets the title of the `GtkNativeDialog.`
    @inlinable func set(title: UnsafePointer<CChar>!) {
        gtk_native_dialog_set_title(native_dialog_ptr, title)
    
    }

    /// Dialog windows should be set transient for the main application
    /// window they were spawned from.
    /// 
    /// This allows window managers to e.g. keep the dialog on top of the
    /// main window, or center the dialog over the main window.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    @inlinable func setTransientFor(parent: WindowRef? = nil) {
        gtk_native_dialog_set_transient_for(native_dialog_ptr, parent?.window_ptr)
    
    }
    /// Dialog windows should be set transient for the main application
    /// window they were spawned from.
    /// 
    /// This allows window managers to e.g. keep the dialog on top of the
    /// main window, or center the dialog over the main window.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    @inlinable func setTransientFor<WindowT: WindowProtocol>(parent: WindowT?) {
        gtk_native_dialog_set_transient_for(native_dialog_ptr, parent?.window_ptr)
    
    }

    /// Shows the dialog on the display.
    /// 
    /// When the user accepts the state of the dialog the dialog will
    /// be automatically hidden and the [signal`Gtk.NativeDialog::response`]
    /// signal will be emitted.
    /// 
    /// Multiple calls while the dialog is visible will be ignored.
    @inlinable func show() {
        gtk_native_dialog_show(native_dialog_ptr)
    
    }
    /// Whether the window should be modal with respect to its transient parent.
    @inlinable var modal: Bool {
        /// Returns whether the dialog is modal.
        get {
            let rv = ((gtk_native_dialog_get_modal(native_dialog_ptr)) != 0)
            return rv
        }
        /// Sets a dialog modal or non-modal.
        /// 
        /// Modal dialogs prevent interaction with other windows in the same
        /// application. To keep modal dialogs on top of main application
        /// windows, use [method`Gtk.NativeDialog.set_transient_for`] to make
        /// the dialog transient for the parent; most window managers will
        /// then disallow lowering the dialog below the parent.
        nonmutating set {
            gtk_native_dialog_set_modal(native_dialog_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The title of the dialog window
    @inlinable var title: String! {
        /// Gets the title of the `GtkNativeDialog`.
        get {
            let rv = gtk_native_dialog_get_title(native_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title of the `GtkNativeDialog.`
        nonmutating set {
            gtk_native_dialog_set_title(native_dialog_ptr, newValue)
        }
    }

    /// Fetches the transient parent for this window.
    @inlinable var transientFor: WindowRef! {
        /// Fetches the transient parent for this window.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gtk_native_dialog_get_transient_for(native_dialog_ptr)))
            return rv
        }
        /// Dialog windows should be set transient for the main application
        /// window they were spawned from.
        /// 
        /// This allows window managers to e.g. keep the dialog on top of the
        /// main window, or center the dialog over the main window.
        /// 
        /// Passing `nil` for `parent` unsets the current transient window.
        nonmutating set {
            gtk_native_dialog_set_transient_for(native_dialog_ptr, UnsafeMutablePointer<GtkWindow>(newValue?.window_ptr))
        }
    }

    /// Whether the window is currently visible.
    @inlinable var visible: Bool {
        /// Determines whether the dialog is visible.
        get {
            let rv = ((gtk_native_dialog_get_visible(native_dialog_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = native_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - NeverTrigger Class

/// A `GtkShortcutTrigger` that never triggers.
///
/// The `NeverTriggerProtocol` protocol exposes the methods and properties of an underlying `GtkNeverTrigger` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NeverTrigger`.
/// Alternatively, use `NeverTriggerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NeverTriggerProtocol: ShortcutTriggerProtocol {
        /// Untyped pointer to the underlying `GtkNeverTrigger` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNeverTrigger` instance.
    var never_trigger_ptr: UnsafeMutablePointer<GtkNeverTrigger>! { get }

    /// Required Initialiser for types conforming to `NeverTriggerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkShortcutTrigger` that never triggers.
///
/// The `NeverTriggerRef` type acts as a lightweight Swift reference to an underlying `GtkNeverTrigger` instance.
/// It exposes methods that can operate on this data type through `NeverTriggerProtocol` conformance.
/// Use `NeverTriggerRef` only as an `unowned` reference to an existing `GtkNeverTrigger` instance.
///
public struct NeverTriggerRef: NeverTriggerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNeverTrigger` instance.
    /// For type-safe access, use the generated, typed pointer `never_trigger_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NeverTriggerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNeverTrigger>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNeverTrigger>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNeverTrigger>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNeverTrigger>?) {
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

    /// Reference intialiser for a related type that implements `NeverTriggerProtocol`
    @inlinable init<T: NeverTriggerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NeverTriggerProtocol>(_ other: T) -> NeverTriggerRef { NeverTriggerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GtkShortcutTrigger` that never triggers.
///
/// The `NeverTrigger` type acts as a reference-counted owner of an underlying `GtkNeverTrigger` instance.
/// It provides the methods that can operate on this data type through `NeverTriggerProtocol` conformance.
/// Use `NeverTrigger` as a strong reference or owner of a `GtkNeverTrigger` instance.
///
open class NeverTrigger: ShortcutTrigger, NeverTriggerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NeverTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNeverTrigger>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NeverTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNeverTrigger>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NeverTrigger` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NeverTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NeverTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNeverTrigger>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NeverTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNeverTrigger>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNeverTrigger`.
    /// i.e., ownership is transferred to the `NeverTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNeverTrigger>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NeverTriggerProtocol`
    /// Will retain `GtkNeverTrigger`.
    /// - Parameter other: an instance of a related type that implements `NeverTriggerProtocol`
    @inlinable public init<T: NeverTriggerProtocol>(neverTrigger other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no NeverTrigger properties

public enum NeverTriggerSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: NeverTrigger has no signals
// MARK: NeverTrigger Class: NeverTriggerProtocol extension (methods and fields)
public extension NeverTriggerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNeverTrigger` instance.
    @inlinable var never_trigger_ptr: UnsafeMutablePointer<GtkNeverTrigger>! { return ptr?.assumingMemoryBound(to: GtkNeverTrigger.self) }



}



// MARK: - NoSelection Class

/// `GtkNoSelection` is a `GtkSelectionModel` that does not allow selecting
/// anything.
/// 
/// This model is meant to be used as a simple wrapper around a `GListModel`
/// when a `GtkSelectionModel` is required.
///
/// The `NoSelectionProtocol` protocol exposes the methods and properties of an underlying `GtkNoSelection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NoSelection`.
/// Alternatively, use `NoSelectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NoSelectionProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol, SelectionModelProtocol {
        /// Untyped pointer to the underlying `GtkNoSelection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNoSelection` instance.
    var no_selection_ptr: UnsafeMutablePointer<GtkNoSelection>! { get }

    /// Required Initialiser for types conforming to `NoSelectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkNoSelection` is a `GtkSelectionModel` that does not allow selecting
/// anything.
/// 
/// This model is meant to be used as a simple wrapper around a `GListModel`
/// when a `GtkSelectionModel` is required.
///
/// The `NoSelectionRef` type acts as a lightweight Swift reference to an underlying `GtkNoSelection` instance.
/// It exposes methods that can operate on this data type through `NoSelectionProtocol` conformance.
/// Use `NoSelectionRef` only as an `unowned` reference to an existing `GtkNoSelection` instance.
///
public struct NoSelectionRef: NoSelectionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNoSelection` instance.
    /// For type-safe access, use the generated, typed pointer `no_selection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NoSelectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNoSelection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNoSelection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNoSelection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNoSelection>?) {
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

    /// Reference intialiser for a related type that implements `NoSelectionProtocol`
    @inlinable init<T: NoSelectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NoSelectionProtocol>(_ other: T) -> NoSelectionRef { NoSelectionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new selection to handle `model`.
    @inlinable init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?) {
        let rv = gtk_no_selection_new(model?.list_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkNoSelection` is a `GtkSelectionModel` that does not allow selecting
/// anything.
/// 
/// This model is meant to be used as a simple wrapper around a `GListModel`
/// when a `GtkSelectionModel` is required.
///
/// The `NoSelection` type acts as a reference-counted owner of an underlying `GtkNoSelection` instance.
/// It provides the methods that can operate on this data type through `NoSelectionProtocol` conformance.
/// Use `NoSelection` as a strong reference or owner of a `GtkNoSelection` instance.
///
open class NoSelection: GLibObject.Object, NoSelectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NoSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNoSelection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NoSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNoSelection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NoSelection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NoSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NoSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNoSelection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NoSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNoSelection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNoSelection`.
    /// i.e., ownership is transferred to the `NoSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNoSelection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NoSelectionProtocol`
    /// Will retain `GtkNoSelection`.
    /// - Parameter other: an instance of a related type that implements `NoSelectionProtocol`
    @inlinable public init<T: NoSelectionProtocol>(noSelection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new selection to handle `model`.
    @inlinable public init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?) {
        let rv = gtk_no_selection_new(model?.list_model_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum NoSelectionPropertyName: String, PropertyNameProtocol {
    /// The model being managed.
    case model = "model"
}

public extension NoSelectionProtocol {
    /// Bind a `NoSelectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NoSelectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NoSelection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NoSelectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NoSelection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NoSelectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NoSelectionSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The model being managed.
    case notifyModel = "notify::model"
}

// MARK: NoSelection has no signals
// MARK: NoSelection Class: NoSelectionProtocol extension (methods and fields)
public extension NoSelectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNoSelection` instance.
    @inlinable var no_selection_ptr: UnsafeMutablePointer<GtkNoSelection>! { return ptr?.assumingMemoryBound(to: GtkNoSelection.self) }

    /// Gets the model that `self` is wrapping.
    @inlinable func getModel() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_no_selection_get_model(no_selection_ptr))
        return rv
    }

    /// Sets the model that `self` should wrap.
    /// 
    /// If `model` is `nil`, this model will be empty.
    @inlinable func set(model: GIO.ListModelRef? = nil) {
        gtk_no_selection_set_model(no_selection_ptr, model?.list_model_ptr)
    
    }
    /// Sets the model that `self` should wrap.
    /// 
    /// If `model` is `nil`, this model will be empty.
    @inlinable func set<ListModelT: GIO.ListModelProtocol>(model: ListModelT?) {
        gtk_no_selection_set_model(no_selection_ptr, model?.list_model_ptr)
    
    }
    /// The model being managed.
    @inlinable var model: GIO.ListModelRef! {
        /// Gets the model that `self` is wrapping.
        get {
            let rv = GIO.ListModelRef(gtk_no_selection_get_model(no_selection_ptr))
            return rv
        }
        /// Sets the model that `self` should wrap.
        /// 
        /// If `model` is `nil`, this model will be empty.
        nonmutating set {
            gtk_no_selection_set_model(no_selection_ptr, UnsafeMutablePointer<GListModel>(newValue?.list_model_ptr))
        }
    }


}



// MARK: - Notebook Class

/// `GtkNotebook` is a container whose children are pages switched
/// between using tabs.
/// 
/// ![An example GtkNotebook](notebook.png)
/// 
/// There are many configuration options for `GtkNotebook`. Among
/// other things, you can choose on which edge the tabs appear
/// (see [method`Gtk.Notebook.set_tab_pos`]), whether, if there are
/// too many tabs to fit the notebook should be made bigger or scrolling
/// arrows added (see [method`Gtk.Notebook.set_scrollable`]), and whether
/// there will be a popup menu allowing the users to switch pages.
/// (see [method`Gtk.Notebook.popup_enable`]).
/// 
/// # GtkNotebook as GtkBuildable
/// 
/// The `GtkNotebook` implementation of the `GtkBuildable` interface
/// supports placing children into tabs by specifying “tab” as the
/// “type” attribute of a &lt;child&gt; element. Note that the content
/// of the tab must be created before the tab can be filled.
/// A tab child can be specified without specifying a &lt;child&gt;
/// type attribute.
/// 
/// To add a child widget in the notebooks action area, specify
/// "action-start" or “action-end” as the “type” attribute of the
/// &lt;child&gt; element.
/// 
/// An example of a UI definition fragment with `GtkNotebook`:
/// 
/// ```xml
/// &lt;object class="GtkNotebook"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkLabel" id="notebook-content"&gt;
///       &lt;property name="label"&gt;Content&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child type="tab"&gt;
///     &lt;object class="GtkLabel" id="notebook-tab"&gt;
///       &lt;property name="label"&gt;Tab&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// notebook
/// ├── header.top
/// │   ├── [&lt;action widget&gt;]
/// │   ├── tabs
/// │   │   ├── [arrow]
/// │   │   ├── tab
/// │   │   │   ╰── &lt;tab label&gt;
/// ┊   ┊   ┊
/// │   │   ├── tab[.reorderable-page]
/// │   │   │   ╰── &lt;tab label&gt;
/// │   │   ╰── [arrow]
/// │   ╰── [&lt;action widget&gt;]
/// │
/// ╰── stack
///     ├── &lt;child&gt;
///     ┊
///     ╰── &lt;child&gt;
/// ```
/// 
/// `GtkNotebook` has a main CSS node with name `notebook`, a subnode
/// with name `header` and below that a subnode with name `tabs` which
/// contains one subnode per tab with name `tab`.
/// 
/// If action widgets are present, their CSS nodes are placed next
/// to the `tabs` node. If the notebook is scrollable, CSS nodes with
/// name `arrow` are placed as first and last child of the `tabs` node.
/// 
/// The main node gets the `.frame` style class when the notebook
/// has a border (see [method`Gtk.Notebook.set_show_border`]).
/// 
/// The header node gets one of the style class `.top`, `.bottom`,
/// `.left` or `.right`, depending on where the tabs are placed. For
/// reorderable pages, the tab node gets the `.reorderable-page` class.
/// 
/// A `tab` node gets the `.dnd` style class while it is moved with drag-and-drop.
/// 
/// The nodes are always arranged from left-to-right, regardless of text direction.
/// 
/// # Accessibility
/// 
/// `GtkNotebook` uses the following roles:
/// 
///  - `GTK_ACCESSIBLE_ROLE_GROUP` for the notebook widget
///  - `GTK_ACCESSIBLE_ROLE_TAB_LIST` for the list of tabs
///  - `GTK_ACCESSIBLE_ROLE_TAB` role for each tab
///  - `GTK_ACCESSIBLE_ROLE_TAB_PANEL` for each page
///
/// The `NotebookProtocol` protocol exposes the methods and properties of an underlying `GtkNotebook` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Notebook`.
/// Alternatively, use `NotebookRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NotebookProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkNotebook` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebook` instance.
    var notebook_ptr: UnsafeMutablePointer<GtkNotebook>! { get }

    /// Required Initialiser for types conforming to `NotebookProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkNotebook` is a container whose children are pages switched
/// between using tabs.
/// 
/// ![An example GtkNotebook](notebook.png)
/// 
/// There are many configuration options for `GtkNotebook`. Among
/// other things, you can choose on which edge the tabs appear
/// (see [method`Gtk.Notebook.set_tab_pos`]), whether, if there are
/// too many tabs to fit the notebook should be made bigger or scrolling
/// arrows added (see [method`Gtk.Notebook.set_scrollable`]), and whether
/// there will be a popup menu allowing the users to switch pages.
/// (see [method`Gtk.Notebook.popup_enable`]).
/// 
/// # GtkNotebook as GtkBuildable
/// 
/// The `GtkNotebook` implementation of the `GtkBuildable` interface
/// supports placing children into tabs by specifying “tab” as the
/// “type” attribute of a &lt;child&gt; element. Note that the content
/// of the tab must be created before the tab can be filled.
/// A tab child can be specified without specifying a &lt;child&gt;
/// type attribute.
/// 
/// To add a child widget in the notebooks action area, specify
/// "action-start" or “action-end” as the “type” attribute of the
/// &lt;child&gt; element.
/// 
/// An example of a UI definition fragment with `GtkNotebook`:
/// 
/// ```xml
/// &lt;object class="GtkNotebook"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkLabel" id="notebook-content"&gt;
///       &lt;property name="label"&gt;Content&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child type="tab"&gt;
///     &lt;object class="GtkLabel" id="notebook-tab"&gt;
///       &lt;property name="label"&gt;Tab&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// notebook
/// ├── header.top
/// │   ├── [&lt;action widget&gt;]
/// │   ├── tabs
/// │   │   ├── [arrow]
/// │   │   ├── tab
/// │   │   │   ╰── &lt;tab label&gt;
/// ┊   ┊   ┊
/// │   │   ├── tab[.reorderable-page]
/// │   │   │   ╰── &lt;tab label&gt;
/// │   │   ╰── [arrow]
/// │   ╰── [&lt;action widget&gt;]
/// │
/// ╰── stack
///     ├── &lt;child&gt;
///     ┊
///     ╰── &lt;child&gt;
/// ```
/// 
/// `GtkNotebook` has a main CSS node with name `notebook`, a subnode
/// with name `header` and below that a subnode with name `tabs` which
/// contains one subnode per tab with name `tab`.
/// 
/// If action widgets are present, their CSS nodes are placed next
/// to the `tabs` node. If the notebook is scrollable, CSS nodes with
/// name `arrow` are placed as first and last child of the `tabs` node.
/// 
/// The main node gets the `.frame` style class when the notebook
/// has a border (see [method`Gtk.Notebook.set_show_border`]).
/// 
/// The header node gets one of the style class `.top`, `.bottom`,
/// `.left` or `.right`, depending on where the tabs are placed. For
/// reorderable pages, the tab node gets the `.reorderable-page` class.
/// 
/// A `tab` node gets the `.dnd` style class while it is moved with drag-and-drop.
/// 
/// The nodes are always arranged from left-to-right, regardless of text direction.
/// 
/// # Accessibility
/// 
/// `GtkNotebook` uses the following roles:
/// 
///  - `GTK_ACCESSIBLE_ROLE_GROUP` for the notebook widget
///  - `GTK_ACCESSIBLE_ROLE_TAB_LIST` for the list of tabs
///  - `GTK_ACCESSIBLE_ROLE_TAB` role for each tab
///  - `GTK_ACCESSIBLE_ROLE_TAB_PANEL` for each page
///
/// The `NotebookRef` type acts as a lightweight Swift reference to an underlying `GtkNotebook` instance.
/// It exposes methods that can operate on this data type through `NotebookProtocol` conformance.
/// Use `NotebookRef` only as an `unowned` reference to an existing `GtkNotebook` instance.
///
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

/// `GtkNotebook` is a container whose children are pages switched
/// between using tabs.
/// 
/// ![An example GtkNotebook](notebook.png)
/// 
/// There are many configuration options for `GtkNotebook`. Among
/// other things, you can choose on which edge the tabs appear
/// (see [method`Gtk.Notebook.set_tab_pos`]), whether, if there are
/// too many tabs to fit the notebook should be made bigger or scrolling
/// arrows added (see [method`Gtk.Notebook.set_scrollable`]), and whether
/// there will be a popup menu allowing the users to switch pages.
/// (see [method`Gtk.Notebook.popup_enable`]).
/// 
/// # GtkNotebook as GtkBuildable
/// 
/// The `GtkNotebook` implementation of the `GtkBuildable` interface
/// supports placing children into tabs by specifying “tab” as the
/// “type” attribute of a &lt;child&gt; element. Note that the content
/// of the tab must be created before the tab can be filled.
/// A tab child can be specified without specifying a &lt;child&gt;
/// type attribute.
/// 
/// To add a child widget in the notebooks action area, specify
/// "action-start" or “action-end” as the “type” attribute of the
/// &lt;child&gt; element.
/// 
/// An example of a UI definition fragment with `GtkNotebook`:
/// 
/// ```xml
/// &lt;object class="GtkNotebook"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkLabel" id="notebook-content"&gt;
///       &lt;property name="label"&gt;Content&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child type="tab"&gt;
///     &lt;object class="GtkLabel" id="notebook-tab"&gt;
///       &lt;property name="label"&gt;Tab&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// notebook
/// ├── header.top
/// │   ├── [&lt;action widget&gt;]
/// │   ├── tabs
/// │   │   ├── [arrow]
/// │   │   ├── tab
/// │   │   │   ╰── &lt;tab label&gt;
/// ┊   ┊   ┊
/// │   │   ├── tab[.reorderable-page]
/// │   │   │   ╰── &lt;tab label&gt;
/// │   │   ╰── [arrow]
/// │   ╰── [&lt;action widget&gt;]
/// │
/// ╰── stack
///     ├── &lt;child&gt;
///     ┊
///     ╰── &lt;child&gt;
/// ```
/// 
/// `GtkNotebook` has a main CSS node with name `notebook`, a subnode
/// with name `header` and below that a subnode with name `tabs` which
/// contains one subnode per tab with name `tab`.
/// 
/// If action widgets are present, their CSS nodes are placed next
/// to the `tabs` node. If the notebook is scrollable, CSS nodes with
/// name `arrow` are placed as first and last child of the `tabs` node.
/// 
/// The main node gets the `.frame` style class when the notebook
/// has a border (see [method`Gtk.Notebook.set_show_border`]).
/// 
/// The header node gets one of the style class `.top`, `.bottom`,
/// `.left` or `.right`, depending on where the tabs are placed. For
/// reorderable pages, the tab node gets the `.reorderable-page` class.
/// 
/// A `tab` node gets the `.dnd` style class while it is moved with drag-and-drop.
/// 
/// The nodes are always arranged from left-to-right, regardless of text direction.
/// 
/// # Accessibility
/// 
/// `GtkNotebook` uses the following roles:
/// 
///  - `GTK_ACCESSIBLE_ROLE_GROUP` for the notebook widget
///  - `GTK_ACCESSIBLE_ROLE_TAB_LIST` for the list of tabs
///  - `GTK_ACCESSIBLE_ROLE_TAB` role for each tab
///  - `GTK_ACCESSIBLE_ROLE_TAB_PANEL` for each page
///
/// The `Notebook` type acts as a reference-counted owner of an underlying `GtkNotebook` instance.
/// It provides the methods that can operate on this data type through `NotebookProtocol` conformance.
/// Use `Notebook` as a strong reference or owner of a `GtkNotebook` instance.
///
open class Notebook: Widget, NotebookProtocol {
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum NotebookPropertyName: String, PropertyNameProtocol {
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
    /// If `true`, pressing the right mouse button on the notebook shows a page switching menu.
    case enablePopup = "enable-popup"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// Group name for tab drag and drop.
    case groupName = "group-name"
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
    /// The index of the current page.
    case page = "page"
    /// A selection model with the pages.
    case pages = "pages"
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
    /// If `true`, scroll arrows are added if there are too many pages to fit.
    case scrollable = "scrollable"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Whether the border should be shown.
    case showBorder = "show-border"
    /// Whether tabs should be shown.
    case showTabs = "show-tabs"
    /// Which side of the notebook holds the tabs.
    case tabPos = "tab-pos"
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

public enum NotebookSignalName: String, SignalNameProtocol {
    case changeCurrentPage = "change-current-page"
    /// The `create-window` signal is emitted when a detachable
    /// tab is dropped on the root window.
    /// 
    /// A handler for this signal can create a window containing
    /// a notebook where the tab will be attached. It is also
    /// responsible for moving/resizing the window and adding the
    /// necessary properties to the notebook (e.g. the
    /// `GtkNotebook`:group-name ).
    case createWindow = "create-window"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    case focusTab = "focus-tab"
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
    case moveFocusOut = "move-focus-out"
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// the `page-added` signal is emitted in the notebook
    /// right after a page is added to the notebook.
    case pageAdded = "page-added"
    /// the `page-removed` signal is emitted in the notebook
    /// right after a page is removed from the notebook.
    case pageRemoved = "page-removed"
    /// the `page-reordered` signal is emitted in the notebook
    /// right after a page has been reordered.
    case pageReordered = "page-reordered"
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
    case reorderTab = "reorder-tab"
    case selectPage = "select-page"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when the user or a function changes the current page.
    case switchPage = "switch-page"
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
    /// If `true`, pressing the right mouse button on the notebook shows a page switching menu.
    case notifyEnablePopup = "notify::enable-popup"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// Group name for tab drag and drop.
    case notifyGroupName = "notify::group-name"
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
    /// The index of the current page.
    case notifyPage = "notify::page"
    /// A selection model with the pages.
    case notifyPages = "notify::pages"
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
    /// If `true`, scroll arrows are added if there are too many pages to fit.
    case notifyScrollable = "notify::scrollable"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Whether the border should be shown.
    case notifyShowBorder = "notify::show-border"
    /// Whether tabs should be shown.
    case notifyShowTabs = "notify::show-tabs"
    /// Which side of the notebook holds the tabs.
    case notifyTabPos = "notify::tab-pos"
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

// MARK: Notebook signals
public extension NotebookProtocol {
    /// Connect a Swift signal handler to the given, typed `NotebookSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: NotebookSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `NotebookSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: NotebookSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `create-window` signal is emitted when a detachable
    /// tab is dropped on the root window.
    /// 
    /// A handler for this signal can create a window containing
    /// a notebook where the tab will be attached. It is also
    /// responsible for moving/resizing the window and adding the
    /// necessary properties to the notebook (e.g. the
    /// `GtkNotebook`:group-name ).
    /// - Note: This represents the underlying `create-window` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter page: the tab of `notebook` that is being detached
    /// - Parameter handler: a `GtkNotebook` that   `page` should be added to
    /// - Warning: a `onCreateWindow` wrapper for this signal could not be generated because it contains unimplemented features: { (8)  nullable argument or return type is not allowed, (9)  Record return type is not yet supported }
    /// - Note: Instead, you can connect `createWindowSignal` using the `connect(signal:)` methods
    static var createWindowSignal: NotebookSignalName { .createWindow }
    /// - Note: This represents the underlying `change-current-page` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changeCurrentPage` signal is emitted
    @discardableResult @inlinable func onChangeCurrentPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: Int) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, Int, Bool>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), Int(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .changeCurrentPage,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `change-current-page` signal for using the `connect(signal:)` methods
    static var changeCurrentPageSignal: NotebookSignalName { .changeCurrentPage }
    
    /// - Note: This represents the underlying `focus-tab` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `focusTab` signal is emitted
    @discardableResult @inlinable func onFocusTab(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: NotebookTab) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, NotebookTab, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), NotebookTab(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .focusTab,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `focus-tab` signal for using the `connect(signal:)` methods
    static var focusTabSignal: NotebookSignalName { .focusTab }
    
    /// - Note: This represents the underlying `move-focus-out` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `moveFocusOut` signal is emitted
    @discardableResult @inlinable func onMoveFocusOut(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: DirectionType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, DirectionType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), DirectionType(arg1))
            return output
        }
        return connect(
            signal: .moveFocusOut,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `move-focus-out` signal for using the `connect(signal:)` methods
    static var moveFocusOutSignal: NotebookSignalName { .moveFocusOut }
    
    /// the `page-added` signal is emitted in the notebook
    /// right after a page is added to the notebook.
    /// - Note: This represents the underlying `page-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the child `GtkWidget` affected
    /// - Parameter pageNum: the new page number for `child`
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `pageAdded` signal is emitted
    @discardableResult @inlinable func onPageAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ child: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return connect(
            signal: .pageAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `page-added` signal for using the `connect(signal:)` methods
    static var pageAddedSignal: NotebookSignalName { .pageAdded }
    
    /// the `page-removed` signal is emitted in the notebook
    /// right after a page is removed from the notebook.
    /// - Note: This represents the underlying `page-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the child `GtkWidget` affected
    /// - Parameter pageNum: the `child` page number
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `pageRemoved` signal is emitted
    @discardableResult @inlinable func onPageRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ child: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return connect(
            signal: .pageRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `page-removed` signal for using the `connect(signal:)` methods
    static var pageRemovedSignal: NotebookSignalName { .pageRemoved }
    
    /// the `page-reordered` signal is emitted in the notebook
    /// right after a page has been reordered.
    /// - Note: This represents the underlying `page-reordered` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the child `GtkWidget` affected
    /// - Parameter pageNum: the new page number for `child`
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `pageReordered` signal is emitted
    @discardableResult @inlinable func onPageReordered(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ child: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return connect(
            signal: .pageReordered,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `page-reordered` signal for using the `connect(signal:)` methods
    static var pageReorderedSignal: NotebookSignalName { .pageReordered }
    
    /// - Note: This represents the underlying `reorder-tab` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter p0: none
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `reorderTab` signal is emitted
    @discardableResult @inlinable func onReorderTab(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: DirectionType, _ p0: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, DirectionType, Bool, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), DirectionType(arg1), ((arg2) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .reorderTab,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `reorder-tab` signal for using the `connect(signal:)` methods
    static var reorderTabSignal: NotebookSignalName { .reorderTab }
    
    /// - Note: This represents the underlying `select-page` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectPage` signal is emitted
    @discardableResult @inlinable func onSelectPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, Bool, Bool>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), ((arg1) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .selectPage,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `select-page` signal for using the `connect(signal:)` methods
    static var selectPageSignal: NotebookSignalName { .selectPage }
    
    /// Emitted when the user or a function changes the current page.
    /// - Note: This represents the underlying `switch-page` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter page: the new current page
    /// - Parameter pageNum: the index of the page
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `switchPage` signal is emitted
    @discardableResult @inlinable func onSwitchPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ page: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return connect(
            signal: .switchPage,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `switch-page` signal for using the `connect(signal:)` methods
    static var switchPageSignal: NotebookSignalName { .switchPage }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::enable-popup` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyEnablePopup` signal is emitted
    @discardableResult @inlinable func onNotifyEnablePopup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyEnablePopup,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::enable-popup` signal for using the `connect(signal:)` methods
    static var notifyEnablePopupSignal: NotebookSignalName { .notifyEnablePopup }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::group-name` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyGroupName` signal is emitted
    @discardableResult @inlinable func onNotifyGroupName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyGroupName,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::group-name` signal for using the `connect(signal:)` methods
    static var notifyGroupNameSignal: NotebookSignalName { .notifyGroupName }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::page` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPage` signal is emitted
    @discardableResult @inlinable func onNotifyPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPage,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::page` signal for using the `connect(signal:)` methods
    static var notifyPageSignal: NotebookSignalName { .notifyPage }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::pages` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPages` signal is emitted
    @discardableResult @inlinable func onNotifyPages(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPages,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::pages` signal for using the `connect(signal:)` methods
    static var notifyPagesSignal: NotebookSignalName { .notifyPages }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::scrollable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyScrollable` signal is emitted
    @discardableResult @inlinable func onNotifyScrollable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyScrollable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::scrollable` signal for using the `connect(signal:)` methods
    static var notifyScrollableSignal: NotebookSignalName { .notifyScrollable }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::show-border` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowBorder` signal is emitted
    @discardableResult @inlinable func onNotifyShowBorder(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowBorder,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-border` signal for using the `connect(signal:)` methods
    static var notifyShowBorderSignal: NotebookSignalName { .notifyShowBorder }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::show-tabs` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowTabs` signal is emitted
    @discardableResult @inlinable func onNotifyShowTabs(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowTabs,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-tabs` signal for using the `connect(signal:)` methods
    static var notifyShowTabsSignal: NotebookSignalName { .notifyShowTabs }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::tab-pos` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTabPos` signal is emitted
    @discardableResult @inlinable func onNotifyTabPos(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTabPos,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::tab-pos` signal for using the `connect(signal:)` methods
    static var notifyTabPosSignal: NotebookSignalName { .notifyTabPos }
    
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
    /// This function is very similar to [method`Gtk.Notebook.remove_page`],
    /// but additionally informs the notebook that the removal
    /// is happening as part of a tab DND operation, which should
    /// not be cancelled.
    @inlinable func detachTab<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_notebook_detach_tab(notebook_ptr, child.widget_ptr)
    
    }

    /// Gets one of the action widgets.
    /// 
    /// See [method`Gtk.Notebook.set_action_widget`].
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

    /// Returns the `GtkNotebookPage` for `child`.
    @inlinable func getPage<WidgetT: WidgetProtocol>(child: WidgetT) -> NotebookPageRef! {
        let rv = NotebookPageRef(gconstpointer: gconstpointer(gtk_notebook_get_page(notebook_ptr, child.widget_ptr)))
        return rv
    }

    /// Returns a `GListModel` that contains the pages of the notebook.
    /// 
    /// This can be used to keep an up-to-date view. The model also
    /// implements [iface`Gtk.SelectionModel`] and can be used to track
    /// and modify the visible page.
    @inlinable func getPages() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_notebook_get_pages(notebook_ptr))
        return rv
    }

    /// Returns whether the tab label area has arrows for scrolling.
    @inlinable func getScrollable() -> Bool {
        let rv = ((gtk_notebook_get_scrollable(notebook_ptr)) != 0)
        return rv
    }

    /// Returns whether a bevel will be drawn around the notebook pages.
    @inlinable func getShowBorder() -> Bool {
        let rv = ((gtk_notebook_get_show_border(notebook_ptr)) != 0)
        return rv
    }

    /// Returns whether the tabs of the notebook are shown.
    @inlinable func getShowTabs() -> Bool {
        let rv = ((gtk_notebook_get_show_tabs(notebook_ptr)) != 0)
        return rv
    }

    /// Returns whether the tab contents can be detached from `notebook`.
    @inlinable func getTabDetachable<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_notebook_get_tab_detachable(notebook_ptr, child.widget_ptr)) != 0)
        return rv
    }

    /// Returns the tab label widget for the page `child`.
    /// 
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

    /// Gets the edge at which the tabs are drawn.
    @inlinable func getTabPos() -> GtkPositionType {
        let rv = gtk_notebook_get_tab_pos(notebook_ptr)
        return rv
    }

    /// Gets whether the tab can be reordered via drag and drop or not.
    @inlinable func getTabReorderable<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_notebook_get_tab_reorderable(notebook_ptr, child.widget_ptr)) != 0)
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

    /// Switches to the next page.
    /// 
    /// Nothing happens if the current page is the last page.
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

    /// Enables the popup menu.
    /// 
    /// If the user clicks with the right mouse button on the tab labels,
    /// a menu with all the pages will be popped up.
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

    /// Switches to the previous page.
    /// 
    /// Nothing happens if the current page is the first page.
    @inlinable func prevPage() {
        gtk_notebook_prev_page(notebook_ptr)
    
    }

    /// Removes a page from the notebook given its index
    /// in the notebook.
    @inlinable func removePage(pageNum: Int) {
        gtk_notebook_remove_page(notebook_ptr, gint(pageNum))
    
    }

    /// Reorders the page containing `child`, so that it appears in position
    /// `position`.
    /// 
    /// If `position` is greater than or equal to the number of children in
    /// the list or negative, `child` will be moved to the end of the list.
    @inlinable func reorder<WidgetT: WidgetProtocol>(child: WidgetT, position: Int) {
        gtk_notebook_reorder_child(notebook_ptr, child.widget_ptr, gint(position))
    
    }

    /// Sets `widget` as one of the action widgets.
    /// 
    /// Depending on the pack type the widget will be placed before
    /// or after the tabs. You can use a `GtkBox` if you need to pack
    /// more than one widget on the same side.
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
    @inlinable func set(groupName: UnsafePointer<CChar>? = nil) {
        gtk_notebook_set_group_name(notebook_ptr, groupName)
    
    }

    /// Changes the menu label for the page containing `child`.
    @inlinable func setMenuLabel<WidgetT: WidgetProtocol>(child: WidgetT, menuLabel: WidgetT?) {
        gtk_notebook_set_menu_label(notebook_ptr, child.widget_ptr, menuLabel?.widget_ptr)
    
    }

    /// Creates a new label and sets it as the menu label of `child`.
    @inlinable func setMenuLabelText<WidgetT: WidgetProtocol>(child: WidgetT, menuText: UnsafePointer<CChar>!) {
        gtk_notebook_set_menu_label_text(notebook_ptr, child.widget_ptr, menuText)
    
    }

    /// Sets whether the tab label area will have arrows for
    /// scrolling if there are too many tabs to fit in the area.
    @inlinable func set(scrollable: Bool) {
        gtk_notebook_set_scrollable(notebook_ptr, gboolean((scrollable) ? 1 : 0))
    
    }

    /// Sets whether a bevel will be drawn around the notebook pages.
    /// 
    /// This only has a visual effect when the tabs are not shown.
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
    /// Note that two notebooks must share a common group identificator
    /// (see [method`Gtk.Notebook.set_group_name`]) to allow automatic tabs
    /// interchange between them.
    /// 
    /// If you want a widget to interact with a notebook through DnD
    /// (i.e.: accept dragged tabs from it) it must be set as a drop
    /// destination and accept the target “GTK_NOTEBOOK_TAB”. The notebook
    /// will fill the selection with a GtkWidget** pointing to the child
    /// widget that corresponds to the dropped tab.
    /// 
    /// Note that you should use [method`Gtk.Notebook.detach_tab`] instead
    /// of [method`Gtk.Notebook.remove_page`] if you want to remove the tab
    /// from the source notebook as part of accepting a drop. Otherwise,
    /// the source notebook will think that the dragged tab was removed
    /// from underneath the ongoing drag operation, and will initiate a
    /// drag cancel animation.
    /// 
    /// ```c
    /// static void
    /// on_drag_data_received (GtkWidget        *widget,
    ///                        GdkDrop          *drop,
    ///                        GtkSelectionData *data,
    ///                        guint             time,
    ///                        gpointer          user_data)
    /// {
    ///   GtkDrag *drag;
    ///   GtkWidget *notebook;
    ///   GtkWidget **child;
    /// 
    ///   drag = gtk_drop_get_drag (drop);
    ///   notebook = g_object_get_data (drag, "gtk-notebook-drag-origin");
    ///   child = (void*) gtk_selection_data_get_data (data);
    /// 
    ///   // process_widget (*child);
    /// 
    ///   gtk_notebook_detach_tab (GTK_NOTEBOOK (notebook), *child);
    /// }
    /// ```
    /// 
    /// If you want a notebook to accept drags from other widgets,
    /// you will have to set your own DnD code to do it.
    @inlinable func setTabDetachable<WidgetT: WidgetProtocol>(child: WidgetT, detachable: Bool) {
        gtk_notebook_set_tab_detachable(notebook_ptr, child.widget_ptr, gboolean((detachable) ? 1 : 0))
    
    }

    /// Changes the tab label for `child`.
    /// 
    /// If `nil` is specified for `tab_label`, then the page will
    /// have the label “page N”.
    @inlinable func setTabLabel<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?) {
        gtk_notebook_set_tab_label(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr)
    
    }

    /// Creates a new label and sets it as the tab label for the page
    /// containing `child`.
    @inlinable func setTabLabelText<WidgetT: WidgetProtocol>(child: WidgetT, tabText: UnsafePointer<CChar>!) {
        gtk_notebook_set_tab_label_text(notebook_ptr, child.widget_ptr, tabText)
    
    }

    /// Sets the edge at which the tabs are drawn.
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

    /// A selection model with the pages.
    @inlinable var pages: GIO.ListModelRef! {
        /// Returns a `GListModel` that contains the pages of the notebook.
        /// 
        /// This can be used to keep an up-to-date view. The model also
        /// implements [iface`Gtk.SelectionModel`] and can be used to track
        /// and modify the visible page.
        get {
            let rv = GIO.ListModelRef(gtk_notebook_get_pages(notebook_ptr))
            return rv
        }
    }

    /// If `true`, scroll arrows are added if there are too many pages to fit.
    @inlinable var scrollable: Bool {
        /// Returns whether the tab label area has arrows for scrolling.
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
    @inlinable var showBorder: Bool {
        /// Returns whether a bevel will be drawn around the notebook pages.
        get {
            let rv = ((gtk_notebook_get_show_border(notebook_ptr)) != 0)
            return rv
        }
        /// Sets whether a bevel will be drawn around the notebook pages.
        /// 
        /// This only has a visual effect when the tabs are not shown.
        nonmutating set {
            gtk_notebook_set_show_border(notebook_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the tabs of the notebook are shown.
    @inlinable var showTabs: Bool {
        /// Returns whether the tabs of the notebook are shown.
        get {
            let rv = ((gtk_notebook_get_show_tabs(notebook_ptr)) != 0)
            return rv
        }
        /// Sets whether to show the tabs for the notebook or not.
        nonmutating set {
            gtk_notebook_set_show_tabs(notebook_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the edge at which the tabs are drawn.
    @inlinable var tabPos: GtkPositionType {
        /// Gets the edge at which the tabs are drawn.
        get {
            let rv = gtk_notebook_get_tab_pos(notebook_ptr)
            return rv
        }
        /// Sets the edge at which the tabs are drawn.
        nonmutating set {
            gtk_notebook_set_tab_pos(notebook_ptr, newValue)
        }
    }


}



// MARK: - NotebookPage Class

/// `GtkNotebookPage` is an auxiliary object used by `GtkNotebook`.
///
/// The `NotebookPageProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookPage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookPage`.
/// Alternatively, use `NotebookPageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NotebookPageProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkNotebookPage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebookPage` instance.
    var notebook_page_ptr: UnsafeMutablePointer<GtkNotebookPage>! { get }

    /// Required Initialiser for types conforming to `NotebookPageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkNotebookPage` is an auxiliary object used by `GtkNotebook`.
///
/// The `NotebookPageRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookPage` instance.
/// It exposes methods that can operate on this data type through `NotebookPageProtocol` conformance.
/// Use `NotebookPageRef` only as an `unowned` reference to an existing `GtkNotebookPage` instance.
///
public struct NotebookPageRef: NotebookPageProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNotebookPage` instance.
    /// For type-safe access, use the generated, typed pointer `notebook_page_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotebookPageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNotebookPage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNotebookPage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNotebookPage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNotebookPage>?) {
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

    /// Reference intialiser for a related type that implements `NotebookPageProtocol`
    @inlinable init<T: NotebookPageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NotebookPageProtocol>(_ other: T) -> NotebookPageRef { NotebookPageRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkNotebookPage` is an auxiliary object used by `GtkNotebook`.
///
/// The `NotebookPage` type acts as a reference-counted owner of an underlying `GtkNotebookPage` instance.
/// It provides the methods that can operate on this data type through `NotebookPageProtocol` conformance.
/// Use `NotebookPage` as a strong reference or owner of a `GtkNotebookPage` instance.
///
open class NotebookPage: GLibObject.Object, NotebookPageProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNotebookPage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNotebookPage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNotebookPage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNotebookPage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNotebookPage`.
    /// i.e., ownership is transferred to the `NotebookPage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNotebookPage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NotebookPageProtocol`
    /// Will retain `GtkNotebookPage`.
    /// - Parameter other: an instance of a related type that implements `NotebookPageProtocol`
    @inlinable public init<T: NotebookPageProtocol>(notebookPage other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum NotebookPagePropertyName: String, PropertyNameProtocol {
    /// The child for this page.
    case child = "child"
    /// Whether the tab is detachable.
    case detachable = "detachable"
    /// The label widget displayed in the childs menu entry.
    case menu = "menu"
    /// The text of the menu widget.
    case menuLabel = "menu-label"
    /// The index of the child in the parent.
    case position = "position"
    /// Whether the tab is reorderable by user action.
    case reorderable = "reorderable"
    /// The tab widget for tihs page.
    case tab = "tab"
    /// Whether to expand the childs tab.
    case tabExpand = "tab-expand"
    /// Whether the childs tab should fill the allocated area.
    case tabFill = "tab-fill"
    /// The text of the tab widget.
    case tabLabel = "tab-label"
}

public extension NotebookPageProtocol {
    /// Bind a `NotebookPagePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NotebookPagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NotebookPage property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NotebookPagePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NotebookPage property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NotebookPagePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NotebookPageSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The child for this page.
    case notifyChild = "notify::child"
    /// Whether the tab is detachable.
    case notifyDetachable = "notify::detachable"
    /// The label widget displayed in the childs menu entry.
    case notifyMenu = "notify::menu"
    /// The text of the menu widget.
    case notifyMenuLabel = "notify::menu-label"
    /// The index of the child in the parent.
    case notifyPosition = "notify::position"
    /// Whether the tab is reorderable by user action.
    case notifyReorderable = "notify::reorderable"
    /// The tab widget for tihs page.
    case notifyTab = "notify::tab"
    /// Whether to expand the childs tab.
    case notifyTabExpand = "notify::tab-expand"
    /// Whether the childs tab should fill the allocated area.
    case notifyTabFill = "notify::tab-fill"
    /// The text of the tab widget.
    case notifyTabLabel = "notify::tab-label"
}

// MARK: NotebookPage has no signals
// MARK: NotebookPage Class: NotebookPageProtocol extension (methods and fields)
public extension NotebookPageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookPage` instance.
    @inlinable var notebook_page_ptr: UnsafeMutablePointer<GtkNotebookPage>! { return ptr?.assumingMemoryBound(to: GtkNotebookPage.self) }

    /// Returns the notebook child to which `page` belongs.
    @inlinable func getChild() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_notebook_page_get_child(notebook_page_ptr)))
        return rv
    }
    /// The child for this page.
    @inlinable var child: WidgetRef! {
        /// Returns the notebook child to which `page` belongs.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_notebook_page_get_child(notebook_page_ptr)))
            return rv
        }
    }


}



// MARK: - NothingAction Class

/// A `GtkShortcutAction` that does nothing.
///
/// The `NothingActionProtocol` protocol exposes the methods and properties of an underlying `GtkNothingAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NothingAction`.
/// Alternatively, use `NothingActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NothingActionProtocol: ShortcutActionProtocol {
        /// Untyped pointer to the underlying `GtkNothingAction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNothingAction` instance.
    var nothing_action_ptr: UnsafeMutablePointer<GtkNothingAction>! { get }

    /// Required Initialiser for types conforming to `NothingActionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkShortcutAction` that does nothing.
///
/// The `NothingActionRef` type acts as a lightweight Swift reference to an underlying `GtkNothingAction` instance.
/// It exposes methods that can operate on this data type through `NothingActionProtocol` conformance.
/// Use `NothingActionRef` only as an `unowned` reference to an existing `GtkNothingAction` instance.
///
public struct NothingActionRef: NothingActionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNothingAction` instance.
    /// For type-safe access, use the generated, typed pointer `nothing_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NothingActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNothingAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNothingAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNothingAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNothingAction>?) {
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

    /// Reference intialiser for a related type that implements `NothingActionProtocol`
    @inlinable init<T: NothingActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NothingActionProtocol>(_ other: T) -> NothingActionRef { NothingActionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GtkShortcutAction` that does nothing.
///
/// The `NothingAction` type acts as a reference-counted owner of an underlying `GtkNothingAction` instance.
/// It provides the methods that can operate on this data type through `NothingActionProtocol` conformance.
/// Use `NothingAction` as a strong reference or owner of a `GtkNothingAction` instance.
///
open class NothingAction: ShortcutAction, NothingActionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NothingAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNothingAction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NothingAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNothingAction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NothingAction` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NothingAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NothingAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNothingAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NothingAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNothingAction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNothingAction`.
    /// i.e., ownership is transferred to the `NothingAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNothingAction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NothingActionProtocol`
    /// Will retain `GtkNothingAction`.
    /// - Parameter other: an instance of a related type that implements `NothingActionProtocol`
    @inlinable public init<T: NothingActionProtocol>(nothingAction other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no NothingAction properties

public enum NothingActionSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: NothingAction has no signals
// MARK: NothingAction Class: NothingActionProtocol extension (methods and fields)
public extension NothingActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNothingAction` instance.
    @inlinable var nothing_action_ptr: UnsafeMutablePointer<GtkNothingAction>! { return ptr?.assumingMemoryBound(to: GtkNothingAction.self) }



}



// MARK: - NumericSorter Class

/// `GtkNumericSorter` is a `GtkSorter` that compares numbers.
/// 
/// To obtain the numbers to compare, this sorter evaluates a
/// [class`Gtk.Expression`].
///
/// The `NumericSorterProtocol` protocol exposes the methods and properties of an underlying `GtkNumericSorter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NumericSorter`.
/// Alternatively, use `NumericSorterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NumericSorterProtocol: SorterProtocol {
        /// Untyped pointer to the underlying `GtkNumericSorter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNumericSorter` instance.
    var numeric_sorter_ptr: UnsafeMutablePointer<GtkNumericSorter>! { get }

    /// Required Initialiser for types conforming to `NumericSorterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkNumericSorter` is a `GtkSorter` that compares numbers.
/// 
/// To obtain the numbers to compare, this sorter evaluates a
/// [class`Gtk.Expression`].
///
/// The `NumericSorterRef` type acts as a lightweight Swift reference to an underlying `GtkNumericSorter` instance.
/// It exposes methods that can operate on this data type through `NumericSorterProtocol` conformance.
/// Use `NumericSorterRef` only as an `unowned` reference to an existing `GtkNumericSorter` instance.
///
public struct NumericSorterRef: NumericSorterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNumericSorter` instance.
    /// For type-safe access, use the generated, typed pointer `numeric_sorter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NumericSorterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNumericSorter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNumericSorter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNumericSorter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNumericSorter>?) {
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

    /// Reference intialiser for a related type that implements `NumericSorterProtocol`
    @inlinable init<T: NumericSorterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NumericSorterProtocol>(_ other: T) -> NumericSorterRef { NumericSorterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new numeric sorter using the given `expression`.
    /// 
    /// Smaller numbers will be sorted first. You can call
    /// [method`Gtk.NumericSorter.set_sort_order`] to change this.
    @inlinable init<ExpressionT: ExpressionProtocol>( expression: ExpressionT?) {
        let rv = gtk_numeric_sorter_new(expression?.expression_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkNumericSorter` is a `GtkSorter` that compares numbers.
/// 
/// To obtain the numbers to compare, this sorter evaluates a
/// [class`Gtk.Expression`].
///
/// The `NumericSorter` type acts as a reference-counted owner of an underlying `GtkNumericSorter` instance.
/// It provides the methods that can operate on this data type through `NumericSorterProtocol` conformance.
/// Use `NumericSorter` as a strong reference or owner of a `GtkNumericSorter` instance.
///
open class NumericSorter: Sorter, NumericSorterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumericSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNumericSorter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumericSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNumericSorter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumericSorter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumericSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumericSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNumericSorter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumericSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNumericSorter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNumericSorter`.
    /// i.e., ownership is transferred to the `NumericSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNumericSorter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NumericSorterProtocol`
    /// Will retain `GtkNumericSorter`.
    /// - Parameter other: an instance of a related type that implements `NumericSorterProtocol`
    @inlinable public init<T: NumericSorterProtocol>(numericSorter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new numeric sorter using the given `expression`.
    /// 
    /// Smaller numbers will be sorted first. You can call
    /// [method`Gtk.NumericSorter.set_sort_order`] to change this.
    @inlinable public init<ExpressionT: ExpressionProtocol>( expression: ExpressionT?) {
        let rv = gtk_numeric_sorter_new(expression?.expression_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum NumericSorterPropertyName: String, PropertyNameProtocol {
    /// The expression to evaluate on items to get a number to compare with.
    case expression = "expression"
    /// Whether the sorter will sort smaller numbers first.
    case sortOrder = "sort-order"
}

public extension NumericSorterProtocol {
    /// Bind a `NumericSorterPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NumericSorterPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NumericSorter property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NumericSorterPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NumericSorter property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NumericSorterPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NumericSorterSignalName: String, SignalNameProtocol {
    /// Emitted whenever the sorter changed.
    /// 
    /// Users of the sorter should then update the sort order
    /// again via `gtk_sorter_compare()`.
    /// 
    /// [class`Gtk.SortListModel`] handles this signal automatically.
    /// 
    /// Depending on the `change` parameter, it may be possible to update
    /// the sort order without a full resorting. Refer to the
    /// [enum`Gtk.SorterChange`] documentation for details.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The expression to evaluate on items to get a number to compare with.
    case notifyExpression = "notify::expression"
    /// Whether the sorter will sort smaller numbers first.
    case notifySortOrder = "notify::sort-order"
}

// MARK: NumericSorter has no signals
// MARK: NumericSorter Class: NumericSorterProtocol extension (methods and fields)
public extension NumericSorterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNumericSorter` instance.
    @inlinable var numeric_sorter_ptr: UnsafeMutablePointer<GtkNumericSorter>! { return ptr?.assumingMemoryBound(to: GtkNumericSorter.self) }

    /// Gets the expression that is evaluated to obtain numbers from items.
    @inlinable func getExpression() -> ExpressionRef! {
        let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_numeric_sorter_get_expression(numeric_sorter_ptr)))
        return rv
    }

    /// Gets whether this sorter will sort smaller numbers first.
    @inlinable func getSortOrder() -> GtkSortType {
        let rv = gtk_numeric_sorter_get_sort_order(numeric_sorter_ptr)
        return rv
    }

    /// Sets the expression that is evaluated to obtain numbers from items.
    /// 
    /// Unless an expression is set on `self`, the sorter will always
    /// compare items as invalid.
    /// 
    /// The expression must have a return type that can be compared
    /// numerically, such as `G_TYPE_INT` or `G_TYPE_DOUBLE`.
    @inlinable func set(expression: ExpressionRef? = nil) {
        gtk_numeric_sorter_set_expression(numeric_sorter_ptr, expression?.expression_ptr)
    
    }
    /// Sets the expression that is evaluated to obtain numbers from items.
    /// 
    /// Unless an expression is set on `self`, the sorter will always
    /// compare items as invalid.
    /// 
    /// The expression must have a return type that can be compared
    /// numerically, such as `G_TYPE_INT` or `G_TYPE_DOUBLE`.
    @inlinable func set<ExpressionT: ExpressionProtocol>(expression: ExpressionT?) {
        gtk_numeric_sorter_set_expression(numeric_sorter_ptr, expression?.expression_ptr)
    
    }

    /// Sets whether to sort smaller numbers before larger ones.
    @inlinable func set(sortOrder: GtkSortType) {
        gtk_numeric_sorter_set_sort_order(numeric_sorter_ptr, sortOrder)
    
    }
    /// The expression to evaluate on items to get a number to compare with.
    @inlinable var expression: ExpressionRef! {
        /// Gets the expression that is evaluated to obtain numbers from items.
        get {
            let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_numeric_sorter_get_expression(numeric_sorter_ptr)))
            return rv
        }
        /// Sets the expression that is evaluated to obtain numbers from items.
        /// 
        /// Unless an expression is set on `self`, the sorter will always
        /// compare items as invalid.
        /// 
        /// The expression must have a return type that can be compared
        /// numerically, such as `G_TYPE_INT` or `G_TYPE_DOUBLE`.
        nonmutating set {
            gtk_numeric_sorter_set_expression(numeric_sorter_ptr, UnsafeMutablePointer<GtkExpression>(newValue?.expression_ptr))
        }
    }

    /// Gets whether this sorter will sort smaller numbers first.
    @inlinable var sortOrder: GtkSortType {
        /// Gets whether this sorter will sort smaller numbers first.
        get {
            let rv = gtk_numeric_sorter_get_sort_order(numeric_sorter_ptr)
            return rv
        }
        /// Sets whether to sort smaller numbers before larger ones.
        nonmutating set {
            gtk_numeric_sorter_set_sort_order(numeric_sorter_ptr, newValue)
        }
    }


}



// MARK: - ObjectExpression Class

/// A `GObject` value in a `GtkExpression`.
///
/// The `ObjectExpressionProtocol` protocol exposes the methods and properties of an underlying `GtkObjectExpression` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ObjectExpression`.
/// Alternatively, use `ObjectExpressionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ObjectExpressionProtocol: ExpressionProtocol {
        /// Untyped pointer to the underlying `GtkObjectExpression` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkObjectExpression` instance.
    var object_expression_ptr: UnsafeMutablePointer<GtkObjectExpression>! { get }

    /// Required Initialiser for types conforming to `ObjectExpressionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GObject` value in a `GtkExpression`.
///
/// The `ObjectExpressionRef` type acts as a lightweight Swift reference to an underlying `GtkObjectExpression` instance.
/// It exposes methods that can operate on this data type through `ObjectExpressionProtocol` conformance.
/// Use `ObjectExpressionRef` only as an `unowned` reference to an existing `GtkObjectExpression` instance.
///
public struct ObjectExpressionRef: ObjectExpressionProtocol {
        /// Untyped pointer to the underlying `GtkObjectExpression` instance.
    /// For type-safe access, use the generated, typed pointer `object_expression_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ObjectExpressionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkObjectExpression>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkObjectExpression>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkObjectExpression>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkObjectExpression>?) {
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

    /// Reference intialiser for a related type that implements `ObjectExpressionProtocol`
    @inlinable init<T: ObjectExpressionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GObject` value in a `GtkExpression`.
///
/// The `ObjectExpression` type acts as a reference-counted owner of an underlying `GtkObjectExpression` instance.
/// It provides the methods that can operate on this data type through `ObjectExpressionProtocol` conformance.
/// Use `ObjectExpression` as a strong reference or owner of a `GtkObjectExpression` instance.
///
open class ObjectExpression: Expression, ObjectExpressionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkObjectExpression>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkObjectExpression>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectExpression` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkObjectExpression>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkObjectExpression>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkObjectExpression`.
    /// i.e., ownership is transferred to the `ObjectExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkObjectExpression>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ObjectExpressionProtocol`
    /// Will retain `GtkObjectExpression`.
    /// - Parameter other: an instance of a related type that implements `ObjectExpressionProtocol`
    @inlinable public init<T: ObjectExpressionProtocol>(objectExpression other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ObjectExpression properties

// MARK: no ObjectExpression signals

// MARK: ObjectExpression has no signals
// MARK: ObjectExpression Class: ObjectExpressionProtocol extension (methods and fields)
public extension ObjectExpressionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkObjectExpression` instance.
    @inlinable var object_expression_ptr: UnsafeMutablePointer<GtkObjectExpression>! { return ptr?.assumingMemoryBound(to: GtkObjectExpression.self) }

    /// Gets the object that the expression evaluates to.
    @inlinable func getObject() -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gtk_object_expression_get_object(expression_ptr))
        return rv
    }
    /// Gets the object that the expression evaluates to.
    @inlinable var object: GLibObject.ObjectRef! {
        /// Gets the object that the expression evaluates to.
        get {
            let rv = GLibObject.ObjectRef(gtk_object_expression_get_object(expression_ptr))
            return rv
        }
    }


}



