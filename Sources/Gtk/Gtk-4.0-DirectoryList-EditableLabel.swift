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

// MARK: - DirectoryList Class

/// The `DirectoryListProtocol` protocol exposes the methods and properties of an underlying `GtkDirectoryList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DirectoryList`.
/// Alternatively, use `DirectoryListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkDirectoryList` is a list model that wraps `g_file_enumerate_children_async()`.
/// It presents a `GListModel` and fills it asynchronously with the `GFileInfos`
/// returned from that function.
/// 
/// Enumeration will start automatically when a the `GtkDirectoryList:file` property
/// is set.
/// 
/// While the `GtkDirectoryList` is being filled, the `GtkDirectoryList:loading`
/// property will be set to `true`. You can listen to that property if you want
/// to show information like a `GtkSpinner` or a "Loading..." text.
/// 
/// If loading fails at any point, the `GtkDirectoryList:error` property will be
/// set to give more indication about the failure.
/// 
/// The `GFileInfos` returned from a `GtkDirectoryList` have the "standard`file`"
/// attribute set to the `GFile` they refer to. This way you can get at the file
/// that is referred to in the same way you would via `g_file_enumerator_get_child()`.
/// This means you do not need access to the `GtkDirectoryList` but can access
/// the `GFile` directly from the `GFileInfo` when operating with a `GtkListView`
/// or similar.
public protocol DirectoryListProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol {
        /// Untyped pointer to the underlying `GtkDirectoryList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDirectoryList` instance.
    var directory_list_ptr: UnsafeMutablePointer<GtkDirectoryList>! { get }

}

/// The `DirectoryListRef` type acts as a lightweight Swift reference to an underlying `GtkDirectoryList` instance.
/// It exposes methods that can operate on this data type through `DirectoryListProtocol` conformance.
/// Use `DirectoryListRef` only as an `unowned` reference to an existing `GtkDirectoryList` instance.
///
/// `GtkDirectoryList` is a list model that wraps `g_file_enumerate_children_async()`.
/// It presents a `GListModel` and fills it asynchronously with the `GFileInfos`
/// returned from that function.
/// 
/// Enumeration will start automatically when a the `GtkDirectoryList:file` property
/// is set.
/// 
/// While the `GtkDirectoryList` is being filled, the `GtkDirectoryList:loading`
/// property will be set to `true`. You can listen to that property if you want
/// to show information like a `GtkSpinner` or a "Loading..." text.
/// 
/// If loading fails at any point, the `GtkDirectoryList:error` property will be
/// set to give more indication about the failure.
/// 
/// The `GFileInfos` returned from a `GtkDirectoryList` have the "standard`file`"
/// attribute set to the `GFile` they refer to. This way you can get at the file
/// that is referred to in the same way you would via `g_file_enumerator_get_child()`.
/// This means you do not need access to the `GtkDirectoryList` but can access
/// the `GFile` directly from the `GFileInfo` when operating with a `GtkListView`
/// or similar.
public struct DirectoryListRef: DirectoryListProtocol {
        /// Untyped pointer to the underlying `GtkDirectoryList` instance.
    /// For type-safe access, use the generated, typed pointer `directory_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DirectoryListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDirectoryList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDirectoryList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDirectoryList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDirectoryList>?) {
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

    /// Reference intialiser for a related type that implements `DirectoryListProtocol`
    @inlinable init<T: DirectoryListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkDirectoryList` querying the given `file` with the given
    /// `attributes`.
    @inlinable init<FileT: GIO.FileProtocol>( attributes: UnsafePointer<CChar>? = nil, file: FileT?) {
        let rv = gtk_directory_list_new(attributes, file?.file_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DirectoryList` type acts as a reference-counted owner of an underlying `GtkDirectoryList` instance.
/// It provides the methods that can operate on this data type through `DirectoryListProtocol` conformance.
/// Use `DirectoryList` as a strong reference or owner of a `GtkDirectoryList` instance.
///
/// `GtkDirectoryList` is a list model that wraps `g_file_enumerate_children_async()`.
/// It presents a `GListModel` and fills it asynchronously with the `GFileInfos`
/// returned from that function.
/// 
/// Enumeration will start automatically when a the `GtkDirectoryList:file` property
/// is set.
/// 
/// While the `GtkDirectoryList` is being filled, the `GtkDirectoryList:loading`
/// property will be set to `true`. You can listen to that property if you want
/// to show information like a `GtkSpinner` or a "Loading..." text.
/// 
/// If loading fails at any point, the `GtkDirectoryList:error` property will be
/// set to give more indication about the failure.
/// 
/// The `GFileInfos` returned from a `GtkDirectoryList` have the "standard`file`"
/// attribute set to the `GFile` they refer to. This way you can get at the file
/// that is referred to in the same way you would via `g_file_enumerator_get_child()`.
/// This means you do not need access to the `GtkDirectoryList` but can access
/// the `GFile` directly from the `GFileInfo` when operating with a `GtkListView`
/// or similar.
open class DirectoryList: GLibObject.Object, DirectoryListProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DirectoryList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDirectoryList>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DirectoryList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDirectoryList>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DirectoryList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DirectoryList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DirectoryList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDirectoryList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DirectoryList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDirectoryList>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDirectoryList`.
    /// i.e., ownership is transferred to the `DirectoryList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDirectoryList>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DirectoryListProtocol`
    /// Will retain `GtkDirectoryList`.
    /// - Parameter other: an instance of a related type that implements `DirectoryListProtocol`
    @inlinable public init<T: DirectoryListProtocol>(directoryList other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkDirectoryList` querying the given `file` with the given
    /// `attributes`.
    @inlinable public init<FileT: GIO.FileProtocol>( attributes: UnsafePointer<CChar>? = nil, file: FileT?) {
        let rv = gtk_directory_list_new(attributes, file?.file_ptr)
        super.init(gpointer: gpointer(rv))
    }


}

public enum DirectoryListPropertyName: String, PropertyNameProtocol {
    /// The attributes to query
    case attributes = "attributes"
    /// Error encountered while loading files
    case error = "error"
    /// File to query
    case file = "file"
    /// Priority used when loading
    case ioPriority = "io-priority"
    /// `true` if files are being loaded
    case loading = "loading"
    /// `true` if the directory is monitored for changed
    case monitored = "monitored"
}

public extension DirectoryListProtocol {
    /// Bind a `DirectoryListPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DirectoryListPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DirectoryList property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DirectoryListPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DirectoryList property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DirectoryListPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DirectoryListSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// The attributes to query
    case notifyAttributes = "notify::attributes"
    /// Error encountered while loading files
    case notifyGLibError = "notify::error"
    /// File to query
    case notifyFile = "notify::file"
    /// Priority used when loading
    case notifyIoPriority = "notify::io-priority"
    /// `true` if files are being loaded
    case notifyLoading = "notify::loading"
    /// `true` if the directory is monitored for changed
    case notifyMonitored = "notify::monitored"
}

public extension DirectoryListProtocol {
    /// Connect a `DirectoryListSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DirectoryListSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DirectoryList Class: DirectoryListProtocol extension (methods and fields)
public extension DirectoryListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDirectoryList` instance.
    @inlinable var directory_list_ptr: UnsafeMutablePointer<GtkDirectoryList>! { return ptr?.assumingMemoryBound(to: GtkDirectoryList.self) }

    /// Gets the attributes queried on the children.
    @inlinable func getAttributes() -> String! {
        let rv = gtk_directory_list_get_attributes(directory_list_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the loading error, if any.
    /// 
    /// If an error occurs during the loading process, the loading process
    /// will finish and this property allows querying the error that happened.
    /// This error will persist until a file is loaded again.
    /// 
    /// An error being set does not mean that no files were loaded, and all
    /// successfully queried files will remain in the list.
    @inlinable func getError() -> GLib.ErrorRef! {
        let rv = GLib.ErrorRef(gtk_directory_list_get_error(directory_list_ptr))
        return rv
    }

    /// Gets the file whose children are currently enumerated.
    @inlinable func getFile() -> GIO.FileRef! {
        let rv = GIO.FileRef(gtk_directory_list_get_file(directory_list_ptr))
        return rv
    }

    /// Gets the IO priority set via `gtk_directory_list_set_io_priority()`.
    @inlinable func getIoPriority() -> Int {
        let rv = Int(gtk_directory_list_get_io_priority(directory_list_ptr))
        return rv
    }

    /// Returns whether the directory list is monitoring
    /// the directory for changes.
    @inlinable func getMonitored() -> Bool {
        let rv = ((gtk_directory_list_get_monitored(directory_list_ptr)) != 0)
        return rv
    }

    /// Sets the `attributes` to be enumerated and starts the enumeration.
    /// 
    /// If `attributes` is `nil`, no attributes will be queried, but a list
    /// of `GFileInfos` will still be created.
    @inlinable func set(attributes: UnsafePointer<CChar>? = nil) {
        gtk_directory_list_set_attributes(directory_list_ptr, attributes)
    
    }

    /// Sets the `file` to be enumerated and starts the enumeration.
    /// 
    /// If `file` is `nil`, the result will be an empty list.
    @inlinable func set(file: GIO.FileRef? = nil) {
        gtk_directory_list_set_file(directory_list_ptr, file?.file_ptr)
    
    }
    /// Sets the `file` to be enumerated and starts the enumeration.
    /// 
    /// If `file` is `nil`, the result will be an empty list.
    @inlinable func set<FileT: GIO.FileProtocol>(file: FileT?) {
        gtk_directory_list_set_file(directory_list_ptr, file?.file_ptr)
    
    }

    /// Sets the IO priority to use while loading directories.
    /// 
    /// Setting the priority while `self` is loading will reprioritize the
    /// ongoing load as soon as possible.
    /// 
    /// The default IO priority is `G_PRIORITY_DEFAULT`, which is higher than
    /// the GTK redraw priority. If you are loading a lot of directories in
    /// parallel, lowering it to something like `G_PRIORITY_DEFAULT_IDLE`
    /// may increase responsiveness.
    @inlinable func set(ioPriority: Int) {
        gtk_directory_list_set_io_priority(directory_list_ptr, gint(ioPriority))
    
    }

    /// Sets whether the directory list will monitor the directory
    /// for changes. If monitoring is enabled, the
    /// `GListModel::items`-changed signal will be emitted when the
    /// directory contents change.
    /// 
    /// When monitoring is turned on after the initial creation
    /// of the directory list, the directory is reloaded to avoid
    /// missing files that appeared between the initial loading
    /// and when monitoring was turned on.
    @inlinable func set(monitored: Bool) {
        gtk_directory_list_set_monitored(directory_list_ptr, gboolean((monitored) ? 1 : 0))
    
    }
    /// The attributes to query
    @inlinable var attributes: String! {
        /// Gets the attributes queried on the children.
        get {
            let rv = gtk_directory_list_get_attributes(directory_list_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the `attributes` to be enumerated and starts the enumeration.
        /// 
        /// If `attributes` is `nil`, no attributes will be queried, but a list
        /// of `GFileInfos` will still be created.
        nonmutating set {
            gtk_directory_list_set_attributes(directory_list_ptr, newValue)
        }
    }

    /// Error encountered while loading files
    @inlinable var error: GLib.ErrorRef! {
        /// Gets the loading error, if any.
        /// 
        /// If an error occurs during the loading process, the loading process
        /// will finish and this property allows querying the error that happened.
        /// This error will persist until a file is loaded again.
        /// 
        /// An error being set does not mean that no files were loaded, and all
        /// successfully queried files will remain in the list.
        get {
            let rv = GLib.ErrorRef(gtk_directory_list_get_error(directory_list_ptr))
            return rv
        }
    }

    /// File to query
    @inlinable var file: GIO.FileRef! {
        /// Gets the file whose children are currently enumerated.
        get {
            let rv = GIO.FileRef(gtk_directory_list_get_file(directory_list_ptr))
            return rv
        }
        /// Sets the `file` to be enumerated and starts the enumeration.
        /// 
        /// If `file` is `nil`, the result will be an empty list.
        nonmutating set {
            gtk_directory_list_set_file(directory_list_ptr, UnsafeMutablePointer<GFile>(newValue?.file_ptr))
        }
    }

    /// Gets the IO priority set via `gtk_directory_list_set_io_priority()`.
    @inlinable var ioPriority: Int {
        /// Gets the IO priority set via `gtk_directory_list_set_io_priority()`.
        get {
            let rv = Int(gtk_directory_list_get_io_priority(directory_list_ptr))
            return rv
        }
        /// Sets the IO priority to use while loading directories.
        /// 
        /// Setting the priority while `self` is loading will reprioritize the
        /// ongoing load as soon as possible.
        /// 
        /// The default IO priority is `G_PRIORITY_DEFAULT`, which is higher than
        /// the GTK redraw priority. If you are loading a lot of directories in
        /// parallel, lowering it to something like `G_PRIORITY_DEFAULT_IDLE`
        /// may increase responsiveness.
        nonmutating set {
            gtk_directory_list_set_io_priority(directory_list_ptr, gint(newValue))
        }
    }

    /// Returns `true` if the children enumeration is currently in
    /// progress.
    /// 
    /// Files will be added to `self` from time to time while loading is
    /// going on. The order in which are added is undefined and may change
    /// in between runs.
    @inlinable var isLoading: Bool {
        /// Returns `true` if the children enumeration is currently in
        /// progress.
        /// 
        /// Files will be added to `self` from time to time while loading is
        /// going on. The order in which are added is undefined and may change
        /// in between runs.
        get {
            let rv = ((gtk_directory_list_is_loading(directory_list_ptr)) != 0)
            return rv
        }
    }

    /// `true` if the directory is monitored for changed
    @inlinable var monitored: Bool {
        /// Returns whether the directory list is monitoring
        /// the directory for changes.
        get {
            let rv = ((gtk_directory_list_get_monitored(directory_list_ptr)) != 0)
            return rv
        }
        /// Sets whether the directory list will monitor the directory
        /// for changes. If monitoring is enabled, the
        /// `GListModel::items`-changed signal will be emitted when the
        /// directory contents change.
        /// 
        /// When monitoring is turned on after the initial creation
        /// of the directory list, the directory is reloaded to avoid
        /// missing files that appeared between the initial loading
        /// and when monitoring was turned on.
        nonmutating set {
            gtk_directory_list_set_monitored(directory_list_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - DragIcon Class

/// The `DragIconProtocol` protocol exposes the methods and properties of an underlying `GtkDragIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragIcon`.
/// Alternatively, use `DragIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkDragIcon is a `GtkRoot` implementation with the sole purpose
/// to serve as a drag icon during DND operations. A drag icon moves
/// with the pointer during a drag operation and is destroyed when
/// the drag ends.
/// 
/// To set up a drag icon and associate it with an ongoing drag operation,
/// use `gtk_drag_icon_get_for_drag()` to get the icon for a drag. You can
/// then use it like any other widget and use `gtk_drag_icon_set_child()` to
/// set whatever widget should be used for the drag icon.
/// 
/// Keep in mind that drag icons do not allow user input.
public protocol DragIconProtocol: WidgetProtocol, NativeProtocol, RootProtocol {
        /// Untyped pointer to the underlying `GtkDragIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDragIcon` instance.
    var drag_icon_ptr: UnsafeMutablePointer<GtkDragIcon>! { get }

}

/// The `DragIconRef` type acts as a lightweight Swift reference to an underlying `GtkDragIcon` instance.
/// It exposes methods that can operate on this data type through `DragIconProtocol` conformance.
/// Use `DragIconRef` only as an `unowned` reference to an existing `GtkDragIcon` instance.
///
/// GtkDragIcon is a `GtkRoot` implementation with the sole purpose
/// to serve as a drag icon during DND operations. A drag icon moves
/// with the pointer during a drag operation and is destroyed when
/// the drag ends.
/// 
/// To set up a drag icon and associate it with an ongoing drag operation,
/// use `gtk_drag_icon_get_for_drag()` to get the icon for a drag. You can
/// then use it like any other widget and use `gtk_drag_icon_set_child()` to
/// set whatever widget should be used for the drag icon.
/// 
/// Keep in mind that drag icons do not allow user input.
public struct DragIconRef: DragIconProtocol {
        /// Untyped pointer to the underlying `GtkDragIcon` instance.
    /// For type-safe access, use the generated, typed pointer `drag_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DragIconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDragIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDragIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDragIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDragIcon>?) {
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

