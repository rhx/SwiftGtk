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
/// it is more efficient to use the default manager created by GTK
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
/// `gtk_recent_manager_get_items()`, which returns a list of `GtkRecentInfo`.
/// 
/// A `GtkRecentManager` is the model used to populate the contents of
/// one, or more `GtkRecentChooser` implementations.
/// 
/// Note that the maximum age of the recently used files list is
/// controllable through the `GtkSettings:gtk`-recent-files-max-age
/// property.
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
/// it is more efficient to use the default manager created by GTK
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
/// `gtk_recent_manager_get_items()`, which returns a list of `GtkRecentInfo`.
/// 
/// A `GtkRecentManager` is the model used to populate the contents of
/// one, or more `GtkRecentChooser` implementations.
/// 
/// Note that the maximum age of the recently used files list is
/// controllable through the `GtkSettings:gtk`-recent-files-max-age
/// property.
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
/// it is more efficient to use the default manager created by GTK
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
/// `gtk_recent_manager_get_items()`, which returns a list of `GtkRecentInfo`.
/// 
/// A `GtkRecentManager` is the model used to populate the contents of
/// one, or more `GtkRecentChooser` implementations.
/// 
/// Note that the maximum age of the recently used files list is
/// controllable through the `GtkSettings:gtk`-recent-files-max-age
/// property.
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
        super.init(gpointer: gpointer(rv))
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
    /// `GtkRecentData` passed in `recent_data`.
    /// 
    /// The passed URI will be used to identify this resource inside the
    /// list.
    /// 
    /// In order to register the new recently used resource, metadata about
    /// the resource must be passed as well as the URI; the metadata is
    /// stored in a `GtkRecentData`, which must contain the MIME
    /// type of the resource pointed by the URI; the name of the application
    /// that is registering the item, and a command line to be used when
    /// launching the item.
    /// 
    /// Optionally, a `GtkRecentData` might contain a UTF-8 string
    /// to be used when viewing the item instead of the last component of
    /// the URI; a short description of the item; whether the item should
    /// be considered private - that is, should be displayed only by the
    /// applications that have registered it.
    @inlinable func addFull<RecentDataT: RecentDataProtocol>(uri: UnsafePointer<CChar>!, recentData: RecentDataT) -> Bool {
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
    @inlinable func addItem(uri: UnsafePointer<CChar>!) -> Bool {
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
    @inlinable func hasItem(uri: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_recent_manager_has_item(recent_manager_ptr, uri)) != 0)
        return rv
    }

    /// Searches for a URI inside the recently used resources list, and
    /// returns a `GtkRecentInfo` containing information about the resource
    /// like its MIME type, or its display name.
    @inlinable func lookupItem(uri: UnsafePointer<CChar>!) throws -> RecentInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = RecentInfoRef(gconstpointer: gconstpointer(gtk_recent_manager_lookup_item(recent_manager_ptr, uri, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Changes the location of a recently used resource from `uri` to `new_uri`.
    /// 
    /// Please note that this function will not affect the resource pointed
    /// by the URIs, but only the URI used in the recently used resources list.
    @inlinable func moveItem(uri: UnsafePointer<CChar>!, newUri: UnsafePointer<CChar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_recent_manager_move_item(recent_manager_ptr, uri, newUri, &error)) != 0)
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
    @inlinable func removeItem(uri: UnsafePointer<CChar>!) throws -> Bool {
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
/// When styling `GtkRevealer` using CSS, remember that it only hides its contents,
/// not itself. That means applied margin, padding and borders will be
/// visible even when the `GtkRevealer:reveal`-child property is set to `false`.
/// 
/// # Accessibility
/// 
/// GtkRevealer uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
/// 
/// The child of GtkRevealer, if set, is always available in the accessibility
/// tree, regardless of the state of the revealer widget.
public protocol RevealerProtocol: WidgetProtocol {
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
/// When styling `GtkRevealer` using CSS, remember that it only hides its contents,
/// not itself. That means applied margin, padding and borders will be
/// visible even when the `GtkRevealer:reveal`-child property is set to `false`.
/// 
/// # Accessibility
/// 
/// GtkRevealer uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
/// 
/// The child of GtkRevealer, if set, is always available in the accessibility
/// tree, regardless of the state of the revealer widget.
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
/// When styling `GtkRevealer` using CSS, remember that it only hides its contents,
/// not itself. That means applied margin, padding and borders will be
/// visible even when the `GtkRevealer:reveal`-child property is set to `false`.
/// 
/// # Accessibility
/// 
/// GtkRevealer uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
/// 
/// The child of GtkRevealer, if set, is always available in the accessibility
/// tree, regardless of the state of the revealer widget.
open class Revealer: Widget, RevealerProtocol {
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum RevealerPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case child = "child"
    case childRevealed = "child-revealed"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
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
    case revealChild = "reveal-child"
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

    /// Gets the child widget of `revealer`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_revealer_get_child(revealer_ptr))) else { return nil }
        return rv
    }

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

    /// Sets the child widget of `revealer`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_revealer_set_child(revealer_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `revealer`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_revealer_set_child(revealer_ptr, child?.widget_ptr)
    
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
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `revealer`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_revealer_get_child(revealer_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `revealer`.
        nonmutating set {
            gtk_revealer_set_child(revealer_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
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
/// ├── [value][.top][.right][.bottom][.left]
/// ├── marks.top
/// │   ├── mark
/// │   ┊    ├── [label]
/// │   ┊    ╰── indicator
/// ┊   ┊
/// │   ╰── mark
/// ├── marks.bottom
/// │   ├── mark
/// │   ┊    ├── indicator
/// │   ┊    ╰── [label]
/// ┊   ┊
/// │   ╰── mark
/// ╰── trough
///     ├── [fill]
///     ├── [highlight]
///     ╰── slider
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
/// If marks are present, there is a marks subnode before or after the trough
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
/// subnode with name value. This node will get the .top or .bottom style classes
/// similar to the marks node.
/// 
/// # Accessibility
/// 
/// GtkScale uses the `GTK_ACCESSIBLE_ROLE_SLIDER` role.
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
/// ├── [value][.top][.right][.bottom][.left]
/// ├── marks.top
/// │   ├── mark
/// │   ┊    ├── [label]
/// │   ┊    ╰── indicator
/// ┊   ┊
/// │   ╰── mark
/// ├── marks.bottom
/// │   ├── mark
/// │   ┊    ├── indicator
/// │   ┊    ╰── [label]
/// ┊   ┊
/// │   ╰── mark
/// ╰── trough
///     ├── [fill]
///     ├── [highlight]
///     ╰── slider
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
/// If marks are present, there is a marks subnode before or after the trough
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
/// subnode with name value. This node will get the .top or .bottom style classes
/// similar to the marks node.
/// 
/// # Accessibility
/// 
/// GtkScale uses the `GTK_ACCESSIBLE_ROLE_SLIDER` role.
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
    @inlinable init(range orientation: GtkOrientation, min: CDouble, max: CDouble, step: CDouble) {
        let rv = gtk_scale_new_with_range(orientation, min, max, step)
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
    @inlinable static func newWith(range orientation: GtkOrientation, min: CDouble, max: CDouble, step: CDouble) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_scale_new_with_range(orientation, min, max, step))) else { return nil }
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
/// ├── [value][.top][.right][.bottom][.left]
/// ├── marks.top
/// │   ├── mark
/// │   ┊    ├── [label]
/// │   ┊    ╰── indicator
/// ┊   ┊
/// │   ╰── mark
/// ├── marks.bottom
/// │   ├── mark
/// │   ┊    ├── indicator
/// │   ┊    ╰── [label]
/// ┊   ┊
/// │   ╰── mark
/// ╰── trough
///     ├── [fill]
///     ├── [highlight]
///     ╰── slider
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
/// If marks are present, there is a marks subnode before or after the trough
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
/// subnode with name value. This node will get the .top or .bottom style classes
/// similar to the marks node.
/// 
/// # Accessibility
/// 
/// GtkScale uses the `GTK_ACCESSIBLE_ROLE_SLIDER` role.
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
        super.init(gpointer: gpointer(rv))
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
    @inlinable public init(range orientation: GtkOrientation, min: CDouble, max: CDouble, step: CDouble) {
        let rv = gtk_scale_new_with_range(orientation, min, max, step)
        super.init(gpointer: gpointer(rv))
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
    @inlinable public static func newWith(range orientation: GtkOrientation, min: CDouble, max: CDouble, step: CDouble) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_scale_new_with_range(orientation, min, max, step))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ScalePropertyName: String, PropertyNameProtocol {
    case adjustment = "adjustment"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case digits = "digits"
    case drawValue = "draw-value"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case fillLevel = "fill-level"
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
    case hasOrigin = "has-origin"
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
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case restrictToFillLevel = "restrict-to-fill-level"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
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
    case valuePos = "value-pos"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
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

// MARK: Scale has no signals// MARK: Scale Class: ScaleProtocol extension (methods and fields)
public extension ScaleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScale` instance.
    @inlinable var scale_ptr: UnsafeMutablePointer<GtkScale>! { return ptr?.assumingMemoryBound(to: GtkScale.self) }

    /// Adds a mark at `value`.
    /// 
    /// A mark is indicated visually by drawing a tick mark next to the scale,
    /// and GTK makes it easy for the user to position the scale exactly at the
    /// marks value.
    /// 
    /// If `markup` is not `nil`, text is shown next to the tick mark.
    /// 
    /// To remove marks from a scale, use `gtk_scale_clear_marks()`.
    @inlinable func addMark(value: CDouble, position: GtkPositionType, markup: UnsafePointer<CChar>? = nil) {
        gtk_scale_add_mark(scale_ptr, value, position, markup)
    
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
    /// you can use `gtk_scale_set_format_value_func()` to format the displayed
    /// value yourself.
    @inlinable func set(digits: Int) {
        gtk_scale_set_digits(scale_ptr, gint(digits))
    
    }

    /// Specifies whether the current value is displayed as a string next
    /// to the slider.
    @inlinable func set(drawValue: Bool) {
        gtk_scale_set_draw_value(scale_ptr, gboolean((drawValue) ? 1 : 0))
    
    }

    /// `func` allows you to change how the scale value is displayed. The given
    /// function will return an allocated string representing `value`.
    /// That string will then be used to display the scale's value.
    /// 
    /// If `NULL` is passed as `func`, the value will be displayed on
    /// its own, rounded according to the value of the `GtkScale:digits` property.
    @inlinable func setFormatValueFunc(`func`: GtkScaleFormatValueFunc? = nil, userData: gpointer! = nil, destroyNotify: GDestroyNotify? = nil) {
        gtk_scale_set_format_value_func(scale_ptr, `func`, userData, destroyNotify)
    
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
        /// you can use `gtk_scale_set_format_value_func()` to format the displayed
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

    @inlinable var parentInstance: GtkRange {
        get {
            let rv = scale_ptr.pointee.parent_instance
            return rv
        }
    }

}