    /// Reference intialiser for a related type that implements `DragIconProtocol`
    @inlinable init<T: DragIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a widget that can be used as a drag icon for the given
    /// `value`.
    /// 
    /// Supported types include strings, `GdkRGBA` and `GtkTextBuffer`.
    /// If GTK does not know how to create a widget for a given value,
    /// it will return `nil`.
    /// 
    /// This method is used to set the default drag icon on drag'n'drop
    /// operations started by `GtkDragSource`, so you don't need to set
    /// a drag icon using this function there.
    @inlinable static func createWidgetFor<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drag_icon_create_widget_for_value(value.value_ptr))) else { return nil }
        return rv
    }

    /// Gets the `GtkDragIcon` in use with `drag`.
    /// 
    /// If no drag icon exists yet, a new one will be created
    /// and shown.
    @inlinable static func getFor(drag: UnsafeMutablePointer<GdkDrag>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drag_icon_get_for_drag(drag))) else { return nil }
        return rv
    }
}

/// The `DragIcon` type acts as a reference-counted owner of an underlying `GtkDragIcon` instance.
/// It provides the methods that can operate on this data type through `DragIconProtocol` conformance.
/// Use `DragIcon` as a strong reference or owner of a `GtkDragIcon` instance.
///
/// GtkDragIcon is a `GtkRoot` implementation with the sole purpose
/// to serve as a drag icon during DND operations. A drag icon moves
/// with the pointer during a drag operation and is destroyed when
/// the drag ends.
/// 
/// To set up a drag icon and associate it with an ongoing drag operation,
/// use `gtk_drag_icon_get_for_drag()` to get the icon for a drag. You can
/// then use it like any other widget and use `gtk_drag_icon_set_child()` to
/// set whatever widget should be used for the drag icon.
/// 
/// Keep in mind that drag icons do not allow user input.
open class DragIcon: Widget, DragIconProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDragIcon>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDragIcon>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragIcon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDragIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDragIcon>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDragIcon`.
    /// i.e., ownership is transferred to the `DragIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDragIcon>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DragIconProtocol`
    /// Will retain `GtkDragIcon`.
    /// - Parameter other: an instance of a related type that implements `DragIconProtocol`
    @inlinable public init<T: DragIconProtocol>(dragIcon other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Creates a widget that can be used as a drag icon for the given
    /// `value`.
    /// 
    /// Supported types include strings, `GdkRGBA` and `GtkTextBuffer`.
    /// If GTK does not know how to create a widget for a given value,
    /// it will return `nil`.
    /// 
    /// This method is used to set the default drag icon on drag'n'drop
    /// operations started by `GtkDragSource`, so you don't need to set
    /// a drag icon using this function there.
    @inlinable public static func createWidgetFor<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_drag_icon_create_widget_for_value(value.value_ptr))) else { return nil }
        return rv
    }

    /// Gets the `GtkDragIcon` in use with `drag`.
    /// 
    /// If no drag icon exists yet, a new one will be created
    /// and shown.
    @inlinable public static func getFor(drag: UnsafeMutablePointer<GdkDrag>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_drag_icon_get_for_drag(drag))) else { return nil }
        return rv
    }

}

public enum DragIconPropertyName: String, PropertyNameProtocol {
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// The widget to display as drag icon.
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

public extension DragIconProtocol {
    /// Bind a `DragIconPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DragIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DragIcon property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DragIconPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DragIcon property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DragIconPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DragIconSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    case notifyCanTarget = "notify::can-target"
    /// The widget to display as drag icon.
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
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
}

public extension DragIconProtocol {
    /// Connect a `DragIconSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DragIconSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DragIcon Class: DragIconProtocol extension (methods and fields)
public extension DragIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDragIcon` instance.
    @inlinable var drag_icon_ptr: UnsafeMutablePointer<GtkDragIcon>! { return ptr?.assumingMemoryBound(to: GtkDragIcon.self) }

    /// Gets the widget currently used as drag icon.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drag_icon_get_child(drag_icon_ptr))) else { return nil }
        return rv
    }

    /// Sets the widget to display as the drag icon.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_drag_icon_set_child(drag_icon_ptr, child?.widget_ptr)
    
    }
    /// Sets the widget to display as the drag icon.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_drag_icon_set_child(drag_icon_ptr, child?.widget_ptr)
    
    }
    /// The widget to display as drag icon.
    @inlinable var child: WidgetRef! {
        /// Gets the widget currently used as drag icon.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drag_icon_get_child(drag_icon_ptr))) else { return nil }
            return rv
        }
        /// Sets the widget to display as the drag icon.
        nonmutating set {
            gtk_drag_icon_set_child(drag_icon_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }


}



// MARK: - DragSource Class

/// The `DragSourceProtocol` protocol exposes the methods and properties of an underlying `GtkDragSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragSource`.
/// Alternatively, use `DragSourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkDragSource is an auxiliary object that is used to initiate
/// Drag-And-Drop operations. It can be set up with the necessary
/// ingredients for a DND operation ahead of time. This includes
/// the source for the data that is being transferred, in the form
/// of a `GdkContentProvider`, the desired action, and the icon to
/// use during the drag operation. After setting it up, the drag
/// source must be added to a widget as an event controller, using
/// `gtk_widget_add_controller()`.
/// 
/// Setting up the content provider and icon ahead of time only
/// makes sense when the data does not change. More commonly, you
/// will want to set them up just in time. To do so, `GtkDragSource`
/// has `GtkDragSource::prepare` and `GtkDragSource::drag`-begin signals.
/// The `prepare` signal is emitted before a drag is started, and
/// can be used to set the content provider and actions that the
/// drag should be started with. The `drag`-begin signal is emitted
/// after the `GdkDrag` object has been created, and can be used
/// to set up the drag icon.
/// 
/// During the DND operation, GtkDragSource emits signals that
/// can be used to obtain updates about the status of the operation,
/// but it is not normally necessary to connect to any signals,
/// except for one case: when the supported actions include
/// `GDK_ACTION_MOVE`, you need to listen for the
/// `GtkDragSource::drag`-end signal and delete the
/// data after it has been transferred.
public protocol DragSourceProtocol: GestureSingleProtocol {
        /// Untyped pointer to the underlying `GtkDragSource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDragSource` instance.
    var drag_source_ptr: UnsafeMutablePointer<GtkDragSource>! { get }

}

/// The `DragSourceRef` type acts as a lightweight Swift reference to an underlying `GtkDragSource` instance.
/// It exposes methods that can operate on this data type through `DragSourceProtocol` conformance.
/// Use `DragSourceRef` only as an `unowned` reference to an existing `GtkDragSource` instance.
///
/// GtkDragSource is an auxiliary object that is used to initiate
/// Drag-And-Drop operations. It can be set up with the necessary
/// ingredients for a DND operation ahead of time. This includes
/// the source for the data that is being transferred, in the form
/// of a `GdkContentProvider`, the desired action, and the icon to
/// use during the drag operation. After setting it up, the drag
/// source must be added to a widget as an event controller, using
/// `gtk_widget_add_controller()`.
/// 
/// Setting up the content provider and icon ahead of time only
/// makes sense when the data does not change. More commonly, you
/// will want to set them up just in time. To do so, `GtkDragSource`
/// has `GtkDragSource::prepare` and `GtkDragSource::drag`-begin signals.
/// The `prepare` signal is emitted before a drag is started, and
/// can be used to set the content provider and actions that the
/// drag should be started with. The `drag`-begin signal is emitted
/// after the `GdkDrag` object has been created, and can be used
/// to set up the drag icon.
/// 
/// During the DND operation, GtkDragSource emits signals that
/// can be used to obtain updates about the status of the operation,
/// but it is not normally necessary to connect to any signals,
/// except for one case: when the supported actions include
/// `GDK_ACTION_MOVE`, you need to listen for the
/// `GtkDragSource::drag`-end signal and delete the
/// data after it has been transferred.
public struct DragSourceRef: DragSourceProtocol {
        /// Untyped pointer to the underlying `GtkDragSource` instance.
    /// For type-safe access, use the generated, typed pointer `drag_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DragSourceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDragSource>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDragSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDragSource>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDragSource>?) {
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

    /// Reference intialiser for a related type that implements `DragSourceProtocol`
    @inlinable init<T: DragSourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkDragSource` object.
    @inlinable init() {
        let rv = gtk_drag_source_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DragSource` type acts as a reference-counted owner of an underlying `GtkDragSource` instance.
/// It provides the methods that can operate on this data type through `DragSourceProtocol` conformance.
/// Use `DragSource` as a strong reference or owner of a `GtkDragSource` instance.
///
/// GtkDragSource is an auxiliary object that is used to initiate
/// Drag-And-Drop operations. It can be set up with the necessary
/// ingredients for a DND operation ahead of time. This includes
/// the source for the data that is being transferred, in the form
/// of a `GdkContentProvider`, the desired action, and the icon to
/// use during the drag operation. After setting it up, the drag
/// source must be added to a widget as an event controller, using
/// `gtk_widget_add_controller()`.
/// 
/// Setting up the content provider and icon ahead of time only
/// makes sense when the data does not change. More commonly, you
/// will want to set them up just in time. To do so, `GtkDragSource`
/// has `GtkDragSource::prepare` and `GtkDragSource::drag`-begin signals.
/// The `prepare` signal is emitted before a drag is started, and
/// can be used to set the content provider and actions that the
/// drag should be started with. The `drag`-begin signal is emitted
/// after the `GdkDrag` object has been created, and can be used
/// to set up the drag icon.
/// 
/// During the DND operation, GtkDragSource emits signals that
/// can be used to obtain updates about the status of the operation,
/// but it is not normally necessary to connect to any signals,
/// except for one case: when the supported actions include
/// `GDK_ACTION_MOVE`, you need to listen for the
/// `GtkDragSource::drag`-end signal and delete the
/// data after it has been transferred.
open class DragSource: GestureSingle, DragSourceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDragSource>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDragSource>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSource` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDragSource>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDragSource>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDragSource`.
    /// i.e., ownership is transferred to the `DragSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDragSource>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DragSourceProtocol`
    /// Will retain `GtkDragSource`.
    /// - Parameter other: an instance of a related type that implements `DragSourceProtocol`
    @inlinable public init<T: DragSourceProtocol>(dragSource other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkDragSource` object.
    @inlinable public init() {
        let rv = gtk_drag_source_new()
        super.init(gpointer: gpointer(rv))
    }


}

public enum DragSourcePropertyName: String, PropertyNameProtocol {
    /// The actions that are supported by drag operations from the source.
    /// 
    /// Note that you must handle the `GtkDragSource::drag`-end signal
    /// if the actions include `GDK_ACTION_MOVE`.
    case actions = "actions"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// The data that is offered by drag operations from this source,
    /// in the form of a `GdkContentProvider`.
    case content = "content"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension DragSourceProtocol {
    /// Bind a `DragSourcePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DragSourcePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DragSource property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DragSourcePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DragSource property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DragSourcePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DragSourceSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// The `drag`-begin signal is emitted on the drag source when a drag
    /// is started. It can be used to e.g. set a custom drag icon with
    /// `gtk_drag_source_set_icon()`.
    case dragBegin = "drag-begin"
    /// The `drag`-cancel signal is emitted on the drag source when a drag has
    /// failed. The signal handler may handle a failed drag operation based on
    /// the type of error. It should return `true` if the failure has been handled
    /// and the default "drag operation failed" animation should not be shown.
    case dragCancel = "drag-cancel"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished. A typical reason to connect to this signal is to undo
    /// things done in `GtkDragSource::prepare` or `GtkDragSource::drag`-begin.
    case dragEnd = "drag-end"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch sequences became
    /// higher or lower than `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// The `prepare` signal is emitted when a drag is about to be initiated.
    /// It returns the * `GdkContentProvider` to use for the drag that is about
    /// to start. The default handler for this signal returns the value of
    /// the `GtkDragSource:content` property, so if you set up that property
    /// ahead of time, you don't need to connect to this signal.
    case prepare = "prepare"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The actions that are supported by drag operations from the source.
    /// 
    /// Note that you must handle the `GtkDragSource::drag`-end signal
    /// if the actions include `GDK_ACTION_MOVE`.
    case notifyActions = "notify::actions"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// The data that is offered by drag operations from this source,
    /// in the form of a `GdkContentProvider`.
    case notifyContent = "notify::content"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension DragSourceProtocol {
    /// Connect a `DragSourceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DragSourceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DragSource Class: DragSourceProtocol extension (methods and fields)
public extension DragSourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDragSource` instance.
    @inlinable var drag_source_ptr: UnsafeMutablePointer<GtkDragSource>! { return ptr?.assumingMemoryBound(to: GtkDragSource.self) }

    /// Cancels a currently ongoing drag operation.
    @inlinable func dragCancel() {
        gtk_drag_source_drag_cancel(drag_source_ptr)
    
    }

    /// Gets the actions that are currently set on the `GtkDragSource`.
    @inlinable func getActions() -> Gdk.DragAction {
        let rv = Gdk.DragAction(gtk_drag_source_get_actions(drag_source_ptr))
        return rv
    }

    /// Gets the current content provider of a `GtkDragSource`.
    @inlinable func getContent() -> UnsafeMutablePointer<GdkContentProvider>? {
        let rv = gtk_drag_source_get_content(drag_source_ptr)
        return rv
    }

    /// Returns the underlying `GdkDrag` object for an ongoing drag.
    @inlinable func getDrag() -> UnsafeMutablePointer<GdkDrag>? {
        let rv = gtk_drag_source_get_drag(drag_source_ptr)
        return rv
    }

    /// Sets the actions on the `GtkDragSource`.
    /// 
    /// During a DND operation, the actions are offered
    /// to potential drop targets. If `actions` include
    /// `GDK_ACTION_MOVE`, you need to listen to the
    /// `GtkDragSource::drag`-end signal and handle
    /// `delete_data` being `true`.
    /// 
    /// This function can be called before a drag is started,
    /// or in a handler for the `GtkDragSource::prepare` signal.
    @inlinable func set(actions: Gdk.DragAction) {
        gtk_drag_source_set_actions(drag_source_ptr, actions.value)
    
    }

    /// Sets a content provider on a `GtkDragSource`.
    /// 
    /// When the data is requested in the cause of a
    /// DND operation, it will be obtained from the
    /// content provider.
    /// 
    /// This function can be called before a drag is started,
    /// or in a handler for the `GtkDragSource::prepare` signal.
    /// 
    /// You may consider setting the content provider back to
    /// `nil` in a `GtkDragSource::drag`-end signal handler.
    @inlinable func set(content: UnsafeMutablePointer<GdkContentProvider>? = nil) {
        gtk_drag_source_set_content(drag_source_ptr, content)
    
    }

    /// Sets a paintable to use as icon during DND operations.
    /// 
    /// The hotspot coordinates determine the point on the icon
    /// that gets aligned with the hotspot of the cursor.
    /// 
    /// If `paintable` is `nil`, a default icon is used.
    /// 
    /// This function can be called before a drag is started, or in
    /// a `GtkDragSource::prepare` or `GtkDragSource::drag`-begin signal handler.
    @inlinable func setIcon(paintable: UnsafeMutablePointer<GdkPaintable>? = nil, hotX: Int, hotY: Int) {
        gtk_drag_source_set_icon(drag_source_ptr, paintable, gint(hotX), gint(hotY))
    
    }
    /// The actions that are supported by drag operations from the source.
    /// 
    /// Note that you must handle the `GtkDragSource::drag`-end signal
    /// if the actions include `GDK_ACTION_MOVE`.
    @inlinable var actions: Gdk.DragAction {
        /// Gets the actions that are currently set on the `GtkDragSource`.
        get {
            let rv = Gdk.DragAction(gtk_drag_source_get_actions(drag_source_ptr))
            return rv
        }
        /// Sets the actions on the `GtkDragSource`.
        /// 
        /// During a DND operation, the actions are offered
        /// to potential drop targets. If `actions` include
        /// `GDK_ACTION_MOVE`, you need to listen to the
        /// `GtkDragSource::drag`-end signal and handle
        /// `delete_data` being `true`.
        /// 
        /// This function can be called before a drag is started,
        /// or in a handler for the `GtkDragSource::prepare` signal.
        nonmutating set {
            gtk_drag_source_set_actions(drag_source_ptr, newValue.value)
        }
    }

    /// The data that is offered by drag operations from this source,
    /// in the form of a `GdkContentProvider`.
    @inlinable var content: UnsafeMutablePointer<GdkContentProvider>? {
        /// Gets the current content provider of a `GtkDragSource`.
        get {
            let rv = gtk_drag_source_get_content(drag_source_ptr)
            return rv
        }
        /// Sets a content provider on a `GtkDragSource`.
        /// 
        /// When the data is requested in the cause of a
        /// DND operation, it will be obtained from the
        /// content provider.
        /// 
        /// This function can be called before a drag is started,
        /// or in a handler for the `GtkDragSource::prepare` signal.
        /// 
        /// You may consider setting the content provider back to
        /// `nil` in a `GtkDragSource::drag`-end signal handler.
        nonmutating set {
            gtk_drag_source_set_content(drag_source_ptr, newValue)
        }
    }

    /// Returns the underlying `GdkDrag` object for an ongoing drag.
    @inlinable var drag: UnsafeMutablePointer<GdkDrag>? {
        /// Returns the underlying `GdkDrag` object for an ongoing drag.
        get {
            let rv = gtk_drag_source_get_drag(drag_source_ptr)
            return rv
        }
    }


}



// MARK: - DrawingArea Class

/// The `DrawingAreaProtocol` protocol exposes the methods and properties of an underlying `GtkDrawingArea` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingArea`.
/// Alternatively, use `DrawingAreaRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkDrawingArea` widget is used for creating custom user interface
/// elements. It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - The `GtkWidget::realize` signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The `GtkDrawingArea::resize` signal to take any necessary
///   actions when the widget changes size.
/// 
/// - Call `gtk_drawing_area_set_draw_func()` to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// (C Language Example):
/// ```C
/// static void
/// draw_function (GtkDrawingArea *area,
///                cairo_t        *cr,
///                int             width,
///                int             height,
///                gpointer        data)
/// {
///   GdkRGBA color;
///   GtkStyleContext *context;
/// 
///   context = gtk_widget_get_style_context (GTK_WIDGET (area));
/// 
///   cairo_arc (cr,
///              width / 2.0, height / 2.0,
///              MIN (width, height) / 2.0,
///              0, 2 * G_PI);
/// 
///   gtk_style_context_get_color (context,
///                                &color);
///   gdk_cairo_set_source_rgba (cr, &color);
/// 
///   cairo_fill (cr);
/// }
/// 
/// int
/// main (int argc, char **argv)
/// {
///   gtk_init ();
/// 
///   GtkWidget *area = gtk_drawing_area_new ();
///   gtk_drawing_area_set_content_width (GTK_DRAWING_AREA (area), 100);
///   gtk_drawing_area_set_content_height (GTK_DRAWING_AREA (area), 100);
///   gtk_drawing_area_set_draw_func (GTK_DRAWING_AREA (area),
///                                   draw_function,
///                                   NULL, NULL);
///   return 0;
/// }
/// ```
/// 
/// The draw function is normally called when a drawing area first comes
/// onscreen, or when it’s covered by another window and then uncovered.
/// You can also force a redraw by adding to the “damage region” of the
/// drawing area’s window using `gtk_widget_queue_draw()`.
/// This will cause the drawing area to call the draw function again.
/// 
/// The available routines for drawing are documented on the
/// [GDK Drawing Primitives](#gdk4-Cairo-Interaction) page
/// and the cairo documentation.
/// 
/// To receive mouse events on a drawing area, you will need to use
/// event controllers. To receive keyboard events, you will need to set
/// the “can-focus” property on the drawing area, and you should probably
/// draw some user-visible indication that the drawing area is focused.
/// 
/// If you need more complex control over your widget, you should consider
/// creating your own `GtkWidget` subclass.
public protocol DrawingAreaProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkDrawingArea` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDrawingArea` instance.
    var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea>! { get }

}

/// The `DrawingAreaRef` type acts as a lightweight Swift reference to an underlying `GtkDrawingArea` instance.
/// It exposes methods that can operate on this data type through `DrawingAreaProtocol` conformance.
/// Use `DrawingAreaRef` only as an `unowned` reference to an existing `GtkDrawingArea` instance.
///
/// The `GtkDrawingArea` widget is used for creating custom user interface
/// elements. It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - The `GtkWidget::realize` signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The `GtkDrawingArea::resize` signal to take any necessary
///   actions when the widget changes size.
/// 
/// - Call `gtk_drawing_area_set_draw_func()` to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// (C Language Example):
/// ```C
/// static void
/// draw_function (GtkDrawingArea *area,
///                cairo_t        *cr,
///                int             width,
///                int             height,
///                gpointer        data)
/// {
///   GdkRGBA color;
///   GtkStyleContext *context;
/// 
///   context = gtk_widget_get_style_context (GTK_WIDGET (area));
/// 
///   cairo_arc (cr,
///              width / 2.0, height / 2.0,
///              MIN (width, height) / 2.0,
///              0, 2 * G_PI);
/// 
///   gtk_style_context_get_color (context,
///                                &color);
///   gdk_cairo_set_source_rgba (cr, &color);
/// 
///   cairo_fill (cr);
/// }
/// 
/// int
/// main (int argc, char **argv)
/// {
///   gtk_init ();
/// 
///   GtkWidget *area = gtk_drawing_area_new ();
///   gtk_drawing_area_set_content_width (GTK_DRAWING_AREA (area), 100);
///   gtk_drawing_area_set_content_height (GTK_DRAWING_AREA (area), 100);
///   gtk_drawing_area_set_draw_func (GTK_DRAWING_AREA (area),
///                                   draw_function,
///                                   NULL, NULL);
///   return 0;
/// }
/// ```
/// 
/// The draw function is normally called when a drawing area first comes
/// onscreen, or when it’s covered by another window and then uncovered.
/// You can also force a redraw by adding to the “damage region” of the
/// drawing area’s window using `gtk_widget_queue_draw()`.
/// This will cause the drawing area to call the draw function again.
/// 
/// The available routines for drawing are documented on the
/// [GDK Drawing Primitives](#gdk4-Cairo-Interaction) page
/// and the cairo documentation.
/// 
/// To receive mouse events on a drawing area, you will need to use
/// event controllers. To receive keyboard events, you will need to set
/// the “can-focus” property on the drawing area, and you should probably
/// draw some user-visible indication that the drawing area is focused.
/// 
/// If you need more complex control over your widget, you should consider
/// creating your own `GtkWidget` subclass.
public struct DrawingAreaRef: DrawingAreaProtocol {
        /// Untyped pointer to the underlying `GtkDrawingArea` instance.
    /// For type-safe access, use the generated, typed pointer `drawing_area_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DrawingAreaRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDrawingArea>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDrawingArea>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDrawingArea>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDrawingArea>?) {
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

    /// Reference intialiser for a related type that implements `DrawingAreaProtocol`
    @inlinable init<T: DrawingAreaProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new drawing area.
    @inlinable init() {
        let rv = gtk_drawing_area_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DrawingArea` type acts as a reference-counted owner of an underlying `GtkDrawingArea` instance.
/// It provides the methods that can operate on this data type through `DrawingAreaProtocol` conformance.
/// Use `DrawingArea` as a strong reference or owner of a `GtkDrawingArea` instance.
///
/// The `GtkDrawingArea` widget is used for creating custom user interface
/// elements. It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - The `GtkWidget::realize` signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The `GtkDrawingArea::resize` signal to take any necessary
///   actions when the widget changes size.
/// 
/// - Call `gtk_drawing_area_set_draw_func()` to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// (C Language Example):
/// ```C
/// static void
/// draw_function (GtkDrawingArea *area,
///                cairo_t        *cr,
///                int             width,
///                int             height,
///                gpointer        data)
/// {
///   GdkRGBA color;
///   GtkStyleContext *context;
/// 
///   context = gtk_widget_get_style_context (GTK_WIDGET (area));
/// 
///   cairo_arc (cr,
///              width / 2.0, height / 2.0,
///              MIN (width, height) / 2.0,
///              0, 2 * G_PI);
/// 
///   gtk_style_context_get_color (context,
///                                &color);
///   gdk_cairo_set_source_rgba (cr, &color);
/// 
///   cairo_fill (cr);
/// }
/// 
/// int
/// main (int argc, char **argv)
/// {
///   gtk_init ();
/// 
///   GtkWidget *area = gtk_drawing_area_new ();
///   gtk_drawing_area_set_content_width (GTK_DRAWING_AREA (area), 100);
///   gtk_drawing_area_set_content_height (GTK_DRAWING_AREA (area), 100);
///   gtk_drawing_area_set_draw_func (GTK_DRAWING_AREA (area),
///                                   draw_function,
///                                   NULL, NULL);
///   return 0;
/// }
/// ```
/// 
/// The draw function is normally called when a drawing area first comes
/// onscreen, or when it’s covered by another window and then uncovered.
/// You can also force a redraw by adding to the “damage region” of the
/// drawing area’s window using `gtk_widget_queue_draw()`.
/// This will cause the drawing area to call the draw function again.
/// 
/// The available routines for drawing are documented on the
/// [GDK Drawing Primitives](#gdk4-Cairo-Interaction) page
/// and the cairo documentation.
/// 
/// To receive mouse events on a drawing area, you will need to use
/// event controllers. To receive keyboard events, you will need to set
/// the “can-focus” property on the drawing area, and you should probably
/// draw some user-visible indication that the drawing area is focused.
/// 
/// If you need more complex control over your widget, you should consider
/// creating your own `GtkWidget` subclass.
open class DrawingArea: Widget, DrawingAreaProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDrawingArea>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDrawingArea>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDrawingArea>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDrawingArea>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDrawingArea`.
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDrawingArea>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DrawingAreaProtocol`
    /// Will retain `GtkDrawingArea`.
    /// - Parameter other: an instance of a related type that implements `DrawingAreaProtocol`
    @inlinable public init<T: DrawingAreaProtocol>(drawingArea other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new drawing area.
    @inlinable public init() {
        let rv = gtk_drawing_area_new()
        super.init(gpointer: gpointer(rv))
    }


}

public enum DrawingAreaPropertyName: String, PropertyNameProtocol {
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// The content height. See `gtk_drawing_area_set_content_height()` for details.
    case contentHeight = "content-height"
    /// The content width. See `gtk_drawing_area_set_content_width()` for details.
    case contentWidth = "content-width"
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

public extension DrawingAreaProtocol {
    /// Bind a `DrawingAreaPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DrawingAreaPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DrawingArea property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DrawingAreaPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DrawingArea property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DrawingAreaPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DrawingAreaSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `resize` signal is emitted once when the widget is realized, and
    /// then each time the widget is changed while realized. This is useful
    /// in order to keep state up to date with the widget size, like for
    /// instance a backing surface.
    case resize = "resize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    case notifyCanTarget = "notify::can-target"
    /// The content height. See `gtk_drawing_area_set_content_height()` for details.
    case notifyContentHeight = "notify::content-height"
    /// The content width. See `gtk_drawing_area_set_content_width()` for details.
    case notifyContentWidth = "notify::content-width"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
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
}

public extension DrawingAreaProtocol {
    /// Connect a `DrawingAreaSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DrawingAreaSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DrawingArea Class: DrawingAreaProtocol extension (methods and fields)
public extension DrawingAreaProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDrawingArea` instance.
    @inlinable var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea>! { return ptr?.assumingMemoryBound(to: GtkDrawingArea.self) }

    /// Retrieves the value previously set via `gtk_drawing_area_set_content_height()`.
    @inlinable func getContentHeight() -> Int {
        let rv = Int(gtk_drawing_area_get_content_height(drawing_area_ptr))
        return rv
    }

    /// Retrieves the value previously set via `gtk_drawing_area_set_content_width()`.
    @inlinable func getContentWidth() -> Int {
        let rv = Int(gtk_drawing_area_get_content_width(drawing_area_ptr))
        return rv
    }

    /// Sets the desired height of the contents of the drawing area. Note that
    /// because widgets may be allocated larger sizes than they requested, it is
    /// possible that the actual height passed to your draw function is larger
    /// than the height set here. You can use `gtk_widget_set_valign()` to avoid
    /// that.
    /// 
    /// If the height is set to 0 (the default), the drawing area may disappear.
    @inlinable func setContent(height: Int) {
        gtk_drawing_area_set_content_height(drawing_area_ptr, gint(height))
    
    }

    /// Sets the desired width of the contents of the drawing area. Note that
    /// because widgets may be allocated larger sizes than they requested, it is
    /// possible that the actual width passed to your draw function is larger
    /// than the width set here. You can use `gtk_widget_set_halign()` to avoid
    /// that.
    /// 
    /// If the width is set to 0 (the default), the drawing area may disappear.
    @inlinable func setContent(width: Int) {
        gtk_drawing_area_set_content_width(drawing_area_ptr, gint(width))
    
    }

    /// Setting a draw function is the main thing you want to do when using a drawing
    /// area. It is called whenever GTK needs to draw the contents of the drawing area
    /// to the screen.
    /// 
    /// The draw function will be called during the drawing stage of GTK. In the
    /// drawing stage it is not allowed to change properties of any GTK widgets or call
    /// any functions that would cause any properties to be changed.
    /// You should restrict yourself exclusively to drawing your contents in the draw
    /// function.
    /// 
    /// If what you are drawing does change, call `gtk_widget_queue_draw()` on the
    /// drawing area. This will cause a redraw and will call `draw_func` again.
    @inlinable func set(drawFunc: GtkDrawingAreaDrawFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_drawing_area_set_draw_func(drawing_area_ptr, drawFunc, userData, destroy)
    
    }
    /// Retrieves the value previously set via `gtk_drawing_area_set_content_height()`.
    @inlinable var contentHeight: Int {
        /// Retrieves the value previously set via `gtk_drawing_area_set_content_height()`.
        get {
            let rv = Int(gtk_drawing_area_get_content_height(drawing_area_ptr))
            return rv
        }
        /// Sets the desired height of the contents of the drawing area. Note that
        /// because widgets may be allocated larger sizes than they requested, it is
        /// possible that the actual height passed to your draw function is larger
        /// than the height set here. You can use `gtk_widget_set_valign()` to avoid
        /// that.
        /// 
        /// If the height is set to 0 (the default), the drawing area may disappear.
        nonmutating set {
            gtk_drawing_area_set_content_height(drawing_area_ptr, gint(newValue))
        }
    }

    /// Retrieves the value previously set via `gtk_drawing_area_set_content_width()`.
    @inlinable var contentWidth: Int {
        /// Retrieves the value previously set via `gtk_drawing_area_set_content_width()`.
        get {
            let rv = Int(gtk_drawing_area_get_content_width(drawing_area_ptr))
            return rv
        }
        /// Sets the desired width of the contents of the drawing area. Note that
        /// because widgets may be allocated larger sizes than they requested, it is
        /// possible that the actual width passed to your draw function is larger
        /// than the width set here. You can use `gtk_widget_set_halign()` to avoid
        /// that.
        /// 
        /// If the width is set to 0 (the default), the drawing area may disappear.
        nonmutating set {
            gtk_drawing_area_set_content_width(drawing_area_ptr, gint(newValue))
        }
    }

    @inlinable var widget: GtkWidget {
        get {
            let rv = drawing_area_ptr.pointee.widget
            return rv
        }
    }

}



// MARK: - DropControllerMotion Class

/// The `DropControllerMotionProtocol` protocol exposes the methods and properties of an underlying `GtkDropControllerMotion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropControllerMotion`.
/// Alternatively, use `DropControllerMotionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkDropControllerMotion` is an event controller meant for tracking
/// the pointer hovering over a widget during a drag and drop operation.
/// 
/// It is modeled after `GtkEventControllerMotion` so if you have used
/// that, this should feel really familiar.
/// 
/// The drop controller is not able to accept drops, use `GtkDropTarget`
/// for that purpose.
public protocol DropControllerMotionProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkDropControllerMotion` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropControllerMotion` instance.
    var drop_controller_motion_ptr: UnsafeMutablePointer<GtkDropControllerMotion>! { get }

}

/// The `DropControllerMotionRef` type acts as a lightweight Swift reference to an underlying `GtkDropControllerMotion` instance.
/// It exposes methods that can operate on this data type through `DropControllerMotionProtocol` conformance.
/// Use `DropControllerMotionRef` only as an `unowned` reference to an existing `GtkDropControllerMotion` instance.
///
/// `GtkDropControllerMotion` is an event controller meant for tracking
/// the pointer hovering over a widget during a drag and drop operation.
/// 
/// It is modeled after `GtkEventControllerMotion` so if you have used
/// that, this should feel really familiar.
/// 
/// The drop controller is not able to accept drops, use `GtkDropTarget`
/// for that purpose.
public struct DropControllerMotionRef: DropControllerMotionProtocol {
        /// Untyped pointer to the underlying `GtkDropControllerMotion` instance.
    /// For type-safe access, use the generated, typed pointer `drop_controller_motion_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropControllerMotionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropControllerMotion>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropControllerMotion>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropControllerMotion>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropControllerMotion>?) {
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

    /// Reference intialiser for a related type that implements `DropControllerMotionProtocol`
    @inlinable init<T: DropControllerMotionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event controller that will handle pointer motion
    /// events during drag and drop.
    @inlinable init() {
        let rv = gtk_drop_controller_motion_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DropControllerMotion` type acts as a reference-counted owner of an underlying `GtkDropControllerMotion` instance.
/// It provides the methods that can operate on this data type through `DropControllerMotionProtocol` conformance.
/// Use `DropControllerMotion` as a strong reference or owner of a `GtkDropControllerMotion` instance.
///
/// `GtkDropControllerMotion` is an event controller meant for tracking
/// the pointer hovering over a widget during a drag and drop operation.
/// 
/// It is modeled after `GtkEventControllerMotion` so if you have used
/// that, this should feel really familiar.
/// 
/// The drop controller is not able to accept drops, use `GtkDropTarget`
/// for that purpose.
open class DropControllerMotion: EventController, DropControllerMotionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDropControllerMotion>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDropControllerMotion>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropControllerMotion` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDropControllerMotion>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDropControllerMotion>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDropControllerMotion`.
    /// i.e., ownership is transferred to the `DropControllerMotion` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDropControllerMotion>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DropControllerMotionProtocol`
    /// Will retain `GtkDropControllerMotion`.
    /// - Parameter other: an instance of a related type that implements `DropControllerMotionProtocol`
    @inlinable public init<T: DropControllerMotionProtocol>(dropControllerMotion other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new event controller that will handle pointer motion
    /// events during drag and drop.
    @inlinable public init() {
        let rv = gtk_drop_controller_motion_new()
        super.init(gpointer: gpointer(rv))
    }


}

public enum DropControllerMotionPropertyName: String, PropertyNameProtocol {
    /// Whether the pointer of a drag and drop operation is in the controller's
    /// widget or a descendant.
    /// See also `GtkDropControllerMotion:is`-pointer.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkDropControllerMotion::enter` but after
    /// `GtkDropControllerMotion::leave` is emitted.
    case containsPointer = "contains-pointer"
    /// The ongoing drop operation over the controller's widget or its descendant.
    /// If no drop operation is going on, this property returns `nil`.
    /// 
    /// The event controller should not modify the `drop`, but it might want to query
    /// its properties.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkDropControllerMotion::enter` but after
    /// `GtkDropControllerMotion::leave` is emitted.
    case drop = "drop"
    /// Whether the pointer is in the controllers widget itself,
    /// as opposed to in a descendent widget. See also
    /// `GtkDropControllerMotion:contains`-pointer.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkDropControllerMotion::enter` but after
    /// `GtkDropControllerMotion::leave` is emitted.
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

public extension DropControllerMotionProtocol {
    /// Bind a `DropControllerMotionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DropControllerMotionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DropControllerMotion property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DropControllerMotionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DropControllerMotion property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DropControllerMotionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DropControllerMotionSignalName: String, SignalNameProtocol {
    /// Signals that the pointer has entered the widget.
    case enter = "enter"
    /// Signals that the pointer has left the widget.
    case leave = "leave"
    /// Emitted when the pointer moves inside the widget.
    case motion = "motion"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// Whether the pointer of a drag and drop operation is in the controller's
    /// widget or a descendant.
    /// See also `GtkDropControllerMotion:is`-pointer.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkDropControllerMotion::enter` but after
    /// `GtkDropControllerMotion::leave` is emitted.
    case notifyContainsPointer = "notify::contains-pointer"
    /// The ongoing drop operation over the controller's widget or its descendant.
    /// If no drop operation is going on, this property returns `nil`.
    /// 
    /// The event controller should not modify the `drop`, but it might want to query
    /// its properties.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkDropControllerMotion::enter` but after
    /// `GtkDropControllerMotion::leave` is emitted.
    case notifyDrop = "notify::drop"
    /// Whether the pointer is in the controllers widget itself,
    /// as opposed to in a descendent widget. See also
    /// `GtkDropControllerMotion:contains`-pointer.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkDropControllerMotion::enter` but after
    /// `GtkDropControllerMotion::leave` is emitted.
    case notifyIsPointer = "notify::is-pointer"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension DropControllerMotionProtocol {
    /// Connect a `DropControllerMotionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DropControllerMotionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DropControllerMotion Class: DropControllerMotionProtocol extension (methods and fields)
public extension DropControllerMotionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropControllerMotion` instance.
    @inlinable var drop_controller_motion_ptr: UnsafeMutablePointer<GtkDropControllerMotion>! { return ptr?.assumingMemoryBound(to: GtkDropControllerMotion.self) }

    /// Returns the value of the GtkDropControllerMotion:contains-pointer property.
    @inlinable func containsPointer() -> Bool {
        let rv = ((gtk_drop_controller_motion_contains_pointer(drop_controller_motion_ptr)) != 0)
        return rv
    }

    /// Returns the value of the GtkDropControllerMotion:drop property.
    @inlinable func getDrop() -> UnsafeMutablePointer<GdkDrop>? {
        let rv = gtk_drop_controller_motion_get_drop(drop_controller_motion_ptr)
        return rv
    }
    /// The ongoing drop operation over the controller's widget or its descendant.
    /// If no drop operation is going on, this property returns `nil`.
    /// 
    /// The event controller should not modify the `drop`, but it might want to query
    /// its properties.
    /// 
    /// When handling crossing events, this property is updated
    /// before `GtkDropControllerMotion::enter` but after
    /// `GtkDropControllerMotion::leave` is emitted.
    @inlinable var drop: UnsafeMutablePointer<GdkDrop>? {
        /// Returns the value of the GtkDropControllerMotion:drop property.
        get {
            let rv = gtk_drop_controller_motion_get_drop(drop_controller_motion_ptr)
            return rv
        }
    }

    /// Returns the value of the GtkDropControllerMotion:is-pointer property.
    @inlinable var isPointer: Bool {
        /// Returns the value of the GtkDropControllerMotion:is-pointer property.
        get {
            let rv = ((gtk_drop_controller_motion_is_pointer(drop_controller_motion_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - DropDown Class

/// The `DropDownProtocol` protocol exposes the methods and properties of an underlying `GtkDropDown` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropDown`.
/// Alternatively, use `DropDownRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkDropDown is a widget that allows the user to choose an item
/// from a list of options. The GtkDropDown displays the selected
/// choice.
/// 
/// The options are given to GtkDropDown in the form of `GListModel`,
/// and how the individual options are represented is determined by
/// a `GtkListItemFactory`. The default factory displays simple strings.
/// 
/// GtkDropDown knows how to obtain strings from the items in a
/// `GtkStringList`; for other models, you have to provide an expression
/// to find the strings via `gtk_drop_down_set_expression()`.
/// 
/// GtkDropDown can optionally allow search in the popup, which is
/// useful if the list of options is long. To enable the search entry,
/// use `gtk_drop_down_set_enable_search()`.
/// 
/// # CSS nodes
/// 
/// GtkDropDown has a single CSS node with name dropdown,
/// with the button and popover nodes as children.
/// 
/// # Accessibility
/// 
/// GtkDropDown uses the `GTK_ACCESSIBLE_ROLE_COMBO_BOX` role.
public protocol DropDownProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkDropDown` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropDown` instance.
    var drop_down_ptr: UnsafeMutablePointer<GtkDropDown>! { get }

}

/// The `DropDownRef` type acts as a lightweight Swift reference to an underlying `GtkDropDown` instance.
/// It exposes methods that can operate on this data type through `DropDownProtocol` conformance.
/// Use `DropDownRef` only as an `unowned` reference to an existing `GtkDropDown` instance.
///
/// GtkDropDown is a widget that allows the user to choose an item
/// from a list of options. The GtkDropDown displays the selected
/// choice.
/// 
/// The options are given to GtkDropDown in the form of `GListModel`,
/// and how the individual options are represented is determined by
/// a `GtkListItemFactory`. The default factory displays simple strings.
/// 
/// GtkDropDown knows how to obtain strings from the items in a
/// `GtkStringList`; for other models, you have to provide an expression
/// to find the strings via `gtk_drop_down_set_expression()`.
/// 
/// GtkDropDown can optionally allow search in the popup, which is
/// useful if the list of options is long. To enable the search entry,
/// use `gtk_drop_down_set_enable_search()`.
/// 
/// # CSS nodes
/// 
/// GtkDropDown has a single CSS node with name dropdown,
/// with the button and popover nodes as children.
/// 
/// # Accessibility
/// 
/// GtkDropDown uses the `GTK_ACCESSIBLE_ROLE_COMBO_BOX` role.
public struct DropDownRef: DropDownProtocol {
        /// Untyped pointer to the underlying `GtkDropDown` instance.
    /// For type-safe access, use the generated, typed pointer `drop_down_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropDownRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropDown>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropDown>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropDown>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropDown>?) {
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

    /// Reference intialiser for a related type that implements `DropDownProtocol`
    @inlinable init<T: DropDownProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkDropDown`.
    /// 
    /// You may want to call `gtk_drop_down_set_factory()`
    /// to set up a way to map its items to widgets.
    @inlinable init<ExpressionT: ExpressionProtocol, ListModelT: GIO.ListModelProtocol>( model: ListModelT?, expression: ExpressionT?) {
        let rv = gtk_drop_down_new(model?.list_model_ptr, expression?.expression_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkDropDown` that is populated with
    /// the strings in `strings`.
    @inlinable init(strings: UnsafePointer<UnsafePointer<CChar>?>!) {
        let rv = gtk_drop_down_new_from_strings(strings)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkDropDown` that is populated with
    /// the strings in `strings`.
    @inlinable static func newFrom(strings: UnsafePointer<UnsafePointer<CChar>?>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drop_down_new_from_strings(strings))) else { return nil }
        return rv
    }
}

/// The `DropDown` type acts as a reference-counted owner of an underlying `GtkDropDown` instance.
/// It provides the methods that can operate on this data type through `DropDownProtocol` conformance.
/// Use `DropDown` as a strong reference or owner of a `GtkDropDown` instance.
///
/// GtkDropDown is a widget that allows the user to choose an item
/// from a list of options. The GtkDropDown displays the selected
/// choice.
/// 
/// The options are given to GtkDropDown in the form of `GListModel`,
/// and how the individual options are represented is determined by
/// a `GtkListItemFactory`. The default factory displays simple strings.
/// 
/// GtkDropDown knows how to obtain strings from the items in a
/// `GtkStringList`; for other models, you have to provide an expression
/// to find the strings via `gtk_drop_down_set_expression()`.
/// 
/// GtkDropDown can optionally allow search in the popup, which is
/// useful if the list of options is long. To enable the search entry,
/// use `gtk_drop_down_set_enable_search()`.
/// 
/// # CSS nodes
/// 
/// GtkDropDown has a single CSS node with name dropdown,
/// with the button and popover nodes as children.
/// 
/// # Accessibility
/// 
/// GtkDropDown uses the `GTK_ACCESSIBLE_ROLE_COMBO_BOX` role.
open class DropDown: Widget, DropDownProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropDown` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDropDown>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropDown` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDropDown>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropDown` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropDown` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropDown` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDropDown>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropDown` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDropDown>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDropDown`.
    /// i.e., ownership is transferred to the `DropDown` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDropDown>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DropDownProtocol`
    /// Will retain `GtkDropDown`.
    /// - Parameter other: an instance of a related type that implements `DropDownProtocol`
    @inlinable public init<T: DropDownProtocol>(dropDown other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkDropDown`.
    /// 
    /// You may want to call `gtk_drop_down_set_factory()`
    /// to set up a way to map its items to widgets.
    @inlinable public init<ExpressionT: ExpressionProtocol, ListModelT: GIO.ListModelProtocol>( model: ListModelT?, expression: ExpressionT?) {
        let rv = gtk_drop_down_new(model?.list_model_ptr, expression?.expression_ptr)
        super.init(gpointer: gpointer(rv))
    }

    /// Creates a new `GtkDropDown` that is populated with
    /// the strings in `strings`.
    @inlinable public init(strings: UnsafePointer<UnsafePointer<CChar>?>!) {
        let rv = gtk_drop_down_new_from_strings(strings)
        super.init(gpointer: gpointer(rv))
    }

    /// Creates a new `GtkDropDown` that is populated with
    /// the strings in `strings`.
    @inlinable public static func newFrom(strings: UnsafePointer<UnsafePointer<CChar>?>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_drop_down_new_from_strings(strings))) else { return nil }
        return rv
    }

}

public enum DropDownPropertyName: String, PropertyNameProtocol {
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
    /// Whether to show a search entry in the popup.
    /// 
    /// Note that search requires `GtkDropDown:expression` to be set.
    case enableSearch = "enable-search"
    /// An expression to evaluate to obtain strings to match against the search
    /// term (see `GtkDropDown:enable`-search). If `GtkDropDown:factory` is not set,
    /// the expression is also used to bind strings to labels produced by a
    /// default factory.
    case expression = "expression"
    /// Factory for populating list items.
    case factory = "factory"
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
    /// The factory for populating list items in the popup.
    /// 
    /// If this is not set, `GtkDropDown:factory` is used.
    case listFactory = "list-factory"
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
    /// Model for the displayed items.
    case model = "model"
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
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    /// The position of the selected item in `GtkDropDown:model`,
    /// or `GTK_INVALID_LIST_POSITION` if no item is selected.
    case selected = "selected"
    /// The selected item.
    case selectedItem = "selected-item"
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

public extension DropDownProtocol {
    /// Bind a `DropDownPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DropDownPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DropDown property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DropDownPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DropDown property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DropDownPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DropDownSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// Whether to show a search entry in the popup.
    /// 
    /// Note that search requires `GtkDropDown:expression` to be set.
    case notifyEnableSearch = "notify::enable-search"
    /// An expression to evaluate to obtain strings to match against the search
    /// term (see `GtkDropDown:enable`-search). If `GtkDropDown:factory` is not set,
    /// the expression is also used to bind strings to labels produced by a
    /// default factory.
    case notifyExpression = "notify::expression"
    /// Factory for populating list items.
    case notifyFactory = "notify::factory"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// The factory for populating list items in the popup.
    /// 
    /// If this is not set, `GtkDropDown:factory` is used.
    case notifyListFactory = "notify::list-factory"
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
    /// Model for the displayed items.
    case notifyModel = "notify::model"
    case notifyName = "notify::name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    /// The position of the selected item in `GtkDropDown:model`,
    /// or `GTK_INVALID_LIST_POSITION` if no item is selected.
    case notifySelected = "notify::selected"
    /// The selected item.
    case notifySelectedItem = "notify::selected-item"
    case notifySensitive = "notify::sensitive"
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
}

public extension DropDownProtocol {
    /// Connect a `DropDownSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DropDownSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DropDown Class: DropDownProtocol extension (methods and fields)
public extension DropDownProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropDown` instance.
    @inlinable var drop_down_ptr: UnsafeMutablePointer<GtkDropDown>! { return ptr?.assumingMemoryBound(to: GtkDropDown.self) }

    /// Returns whether search is enabled.
    @inlinable func getEnableSearch() -> Bool {
        let rv = ((gtk_drop_down_get_enable_search(drop_down_ptr)) != 0)
        return rv
    }

    /// Gets the expression set with `gtk_drop_down_set_expression()`.
    @inlinable func getExpression() -> ExpressionRef! {
        let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_drop_down_get_expression(drop_down_ptr)))
        return rv
    }

    /// Gets the factory that's currently used to populate list items.
    /// 
    /// The factory returned by this function is always used for the
    /// item in the button. It is also used for items in the popup
    /// if `GtkDropDown:list`-factory is not set.
    @inlinable func getFactory() -> ListItemFactoryRef! {
        let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_drop_down_get_factory(drop_down_ptr)))
        return rv
    }

    /// Gets the factory that's currently used to populate list items in the popup.
    @inlinable func getListFactory() -> ListItemFactoryRef! {
        let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_drop_down_get_list_factory(drop_down_ptr)))
        return rv
    }

    /// Gets the model that provides the displayed items.
    @inlinable func getModel() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_drop_down_get_model(drop_down_ptr))
        return rv
    }

    /// Gets the position of the selected item.
    @inlinable func getSelected() -> Int {
        let rv = Int(gtk_drop_down_get_selected(drop_down_ptr))
        return rv
    }

    /// Gets the selected item. If no item is selected, `nil` is returned.
    @inlinable func getSelectedItem() -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gpointer: gtk_drop_down_get_selected_item(drop_down_ptr))
        return rv
    }

    /// Sets whether a search entry will be shown in the popup that
    /// allows to search for items in the list.
    /// 
    /// Note that `GtkDropDown:expression` must be set for search to work.
    @inlinable func set(enableSearch: Bool) {
        gtk_drop_down_set_enable_search(drop_down_ptr, gboolean((enableSearch) ? 1 : 0))
    
    }

    /// Sets the expression that gets evaluated to obtain strings from items
    /// when searching in the popup. The expression must have a value type of
    /// `G_TYPE_STRING`.
    @inlinable func set(expression: ExpressionRef? = nil) {
        gtk_drop_down_set_expression(drop_down_ptr, expression?.expression_ptr)
    
    }
    /// Sets the expression that gets evaluated to obtain strings from items
    /// when searching in the popup. The expression must have a value type of
    /// `G_TYPE_STRING`.
    @inlinable func set<ExpressionT: ExpressionProtocol>(expression: ExpressionT?) {
        gtk_drop_down_set_expression(drop_down_ptr, expression?.expression_ptr)
    
    }

    /// Sets the `GtkListItemFactory` to use for populating list items.
    @inlinable func set(factory: ListItemFactoryRef? = nil) {
        gtk_drop_down_set_factory(drop_down_ptr, factory?.list_item_factory_ptr)
    
    }
    /// Sets the `GtkListItemFactory` to use for populating list items.
    @inlinable func set<ListItemFactoryT: ListItemFactoryProtocol>(factory: ListItemFactoryT?) {
        gtk_drop_down_set_factory(drop_down_ptr, factory?.list_item_factory_ptr)
    
    }

    /// Sets the `GtkListItemFactory` to use for populating list items in the popup.
    @inlinable func setList(factory: ListItemFactoryRef? = nil) {
        gtk_drop_down_set_list_factory(drop_down_ptr, factory?.list_item_factory_ptr)
    
    }
    /// Sets the `GtkListItemFactory` to use for populating list items in the popup.
    @inlinable func setList<ListItemFactoryT: ListItemFactoryProtocol>(factory: ListItemFactoryT?) {
        gtk_drop_down_set_list_factory(drop_down_ptr, factory?.list_item_factory_ptr)
    
    }

    /// Sets the `GListModel` to use.
    @inlinable func set(model: GIO.ListModelRef? = nil) {
        gtk_drop_down_set_model(drop_down_ptr, model?.list_model_ptr)
    
    }
    /// Sets the `GListModel` to use.
    @inlinable func set<ListModelT: GIO.ListModelProtocol>(model: ListModelT?) {
        gtk_drop_down_set_model(drop_down_ptr, model?.list_model_ptr)
    
    }

    /// Selects the item at the given position.
    @inlinable func setSelected(position: Int) {
        gtk_drop_down_set_selected(drop_down_ptr, guint(position))
    
    }
    /// Returns whether search is enabled.
    @inlinable var enableSearch: Bool {
        /// Returns whether search is enabled.
        get {
            let rv = ((gtk_drop_down_get_enable_search(drop_down_ptr)) != 0)
            return rv
        }
        /// Sets whether a search entry will be shown in the popup that
        /// allows to search for items in the list.
        /// 
        /// Note that `GtkDropDown:expression` must be set for search to work.
        nonmutating set {
            gtk_drop_down_set_enable_search(drop_down_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// An expression to evaluate to obtain strings to match against the search
    /// term (see `GtkDropDown:enable`-search). If `GtkDropDown:factory` is not set,
    /// the expression is also used to bind strings to labels produced by a
    /// default factory.
    @inlinable var expression: ExpressionRef! {
        /// Gets the expression set with `gtk_drop_down_set_expression()`.
        get {
            let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_drop_down_get_expression(drop_down_ptr)))
            return rv
        }
        /// Sets the expression that gets evaluated to obtain strings from items
        /// when searching in the popup. The expression must have a value type of
        /// `G_TYPE_STRING`.
        nonmutating set {
            gtk_drop_down_set_expression(drop_down_ptr, UnsafeMutablePointer<GtkExpression>(newValue?.expression_ptr))
        }
    }

    /// Factory for populating list items.
    @inlinable var factory: ListItemFactoryRef! {
        /// Gets the factory that's currently used to populate list items.
        /// 
        /// The factory returned by this function is always used for the
        /// item in the button. It is also used for items in the popup
        /// if `GtkDropDown:list`-factory is not set.
        get {
            let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_drop_down_get_factory(drop_down_ptr)))
            return rv
        }
        /// Sets the `GtkListItemFactory` to use for populating list items.
        nonmutating set {
            gtk_drop_down_set_factory(drop_down_ptr, UnsafeMutablePointer<GtkListItemFactory>(newValue?.list_item_factory_ptr))
        }
    }

    /// Gets the factory that's currently used to populate list items in the popup.
    @inlinable var listFactory: ListItemFactoryRef! {
        /// Gets the factory that's currently used to populate list items in the popup.
        get {
            let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_drop_down_get_list_factory(drop_down_ptr)))
            return rv
        }
        /// Sets the `GtkListItemFactory` to use for populating list items in the popup.
        nonmutating set {
            gtk_drop_down_set_list_factory(drop_down_ptr, UnsafeMutablePointer<GtkListItemFactory>(newValue?.list_item_factory_ptr))
        }
    }

    /// Model for the displayed items.
    @inlinable var model: GIO.ListModelRef! {
        /// Gets the model that provides the displayed items.
        get {
            let rv = GIO.ListModelRef(gtk_drop_down_get_model(drop_down_ptr))
            return rv
        }
        /// Sets the `GListModel` to use.
        nonmutating set {
            gtk_drop_down_set_model(drop_down_ptr, UnsafeMutablePointer<GListModel>(newValue?.list_model_ptr))
        }
    }

    /// The position of the selected item in `GtkDropDown:model`,
    /// or `GTK_INVALID_LIST_POSITION` if no item is selected.
    @inlinable var selected: Int {
        /// Gets the position of the selected item.
        get {
            let rv = Int(gtk_drop_down_get_selected(drop_down_ptr))
            return rv
        }
        /// Selects the item at the given position.
        nonmutating set {
            gtk_drop_down_set_selected(drop_down_ptr, guint(newValue))
        }
    }

    /// Gets the selected item. If no item is selected, `nil` is returned.
    @inlinable var selectedItem: GLibObject.ObjectRef! {
        /// Gets the selected item. If no item is selected, `nil` is returned.
        get {
            let rv = GLibObject.ObjectRef(gpointer: gtk_drop_down_get_selected_item(drop_down_ptr))
            return rv
        }
    }


}



// MARK: - DropTarget Class

/// The `DropTargetProtocol` protocol exposes the methods and properties of an underlying `GtkDropTarget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropTarget`.
/// Alternatively, use `DropTargetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkDropTarget is an event controller implementing a simple way to
/// receive Drag-and-Drop operations.
/// 
/// The most basic way to use a `GtkDropTarget` to receive drops on a
/// widget is to create it via `gtk_drop_target_new()` passing in the
/// `GType` of the data you want to receive and connect to the
/// GtkDropTarget`drop` signal to receive the data.
/// 
/// `GtkDropTarget` supports more options, such as:
/// 
///  * rejecting potential drops via the `GtkDropTarget::accept` signal
///    and the `gtk_drop_target_reject()` function to let other drop
///    targets handle the drop
///  * tracking an ongoing drag operation before the drop via the
///    `GtkDropTarget::enter`, `GtkDropTarget::motion` and
///    `GtkDropTarget::leave` signals
///  * configuring how to receive data by setting the
///    `GtkDropTarget:preload` property and listening for its availability
///    via the `GtkDropTarget:value` property
/// 
/// However, `GtkDropTarget` is ultimately modeled in a synchronous way
/// and only supports data transferred via `GType`.
/// If you want full control over an ongoing drop, the `GtkDropTargetAsync`
/// object gives you this ability.
/// 
/// While a pointer is dragged over the drop target's widget and the drop
/// has not been rejected, that widget will receive the
/// `GTK_STATE_FLAG_DROP_ACTIVE` state, which can be used to style the widget.
public protocol DropTargetProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkDropTarget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropTarget` instance.
    var drop_target_ptr: UnsafeMutablePointer<GtkDropTarget>! { get }

}

/// The `DropTargetRef` type acts as a lightweight Swift reference to an underlying `GtkDropTarget` instance.
/// It exposes methods that can operate on this data type through `DropTargetProtocol` conformance.
/// Use `DropTargetRef` only as an `unowned` reference to an existing `GtkDropTarget` instance.
///
/// GtkDropTarget is an event controller implementing a simple way to
/// receive Drag-and-Drop operations.
/// 
/// The most basic way to use a `GtkDropTarget` to receive drops on a
/// widget is to create it via `gtk_drop_target_new()` passing in the
/// `GType` of the data you want to receive and connect to the
/// GtkDropTarget`drop` signal to receive the data.
/// 
/// `GtkDropTarget` supports more options, such as:
/// 
///  * rejecting potential drops via the `GtkDropTarget::accept` signal
///    and the `gtk_drop_target_reject()` function to let other drop
///    targets handle the drop
///  * tracking an ongoing drag operation before the drop via the
///    `GtkDropTarget::enter`, `GtkDropTarget::motion` and
///    `GtkDropTarget::leave` signals
///  * configuring how to receive data by setting the
///    `GtkDropTarget:preload` property and listening for its availability
///    via the `GtkDropTarget:value` property
/// 
/// However, `GtkDropTarget` is ultimately modeled in a synchronous way
/// and only supports data transferred via `GType`.
/// If you want full control over an ongoing drop, the `GtkDropTargetAsync`
/// object gives you this ability.
/// 
/// While a pointer is dragged over the drop target's widget and the drop
/// has not been rejected, that widget will receive the
/// `GTK_STATE_FLAG_DROP_ACTIVE` state, which can be used to style the widget.
public struct DropTargetRef: DropTargetProtocol {
        /// Untyped pointer to the underlying `GtkDropTarget` instance.
    /// For type-safe access, use the generated, typed pointer `drop_target_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropTargetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropTarget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropTarget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropTarget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropTarget>?) {
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

    /// Reference intialiser for a related type that implements `DropTargetProtocol`
    @inlinable init<T: DropTargetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkDropTarget` object.
    /// 
    /// If the drop target should support more than 1 type, pass
    /// `G_TYPE_INVALID` for `type` and then call
    /// `gtk_drop_target_set_gtypes()`.
    @inlinable init( type: GType, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_new(type, actions.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DropTarget` type acts as a reference-counted owner of an underlying `GtkDropTarget` instance.
/// It provides the methods that can operate on this data type through `DropTargetProtocol` conformance.
/// Use `DropTarget` as a strong reference or owner of a `GtkDropTarget` instance.
///
/// GtkDropTarget is an event controller implementing a simple way to
/// receive Drag-and-Drop operations.
/// 
/// The most basic way to use a `GtkDropTarget` to receive drops on a
/// widget is to create it via `gtk_drop_target_new()` passing in the
/// `GType` of the data you want to receive and connect to the
/// GtkDropTarget`drop` signal to receive the data.
/// 
/// `GtkDropTarget` supports more options, such as:
/// 
///  * rejecting potential drops via the `GtkDropTarget::accept` signal
///    and the `gtk_drop_target_reject()` function to let other drop
///    targets handle the drop
///  * tracking an ongoing drag operation before the drop via the
///    `GtkDropTarget::enter`, `GtkDropTarget::motion` and
///    `GtkDropTarget::leave` signals
///  * configuring how to receive data by setting the
///    `GtkDropTarget:preload` property and listening for its availability
///    via the `GtkDropTarget:value` property
/// 
/// However, `GtkDropTarget` is ultimately modeled in a synchronous way
/// and only supports data transferred via `GType`.
/// If you want full control over an ongoing drop, the `GtkDropTargetAsync`
/// object gives you this ability.
/// 
/// While a pointer is dragged over the drop target's widget and the drop
/// has not been rejected, that widget will receive the
/// `GTK_STATE_FLAG_DROP_ACTIVE` state, which can be used to style the widget.
open class DropTarget: EventController, DropTargetProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDropTarget>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDropTarget>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTarget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDropTarget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDropTarget>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDropTarget`.
    /// i.e., ownership is transferred to the `DropTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDropTarget>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DropTargetProtocol`
    /// Will retain `GtkDropTarget`.
    /// - Parameter other: an instance of a related type that implements `DropTargetProtocol`
    @inlinable public init<T: DropTargetProtocol>(dropTarget other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkDropTarget` object.
    /// 
    /// If the drop target should support more than 1 type, pass
    /// `G_TYPE_INVALID` for `type` and then call
    /// `gtk_drop_target_set_gtypes()`.
    @inlinable public init( type: GType, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_new(type, actions.value)
        super.init(gpointer: gpointer(rv))
    }


}

public enum DropTargetPropertyName: String, PropertyNameProtocol {
    /// The `GdkDragActions` that this drop target supports
    case actions = "actions"
    /// The `GdkDrop` that is currently being performed
    case drop = "drop"
    /// The `GdkContentFormats` that determine the supported data formats
    case formats = "formats"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// Whether the drop data should be preloaded when the pointer is only
    /// hovering over the widget but has not been released.
    /// 
    /// Setting this property allows finer grained reaction to an ongoing
    /// drop at the cost of loading more data.
    /// 
    /// The default value for this property is `false` to avoid downloading
    /// huge amounts of data by accident.
    /// For example, if somebody drags a full document of gigabytes of text
    /// from a text editor across a widget with a preloading drop target,
    /// this data will be downloaded, even if the data is ultimately dropped
    /// elsewhere.
    /// 
    /// For a lot of data formats, the amount of data is very small (like
    /// `GDK_TYPE_RGBA`), so enabling this property does not hurt at all.
    /// And for local-only drag'n'drop operations, no data transfer is done,
    /// so enabling it there is free.
    case preload = "preload"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The value for this drop operation or `nil` if the data has not been
    /// loaded yet or no drop operation is going on.
    /// 
    /// Data may be available before the GtkDropTarget`drop` signal gets emitted -
    /// for example when the GtkDropTarget:preload property is set.
    /// You can use the GObject`notify` signal to be notified of available data.
    case value = "value"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension DropTargetProtocol {
    /// Bind a `DropTargetPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DropTargetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DropTarget property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DropTargetPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DropTarget property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DropTargetPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DropTargetSignalName: String, SignalNameProtocol {
    /// The `accept` signal is emitted on the drop site when a drop operation
    /// is about to begin.
    /// If the drop is not accepted, `false` will be returned and the drop target
    /// will ignore the drop. If `true` is returned, the drop is accepted for now
    /// but may be rejected later via a call to `gtk_drop_target_reject()` or
    /// ultimately by returning `false` from GtkDropTarget`drop`
    /// 
    /// The default handler for this signal decides whether to accept the drop
    /// based on the formats provided by the `drop`.
    /// 
    /// If the decision whether the drop will be accepted or rejected needs
    /// inspecting the data, this function should return `true`, the
    /// GtkDropTarget:preload property should be set and the value
    /// should be inspected via the GObject`notify:value` signal and then call
    /// `gtk_drop_target_reject()`.
    case accept = "accept"
    /// The `drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the pointer position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// 
    /// Otherwise, the handler returns `true`. In this case, this handler will
    /// accept the drop. The handler is responsible for rading the given `value`
    /// and performing the drop operation.
    case drop = "drop"
    /// The `enter` signal is emitted on the drop site when the pointer
    /// enters the widget. It can be used to set up custom highlighting.
    case enter = "enter"
    /// The `leave` signal is emitted on the drop site when the pointer
    /// leaves the widget. Its main purpose it to undo things done in
    /// `GtkDropTarget::enter`.
    case leave = "leave"
    /// The `motion` signal is emitted while the pointer is moving
    /// over the drop target.
    case motion = "motion"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// The `GdkDragActions` that this drop target supports
    case notifyActions = "notify::actions"
    /// The `GdkDrop` that is currently being performed
    case notifyDrop = "notify::drop"
    /// The `GdkContentFormats` that determine the supported data formats
    case notifyFormats = "notify::formats"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// Whether the drop data should be preloaded when the pointer is only
    /// hovering over the widget but has not been released.
    /// 
    /// Setting this property allows finer grained reaction to an ongoing
    /// drop at the cost of loading more data.
    /// 
    /// The default value for this property is `false` to avoid downloading
    /// huge amounts of data by accident.
    /// For example, if somebody drags a full document of gigabytes of text
    /// from a text editor across a widget with a preloading drop target,
    /// this data will be downloaded, even if the data is ultimately dropped
    /// elsewhere.
    /// 
    /// For a lot of data formats, the amount of data is very small (like
    /// `GDK_TYPE_RGBA`), so enabling this property does not hurt at all.
    /// And for local-only drag'n'drop operations, no data transfer is done,
    /// so enabling it there is free.
    case notifyPreload = "notify::preload"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The value for this drop operation or `nil` if the data has not been
    /// loaded yet or no drop operation is going on.
    /// 
    /// Data may be available before the GtkDropTarget`drop` signal gets emitted -
    /// for example when the GtkDropTarget:preload property is set.
    /// You can use the GObject`notify` signal to be notified of available data.
    case notifyValue = "notify::value"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension DropTargetProtocol {
    /// Connect a `DropTargetSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DropTargetSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DropTarget Class: DropTargetProtocol extension (methods and fields)
public extension DropTargetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropTarget` instance.
    @inlinable var drop_target_ptr: UnsafeMutablePointer<GtkDropTarget>! { return ptr?.assumingMemoryBound(to: GtkDropTarget.self) }

    /// Gets the actions that this drop target supports.
    @inlinable func getActions() -> Gdk.DragAction {
        let rv = Gdk.DragAction(gtk_drop_target_get_actions(drop_target_ptr))
        return rv
    }

    /// Gets the currently handled drop operation.
    /// 
    /// If no drop operation is going on, `nil` is returned.
    @inlinable func getDrop() -> UnsafeMutablePointer<GdkDrop>? {
        let rv = gtk_drop_target_get_drop(drop_target_ptr)
        return rv
    }

    /// Gets the data formats that this drop target accepts.
    /// 
    /// If the result is `nil`, all formats are expected to be supported.
    @inlinable func getFormats() -> UnsafeMutablePointer<GdkContentFormats>? {
        let rv = gtk_drop_target_get_formats(drop_target_ptr)
        return rv
    }

    /// Gets the list of supported `GTypes` for `self`. If no type have been set,
    /// `nil` will be returned.
    @inlinable func getGtypes(nTypes: UnsafeMutablePointer<gsize>! = nil) -> UnsafePointer<GType>! {
        let rv = gtk_drop_target_get_gtypes(drop_target_ptr, nTypes)
        return rv
    }

    /// Gets the value of the GtkDropTarget:preload property.
    @inlinable func getPreload() -> Bool {
        let rv = ((gtk_drop_target_get_preload(drop_target_ptr)) != 0)
        return rv
    }

    /// Gets the value of the GtkDropTarget:value property.
    @inlinable func getValue() -> GLibObject.ValueRef! {
        let rv = GLibObject.ValueRef(gtk_drop_target_get_value(drop_target_ptr))
        return rv
    }

    /// Rejects the ongoing drop operation.
    /// 
    /// If no drop operation is ongoing - when GdkDropTarget:drop
    /// returns `nil` - this function does nothing.
    /// 
    /// This function should be used when delaying the decision
    /// on whether to accept a drag or not until after reading
    /// the data.
    @inlinable func reject() {
        gtk_drop_target_reject(drop_target_ptr)
    
    }

    /// Sets the actions that this drop target supports.
    @inlinable func set(actions: Gdk.DragAction) {
        gtk_drop_target_set_actions(drop_target_ptr, actions.value)
    
    }

    /// Sets the supported `GTypes` for this drop target.
    /// 
    /// The GtkDropTarget`drop` signal will
    @inlinable func setGtypes(types: UnsafeMutablePointer<GType>! = nil, nTypes: Int) {
        gtk_drop_target_set_gtypes(drop_target_ptr, types, gsize(nTypes))
    
    }

    /// Sets the GtkDropTarget:preload property.
    @inlinable func set(preload: Bool) {
        gtk_drop_target_set_preload(drop_target_ptr, gboolean((preload) ? 1 : 0))
    
    }
    /// The `GdkDragActions` that this drop target supports
    @inlinable var actions: Gdk.DragAction {
        /// Gets the actions that this drop target supports.
        get {
            let rv = Gdk.DragAction(gtk_drop_target_get_actions(drop_target_ptr))
            return rv
        }
        /// Sets the actions that this drop target supports.
        nonmutating set {
            gtk_drop_target_set_actions(drop_target_ptr, newValue.value)
        }
    }

    /// The `GdkDrop` that is currently being performed
    @inlinable var drop: UnsafeMutablePointer<GdkDrop>? {
        /// Gets the currently handled drop operation.
        /// 
        /// If no drop operation is going on, `nil` is returned.
        get {
            let rv = gtk_drop_target_get_drop(drop_target_ptr)
            return rv
        }
    }

    /// The `GdkContentFormats` that determine the supported data formats
    @inlinable var formats: UnsafeMutablePointer<GdkContentFormats>? {
        /// Gets the data formats that this drop target accepts.
        /// 
        /// If the result is `nil`, all formats are expected to be supported.
        get {
            let rv = gtk_drop_target_get_formats(drop_target_ptr)
            return rv
        }
    }

    /// Whether the drop data should be preloaded when the pointer is only
    /// hovering over the widget but has not been released.
    /// 
    /// Setting this property allows finer grained reaction to an ongoing
    /// drop at the cost of loading more data.
    /// 
    /// The default value for this property is `false` to avoid downloading
    /// huge amounts of data by accident.
    /// For example, if somebody drags a full document of gigabytes of text
    /// from a text editor across a widget with a preloading drop target,
    /// this data will be downloaded, even if the data is ultimately dropped
    /// elsewhere.
    /// 
    /// For a lot of data formats, the amount of data is very small (like
    /// `GDK_TYPE_RGBA`), so enabling this property does not hurt at all.
    /// And for local-only drag'n'drop operations, no data transfer is done,
    /// so enabling it there is free.
    @inlinable var preload: Bool {
        /// Gets the value of the GtkDropTarget:preload property.
        get {
            let rv = ((gtk_drop_target_get_preload(drop_target_ptr)) != 0)
            return rv
        }
        /// Sets the GtkDropTarget:preload property.
        nonmutating set {
            gtk_drop_target_set_preload(drop_target_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The value for this drop operation or `nil` if the data has not been
    /// loaded yet or no drop operation is going on.
    /// 
    /// Data may be available before the GtkDropTarget`drop` signal gets emitted -
    /// for example when the GtkDropTarget:preload property is set.
    /// You can use the GObject`notify` signal to be notified of available data.
    @inlinable var value: GLibObject.ValueRef! {
        /// Gets the value of the GtkDropTarget:value property.
        get {
            let rv = GLibObject.ValueRef(gtk_drop_target_get_value(drop_target_ptr))
            return rv
        }
    }


}



// MARK: - DropTargetAsync Class

/// The `DropTargetAsyncProtocol` protocol exposes the methods and properties of an underlying `GtkDropTargetAsync` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropTargetAsync`.
/// Alternatively, use `DropTargetAsyncRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkDropTargetAsync is an auxiliary object that can be used to receive
/// Drag-and-Drop operations.
/// It is the more complete but also more complex method of handling drop
/// operations compared to `GtkDropTarget` and you should only use it if
/// `GtkDropTarget` doesn't provide all the features you need.
/// 
/// To use a `GtkDropTargetAsync` to receive drops on a widget, you create
/// a `GtkDropTargetAsync` object, configure which data formats and actions
/// you support, connect to its signals, and then attach
/// it to the widget with `gtk_widget_add_controller()`.
/// 
/// During a drag operation, the first signal that a GtkDropTargetAsync
/// emits is `GtkDropTargetAsync::accept`, which is meant to determine
/// whether the target is a possible drop site for the ongoing drop.
/// The default handler for the `accept` signal accepts the drop
/// if it finds a compatible data format and an action that is supported
/// on both sides.
/// 
/// If it is, and the widget becomes a target, you will receive a
/// `GtkDropTargetAsync::drag`-enter signal, followed by
/// `GtkDropTargetAsync::drag`-motion signals as the pointer moves,
/// optionally a `GtkDropTargetAsync::drop` signal when a drop happens,
/// and finally a `GtkDropTargetAsync::drag`-leave signal when the pointer
/// moves off the widget.
/// 
/// The `drag`-enter and `drag`-motion handler return a `GdkDragAction`
/// to update the status of the ongoing operation. The `drop` handler
/// should decide if it ultimately accepts the drop and if it does, it
/// should initiate the data transfer and finish the operation by calling
/// `gdk_drop_finish()`.
/// 
/// Between the `drag`-enter and `drag`-leave signals the widget is a
/// current drop target, and will receive the `GTK_STATE_FLAG_DROP_ACTIVE`
/// state, which can be used by themes to style the widget as a drop target.
public protocol DropTargetAsyncProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkDropTargetAsync` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropTargetAsync` instance.
    var drop_target_async_ptr: UnsafeMutablePointer<GtkDropTargetAsync>! { get }

}

/// The `DropTargetAsyncRef` type acts as a lightweight Swift reference to an underlying `GtkDropTargetAsync` instance.
/// It exposes methods that can operate on this data type through `DropTargetAsyncProtocol` conformance.
/// Use `DropTargetAsyncRef` only as an `unowned` reference to an existing `GtkDropTargetAsync` instance.
///
/// GtkDropTargetAsync is an auxiliary object that can be used to receive
/// Drag-and-Drop operations.
/// It is the more complete but also more complex method of handling drop
/// operations compared to `GtkDropTarget` and you should only use it if
/// `GtkDropTarget` doesn't provide all the features you need.
/// 
/// To use a `GtkDropTargetAsync` to receive drops on a widget, you create
/// a `GtkDropTargetAsync` object, configure which data formats and actions
/// you support, connect to its signals, and then attach
/// it to the widget with `gtk_widget_add_controller()`.
/// 
/// During a drag operation, the first signal that a GtkDropTargetAsync
/// emits is `GtkDropTargetAsync::accept`, which is meant to determine
/// whether the target is a possible drop site for the ongoing drop.
/// The default handler for the `accept` signal accepts the drop
/// if it finds a compatible data format and an action that is supported
/// on both sides.
/// 
/// If it is, and the widget becomes a target, you will receive a
/// `GtkDropTargetAsync::drag`-enter signal, followed by
/// `GtkDropTargetAsync::drag`-motion signals as the pointer moves,
/// optionally a `GtkDropTargetAsync::drop` signal when a drop happens,
/// and finally a `GtkDropTargetAsync::drag`-leave signal when the pointer
/// moves off the widget.
/// 
/// The `drag`-enter and `drag`-motion handler return a `GdkDragAction`
/// to update the status of the ongoing operation. The `drop` handler
/// should decide if it ultimately accepts the drop and if it does, it
/// should initiate the data transfer and finish the operation by calling
/// `gdk_drop_finish()`.
/// 
/// Between the `drag`-enter and `drag`-leave signals the widget is a
/// current drop target, and will receive the `GTK_STATE_FLAG_DROP_ACTIVE`
/// state, which can be used by themes to style the widget as a drop target.
public struct DropTargetAsyncRef: DropTargetAsyncProtocol {
        /// Untyped pointer to the underlying `GtkDropTargetAsync` instance.
    /// For type-safe access, use the generated, typed pointer `drop_target_async_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropTargetAsyncRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropTargetAsync>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropTargetAsync>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropTargetAsync>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropTargetAsync>?) {
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

    /// Reference intialiser for a related type that implements `DropTargetAsyncProtocol`
    @inlinable init<T: DropTargetAsyncProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkDropTargetAsync` object.
    @inlinable init( formats: UnsafeMutablePointer<GdkContentFormats>? = nil, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_async_new(formats, actions.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DropTargetAsync` type acts as a reference-counted owner of an underlying `GtkDropTargetAsync` instance.
/// It provides the methods that can operate on this data type through `DropTargetAsyncProtocol` conformance.
/// Use `DropTargetAsync` as a strong reference or owner of a `GtkDropTargetAsync` instance.
///
/// GtkDropTargetAsync is an auxiliary object that can be used to receive
/// Drag-and-Drop operations.
/// It is the more complete but also more complex method of handling drop
/// operations compared to `GtkDropTarget` and you should only use it if
/// `GtkDropTarget` doesn't provide all the features you need.
/// 
/// To use a `GtkDropTargetAsync` to receive drops on a widget, you create
/// a `GtkDropTargetAsync` object, configure which data formats and actions
/// you support, connect to its signals, and then attach
/// it to the widget with `gtk_widget_add_controller()`.
/// 
/// During a drag operation, the first signal that a GtkDropTargetAsync
/// emits is `GtkDropTargetAsync::accept`, which is meant to determine
/// whether the target is a possible drop site for the ongoing drop.
/// The default handler for the `accept` signal accepts the drop
/// if it finds a compatible data format and an action that is supported
/// on both sides.
/// 
/// If it is, and the widget becomes a target, you will receive a
/// `GtkDropTargetAsync::drag`-enter signal, followed by
/// `GtkDropTargetAsync::drag`-motion signals as the pointer moves,
/// optionally a `GtkDropTargetAsync::drop` signal when a drop happens,
/// and finally a `GtkDropTargetAsync::drag`-leave signal when the pointer
/// moves off the widget.
/// 
/// The `drag`-enter and `drag`-motion handler return a `GdkDragAction`
/// to update the status of the ongoing operation. The `drop` handler
/// should decide if it ultimately accepts the drop and if it does, it
/// should initiate the data transfer and finish the operation by calling
/// `gdk_drop_finish()`.
/// 
/// Between the `drag`-enter and `drag`-leave signals the widget is a
/// current drop target, and will receive the `GTK_STATE_FLAG_DROP_ACTIVE`
/// state, which can be used by themes to style the widget as a drop target.
open class DropTargetAsync: EventController, DropTargetAsyncProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTargetAsync` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDropTargetAsync>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTargetAsync` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDropTargetAsync>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTargetAsync` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTargetAsync` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTargetAsync` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDropTargetAsync>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DropTargetAsync` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDropTargetAsync>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDropTargetAsync`.
    /// i.e., ownership is transferred to the `DropTargetAsync` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDropTargetAsync>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DropTargetAsyncProtocol`
    /// Will retain `GtkDropTargetAsync`.
    /// - Parameter other: an instance of a related type that implements `DropTargetAsyncProtocol`
    @inlinable public init<T: DropTargetAsyncProtocol>(dropTargetAsync other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkDropTargetAsync` object.
    @inlinable public init( formats: UnsafeMutablePointer<GdkContentFormats>? = nil, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_async_new(formats, actions.value)
        super.init(gpointer: gpointer(rv))
    }


}

public enum DropTargetAsyncPropertyName: String, PropertyNameProtocol {
    /// The `GdkDragActions` that this drop target supports
    case actions = "actions"
    /// The `GdkContentFormats` that determines the supported data formats
    case formats = "formats"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension DropTargetAsyncProtocol {
    /// Bind a `DropTargetAsyncPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DropTargetAsyncPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DropTargetAsync property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DropTargetAsyncPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DropTargetAsync property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DropTargetAsyncPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DropTargetAsyncSignalName: String, SignalNameProtocol {
    /// The `accept` signal is emitted on the drop site when a drop operation
    /// is about to begin.
    /// 
    /// If the drop is not accepted, `false` will be returned and the drop target
    /// will ignore the drop. If `true` is returned, the drop is accepted for now
    /// but may be rejected later via a call to `gtk_drop_target_async_reject()` or
    /// ultimately by returning `false` from `GtkDropTargetAsync::drop`.
    /// 
    /// The default handler for this signal decides whether to accept the drop
    /// based on the formats provided by the `drop`.
    /// 
    /// If the decision whether the drop will be accepted or rejected needs
    /// further processing, such as inspecting the data, this function should
    /// return `true` and proceed as is `drop` was accepted and if it decides to
    /// reject the drop later, it should call `gtk_drop_target_async_reject_drop()`.
    case accept = "accept"
    /// The `drag`-enter signal is emitted on the drop site when the pointer
    /// enters the widget. It can be used to set up custom highlighting.
    case dragEnter = "drag-enter"
    /// The `drag`-leave signal is emitted on the drop site when the pointer
    /// leaves the widget. Its main purpose it to undo things done in
    /// `GtkDropTargetAsync::drag`-enter.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted while the pointer is moving
    /// over the drop target.
    case dragMotion = "drag-motion"
    /// The `drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the pointer position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// 
    /// Otherwise, the handler returns `true`. In this case, this handler will
    /// accept the drop. The handler must ensure that `gdk_drop_finish()` is
    /// called to let the source know that the drop is done. The call to
    /// `gdk_drop_finish()` must only be done when all data has been received.
    /// 
    /// To receive the data, use one of the read functions provides by `GdkDrop`
    /// such as `gdk_drop_read_async()` or `gdk_drop_read_value_async()`.
    case drop = "drop"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// The `GdkDragActions` that this drop target supports
    case notifyActions = "notify::actions"
    /// The `GdkContentFormats` that determines the supported data formats
    case notifyFormats = "notify::formats"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension DropTargetAsyncProtocol {
    /// Connect a `DropTargetAsyncSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DropTargetAsyncSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: DropTargetAsync Class: DropTargetAsyncProtocol extension (methods and fields)
public extension DropTargetAsyncProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropTargetAsync` instance.
    @inlinable var drop_target_async_ptr: UnsafeMutablePointer<GtkDropTargetAsync>! { return ptr?.assumingMemoryBound(to: GtkDropTargetAsync.self) }

    /// Gets the actions that this drop target supports.
    @inlinable func getActions() -> Gdk.DragAction {
        let rv = Gdk.DragAction(gtk_drop_target_async_get_actions(drop_target_async_ptr))
        return rv
    }

    /// Gets the data formats that this drop target accepts.
    /// 
    /// If the result is `nil`, all formats are expected to be supported.
    @inlinable func getFormats() -> UnsafeMutablePointer<GdkContentFormats>? {
        let rv = gtk_drop_target_async_get_formats(drop_target_async_ptr)
        return rv
    }

    /// Sets the `drop` as not accepted on this drag site.
    /// 
    /// This function should be used when delaying the decision
    /// on whether to accept a drag or not until after reading
    /// the data.
    @inlinable func reject(drop: UnsafeMutablePointer<GdkDrop>!) {
        gtk_drop_target_async_reject_drop(drop_target_async_ptr, drop)
    
    }

    /// Sets the actions that this drop target supports.
    @inlinable func set(actions: Gdk.DragAction) {
        gtk_drop_target_async_set_actions(drop_target_async_ptr, actions.value)
    
    }

    /// Sets the data formats that this drop target will accept.
    @inlinable func set(formats: UnsafeMutablePointer<GdkContentFormats>? = nil) {
        gtk_drop_target_async_set_formats(drop_target_async_ptr, formats)
    
    }
    /// The `GdkDragActions` that this drop target supports
    @inlinable var actions: Gdk.DragAction {
        /// Gets the actions that this drop target supports.
        get {
            let rv = Gdk.DragAction(gtk_drop_target_async_get_actions(drop_target_async_ptr))
            return rv
        }
        /// Sets the actions that this drop target supports.
        nonmutating set {
            gtk_drop_target_async_set_actions(drop_target_async_ptr, newValue.value)
        }
    }

    /// The `GdkContentFormats` that determines the supported data formats
    @inlinable var formats: UnsafeMutablePointer<GdkContentFormats>? {
        /// Gets the data formats that this drop target accepts.
        /// 
        /// If the result is `nil`, all formats are expected to be supported.
        get {
            let rv = gtk_drop_target_async_get_formats(drop_target_async_ptr)
            return rv
        }
        /// Sets the data formats that this drop target will accept.
        nonmutating set {
            gtk_drop_target_async_set_formats(drop_target_async_ptr, newValue)
        }
    }


}



// MARK: - EditableLabel Class

/// The `EditableLabelProtocol` protocol exposes the methods and properties of an underlying `GtkEditableLabel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EditableLabel`.
/// Alternatively, use `EditableLabelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkEditableLabel is a `GtkLabel` that allows users to
/// edit the text by switching the widget to an “edit mode”.
/// 
/// GtkEditableLabel does not have API of its own, but it
/// implements the `GtkEditable` interface.
/// 
/// The default bindings for activating the edit mode is
/// to click or press the Enter key. The default bindings
/// for leaving the edit mode are the Enter key (to save
/// the results) or the Escape key (to cancel the editing).
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// editablelabel[.editing]
/// ╰── stack
///     ├── label
///     ╰── text
/// ```
/// 
/// GtkEditableLabel has a main node with the name editablelabel.
/// When the entry is in editing mode, it gets the .editing style
/// class.
/// 
/// For all the subnodes added to the text node in various situations,
/// see `GtkText`.
public protocol EditableLabelProtocol: WidgetProtocol, EditableProtocol {
        /// Untyped pointer to the underlying `GtkEditableLabel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEditableLabel` instance.
    var editable_label_ptr: UnsafeMutablePointer<GtkEditableLabel>! { get }

}

/// The `EditableLabelRef` type acts as a lightweight Swift reference to an underlying `GtkEditableLabel` instance.
/// It exposes methods that can operate on this data type through `EditableLabelProtocol` conformance.
/// Use `EditableLabelRef` only as an `unowned` reference to an existing `GtkEditableLabel` instance.
///
/// A GtkEditableLabel is a `GtkLabel` that allows users to
/// edit the text by switching the widget to an “edit mode”.
/// 
/// GtkEditableLabel does not have API of its own, but it
/// implements the `GtkEditable` interface.
/// 
/// The default bindings for activating the edit mode is
/// to click or press the Enter key. The default bindings
/// for leaving the edit mode are the Enter key (to save
/// the results) or the Escape key (to cancel the editing).
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// editablelabel[.editing]
/// ╰── stack
///     ├── label
///     ╰── text
/// ```
/// 
/// GtkEditableLabel has a main node with the name editablelabel.
/// When the entry is in editing mode, it gets the .editing style
/// class.
/// 
/// For all the subnodes added to the text node in various situations,
/// see `GtkText`.
public struct EditableLabelRef: EditableLabelProtocol {
        /// Untyped pointer to the underlying `GtkEditableLabel` instance.
    /// For type-safe access, use the generated, typed pointer `editable_label_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EditableLabelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEditableLabel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEditableLabel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEditableLabel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEditableLabel>?) {
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

    /// Reference intialiser for a related type that implements `EditableLabelProtocol`
    @inlinable init<T: EditableLabelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkEditableLabel` widget.
    @inlinable init( str: UnsafePointer<CChar>!) {
        let rv = gtk_editable_label_new(str)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `EditableLabel` type acts as a reference-counted owner of an underlying `GtkEditableLabel` instance.
/// It provides the methods that can operate on this data type through `EditableLabelProtocol` conformance.
/// Use `EditableLabel` as a strong reference or owner of a `GtkEditableLabel` instance.
///
/// A GtkEditableLabel is a `GtkLabel` that allows users to
/// edit the text by switching the widget to an “edit mode”.
/// 
/// GtkEditableLabel does not have API of its own, but it
/// implements the `GtkEditable` interface.
/// 
/// The default bindings for activating the edit mode is
/// to click or press the Enter key. The default bindings
/// for leaving the edit mode are the Enter key (to save
/// the results) or the Escape key (to cancel the editing).
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// editablelabel[.editing]
/// ╰── stack
///     ├── label
///     ╰── text
/// ```
/// 
/// GtkEditableLabel has a main node with the name editablelabel.
/// When the entry is in editing mode, it gets the .editing style
/// class.
/// 
/// For all the subnodes added to the text node in various situations,
/// see `GtkText`.
open class EditableLabel: Widget, EditableLabelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EditableLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEditableLabel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EditableLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEditableLabel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EditableLabel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EditableLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EditableLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEditableLabel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EditableLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEditableLabel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEditableLabel`.
    /// i.e., ownership is transferred to the `EditableLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEditableLabel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EditableLabelProtocol`
    /// Will retain `GtkEditableLabel`.
    /// - Parameter other: an instance of a related type that implements `EditableLabelProtocol`
    @inlinable public init<T: EditableLabelProtocol>(editableLabel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkEditableLabel` widget.
    @inlinable public init( str: UnsafePointer<CChar>!) {
        let rv = gtk_editable_label_new(str)
        super.init(gpointer: gpointer(rv))
    }


}

public enum EditableLabelPropertyName: String, PropertyNameProtocol {
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
    /// This property is `true` while the widget is in edit mode.
    case editing = "editing"
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

public extension EditableLabelProtocol {
    /// Bind a `EditableLabelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EditableLabelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a EditableLabel property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EditableLabelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EditableLabel property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EditableLabelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum EditableLabelSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// This property is `true` while the widget is in edit mode.
    case notifyEditing = "notify::editing"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
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
}

public extension EditableLabelProtocol {
    /// Connect a `EditableLabelSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: EditableLabelSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: EditableLabel Class: EditableLabelProtocol extension (methods and fields)
public extension EditableLabelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEditableLabel` instance.
    @inlinable var editable_label_ptr: UnsafeMutablePointer<GtkEditableLabel>! { return ptr?.assumingMemoryBound(to: GtkEditableLabel.self) }

    /// Returns whether the label is currently in “editing mode”.
    @inlinable func getEditing() -> Bool {
        let rv = ((gtk_editable_label_get_editing(editable_label_ptr)) != 0)
        return rv
    }

    /// Switches the label into “editing mode”.
    @inlinable func startEditing() {
        gtk_editable_label_start_editing(editable_label_ptr)
    
    }

    /// Switches the label out of “editing mode”. If `commit` is `true`,
    /// the resulting text is kept as the `GtkEditable:text` property
    /// value, otherwise the resulting text is discarded and the label
    /// will keep its previous `GtkEditable:text` property value.
    @inlinable func stopEditing(commit: Bool) {
        gtk_editable_label_stop_editing(editable_label_ptr, gboolean((commit) ? 1 : 0))
    
    }
    /// This property is `true` while the widget is in edit mode.
    @inlinable var editing: Bool {
        /// Returns whether the label is currently in “editing mode”.
        get {
            let rv = ((gtk_editable_label_get_editing(editable_label_ptr)) != 0)
            return rv
        }
    }


}



