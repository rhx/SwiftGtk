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

/// `GtkDirectoryList` is a list model that wraps `g_file_enumerate_children_async()`.
/// 
/// It presents a `GListModel` and fills it asynchronously with the `GFileInfo`s
/// returned from that function.
/// 
/// Enumeration will start automatically when a the
/// [property`Gtk.DirectoryList:file`] property is set.
/// 
/// While the `GtkDirectoryList` is being filled, the
/// [property`Gtk.DirectoryList:loading`] property will be set to `true`. You can
/// listen to that property if you want to show information like a `GtkSpinner`
/// or a "Loading..." text.
/// 
/// If loading fails at any point, the [property`Gtk.DirectoryList:error`]
/// property will be set to give more indication about the failure.
/// 
/// The `GFileInfo`s returned from a `GtkDirectoryList` have the "standard`file`"
/// attribute set to the `GFile` they refer to. This way you can get at the file
/// that is referred to in the same way you would via `g_file_enumerator_get_child()`.
/// This means you do not need access to the `GtkDirectoryList`, but can access
/// the `GFile` directly from the `GFileInfo` when operating with a `GtkListView`
/// or similar.
///
/// The `DirectoryListProtocol` protocol exposes the methods and properties of an underlying `GtkDirectoryList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DirectoryList`.
/// Alternatively, use `DirectoryListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DirectoryListProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol {
        /// Untyped pointer to the underlying `GtkDirectoryList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDirectoryList` instance.
    var directory_list_ptr: UnsafeMutablePointer<GtkDirectoryList>! { get }

    /// Required Initialiser for types conforming to `DirectoryListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDirectoryList` is a list model that wraps `g_file_enumerate_children_async()`.
/// 
/// It presents a `GListModel` and fills it asynchronously with the `GFileInfo`s
/// returned from that function.
/// 
/// Enumeration will start automatically when a the
/// [property`Gtk.DirectoryList:file`] property is set.
/// 
/// While the `GtkDirectoryList` is being filled, the
/// [property`Gtk.DirectoryList:loading`] property will be set to `true`. You can
/// listen to that property if you want to show information like a `GtkSpinner`
/// or a "Loading..." text.
/// 
/// If loading fails at any point, the [property`Gtk.DirectoryList:error`]
/// property will be set to give more indication about the failure.
/// 
/// The `GFileInfo`s returned from a `GtkDirectoryList` have the "standard`file`"
/// attribute set to the `GFile` they refer to. This way you can get at the file
/// that is referred to in the same way you would via `g_file_enumerator_get_child()`.
/// This means you do not need access to the `GtkDirectoryList`, but can access
/// the `GFile` directly from the `GFileInfo` when operating with a `GtkListView`
/// or similar.
///
/// The `DirectoryListRef` type acts as a lightweight Swift reference to an underlying `GtkDirectoryList` instance.
/// It exposes methods that can operate on this data type through `DirectoryListProtocol` conformance.
/// Use `DirectoryListRef` only as an `unowned` reference to an existing `GtkDirectoryList` instance.
///
public struct DirectoryListRef: DirectoryListProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DirectoryListProtocol>(_ other: T) -> DirectoryListRef { DirectoryListRef(other) }

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

        /// Creates a new `GtkDirectoryList`.
    /// 
    /// The `GtkDirectoryList` is querying the given `file`
    /// with the given `attributes`.
    @inlinable init<FileT: GIO.FileProtocol>( attributes: UnsafePointer<CChar>? = nil, file: FileT?) {
        let rv = gtk_directory_list_new(attributes, file?.file_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkDirectoryList` is a list model that wraps `g_file_enumerate_children_async()`.
/// 
/// It presents a `GListModel` and fills it asynchronously with the `GFileInfo`s
/// returned from that function.
/// 
/// Enumeration will start automatically when a the
/// [property`Gtk.DirectoryList:file`] property is set.
/// 
/// While the `GtkDirectoryList` is being filled, the
/// [property`Gtk.DirectoryList:loading`] property will be set to `true`. You can
/// listen to that property if you want to show information like a `GtkSpinner`
/// or a "Loading..." text.
/// 
/// If loading fails at any point, the [property`Gtk.DirectoryList:error`]
/// property will be set to give more indication about the failure.
/// 
/// The `GFileInfo`s returned from a `GtkDirectoryList` have the "standard`file`"
/// attribute set to the `GFile` they refer to. This way you can get at the file
/// that is referred to in the same way you would via `g_file_enumerator_get_child()`.
/// This means you do not need access to the `GtkDirectoryList`, but can access
/// the `GFile` directly from the `GFileInfo` when operating with a `GtkListView`
/// or similar.
///
/// The `DirectoryList` type acts as a reference-counted owner of an underlying `GtkDirectoryList` instance.
/// It provides the methods that can operate on this data type through `DirectoryListProtocol` conformance.
/// Use `DirectoryList` as a strong reference or owner of a `GtkDirectoryList` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

    /// Creates a new `GtkDirectoryList`.
    /// 
    /// The `GtkDirectoryList` is querying the given `file`
    /// with the given `attributes`.
    @inlinable public init<FileT: GIO.FileProtocol>( attributes: UnsafePointer<CChar>? = nil, file: FileT?) {
        let rv = gtk_directory_list_new(attributes, file?.file_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum DirectoryListPropertyName: String, PropertyNameProtocol {
    /// The attributes to query.
    case attributes = "attributes"
    /// Error encountered while loading files.
    case error = "error"
    /// File to query.
    case file = "file"
    /// Priority used when loading.
    case ioPriority = "io-priority"
    /// `true` if files are being loaded.
    case loading = "loading"
    /// `true` if the directory is monitored for changed.
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
    /// The attributes to query.
    case notifyAttributes = "notify::attributes"
    /// Error encountered while loading files.
    case notifyError = "notify::error"
    /// File to query.
    case notifyFile = "notify::file"
    /// Priority used when loading.
    case notifyIoPriority = "notify::io-priority"
    /// `true` if files are being loaded.
    case notifyLoading = "notify::loading"
    /// `true` if the directory is monitored for changed.
    case notifyMonitored = "notify::monitored"
}

// MARK: DirectoryList has no signals
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
    /// of `GFileInfo`s will still be created.
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
    /// for changes.
    /// 
    /// If monitoring is enabled, the `items-changed` signal will
    /// be emitted when the directory contents change.
    /// 
    /// 
    /// When monitoring is turned on after the initial creation
    /// of the directory list, the directory is reloaded to avoid
    /// missing files that appeared between the initial loading
    /// and when monitoring was turned on.
    @inlinable func set(monitored: Bool) {
        gtk_directory_list_set_monitored(directory_list_ptr, gboolean((monitored) ? 1 : 0))
    
    }
    /// The attributes to query.
    @inlinable var attributes: String! {
        /// Gets the attributes queried on the children.
        get {
            let rv = gtk_directory_list_get_attributes(directory_list_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the `attributes` to be enumerated and starts the enumeration.
        /// 
        /// If `attributes` is `nil`, no attributes will be queried, but a list
        /// of `GFileInfo`s will still be created.
        nonmutating set {
            gtk_directory_list_set_attributes(directory_list_ptr, newValue)
        }
    }

    /// Error encountered while loading files.
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

    /// File to query.
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

    /// `true` if the directory is monitored for changed.
    @inlinable var monitored: Bool {
        /// Returns whether the directory list is monitoring
        /// the directory for changes.
        get {
            let rv = ((gtk_directory_list_get_monitored(directory_list_ptr)) != 0)
            return rv
        }
        /// Sets whether the directory list will monitor the directory
        /// for changes.
        /// 
        /// If monitoring is enabled, the `items-changed` signal will
        /// be emitted when the directory contents change.
        /// 
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

/// `GtkDragIcon` is a `GtkRoot` implementation for drag icons.
/// 
/// A drag icon moves with the pointer during a Drag-and-Drop operation
/// and is destroyed when the drag ends.
/// 
/// To set up a drag icon and associate it with an ongoing drag operation,
/// use [func`Gtk.DragIcon.get_for_drag`] to get the icon for a drag. You can
/// then use it like any other widget and use [method`Gtk.DragIcon.set_child`]
/// to set whatever widget should be used for the drag icon.
/// 
/// Keep in mind that drag icons do not allow user input.
///
/// The `DragIconProtocol` protocol exposes the methods and properties of an underlying `GtkDragIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragIcon`.
/// Alternatively, use `DragIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DragIconProtocol: WidgetProtocol, NativeProtocol, RootProtocol {
        /// Untyped pointer to the underlying `GtkDragIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDragIcon` instance.
    var drag_icon_ptr: UnsafeMutablePointer<GtkDragIcon>! { get }

    /// Required Initialiser for types conforming to `DragIconProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDragIcon` is a `GtkRoot` implementation for drag icons.
/// 
/// A drag icon moves with the pointer during a Drag-and-Drop operation
/// and is destroyed when the drag ends.
/// 
/// To set up a drag icon and associate it with an ongoing drag operation,
/// use [func`Gtk.DragIcon.get_for_drag`] to get the icon for a drag. You can
/// then use it like any other widget and use [method`Gtk.DragIcon.set_child`]
/// to set whatever widget should be used for the drag icon.
/// 
/// Keep in mind that drag icons do not allow user input.
///
/// The `DragIconRef` type acts as a lightweight Swift reference to an underlying `GtkDragIcon` instance.
/// It exposes methods that can operate on this data type through `DragIconProtocol` conformance.
/// Use `DragIconRef` only as an `unowned` reference to an existing `GtkDragIcon` instance.
///
public struct DragIconRef: DragIconProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DragIconProtocol>(_ other: T) -> DragIconRef { DragIconRef(other) }

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
    /// This method is used to set the default drag icon on drag-and-drop
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
    @inlinable static func getFor<DragT: Gdk.DragProtocol>(drag: DragT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drag_icon_get_for_drag(drag.drag_ptr))) else { return nil }
        return rv
    }
}

/// `GtkDragIcon` is a `GtkRoot` implementation for drag icons.
/// 
/// A drag icon moves with the pointer during a Drag-and-Drop operation
/// and is destroyed when the drag ends.
/// 
/// To set up a drag icon and associate it with an ongoing drag operation,
/// use [func`Gtk.DragIcon.get_for_drag`] to get the icon for a drag. You can
/// then use it like any other widget and use [method`Gtk.DragIcon.set_child`]
/// to set whatever widget should be used for the drag icon.
/// 
/// Keep in mind that drag icons do not allow user input.
///
/// The `DragIcon` type acts as a reference-counted owner of an underlying `GtkDragIcon` instance.
/// It provides the methods that can operate on this data type through `DragIconProtocol` conformance.
/// Use `DragIcon` as a strong reference or owner of a `GtkDragIcon` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// This method is used to set the default drag icon on drag-and-drop
    /// operations started by `GtkDragSource`, so you don't need to set
    /// a drag icon using this function there.
    @inlinable public static func createWidgetFor<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_drag_icon_create_widget_for_value(value.value_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Gets the `GtkDragIcon` in use with `drag`.
    /// 
    /// If no drag icon exists yet, a new one will be created
    /// and shown.
    @inlinable public static func getFor<DragT: Gdk.DragProtocol>(drag: DragT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_drag_icon_get_for_drag(drag.drag_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum DragIconPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
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
    /// The widget to display as drag icon.
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

// MARK: DragIcon has no signals
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

/// `GtkDragSource` is an event controller to initiate Drag-And-Drop operations.
/// 
/// `GtkDragSource` can be set up with the necessary
/// ingredients for a DND operation ahead of time. This includes
/// the source for the data that is being transferred, in the form
/// of a [class`Gdk.ContentProvider`], the desired action, and the icon to
/// use during the drag operation. After setting it up, the drag
/// source must be added to a widget as an event controller, using
/// [method`Gtk.Widget.add_controller`].
/// 
/// ```c
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   GtkDragSource *drag_source = gtk_drag_source_new ();
/// 
///   g_signal_connect (drag_source, "prepare", G_CALLBACK (on_drag_prepare), self);
///   g_signal_connect (drag_source, "drag-begin", G_CALLBACK (on_drag_begin), self);
/// 
///   gtk_widget_add_controller (GTK_WIDGET (self), GTK_EVENT_CONTROLLER (drag_source));
/// }
/// ```
/// 
/// Setting up the content provider and icon ahead of time only makes
/// sense when the data does not change. More commonly, you will want
/// to set them up just in time. To do so, `GtkDragSource` has
/// [signal`Gtk.DragSource::prepare`] and [signal`Gtk.DragSource::drag-begin`]
/// signals.
/// 
/// The `prepare` signal is emitted before a drag is started, and
/// can be used to set the content provider and actions that the
/// drag should be started with.
/// 
/// ```c
/// static GdkContentProvider *
/// on_drag_prepare (GtkDragSource *source,
///                  double         x,
///                  double         y,
///                  MyWidget      *self)
/// {
///   // This widget supports two types of content: GFile objects
///   // and GdkPixbuf objects; GTK will handle the serialization
///   // of these types automatically
///   GFile *file = my_widget_get_file (self);
///   GdkPixbuf *pixbuf = my_widget_get_pixbuf (self);
/// 
///   return gdk_content_provider_new_union ((GdkContentProvider *[2]) {
///       gdk_content_provider_new_typed (G_TYPE_FILE, file),
///       gdk_content_provider_new_typed (GDK_TYPE_PIXBUF, pixbuf),
///     }, 2);
/// }
/// ```
/// 
/// The `drag-begin` signal is emitted after the `GdkDrag` object has
/// been created, and can be used to set up the drag icon.
/// 
/// ```c
/// static void
/// on_drag_begin (GtkDragSource *source,
///                GtkDrag       *drag,
///                MyWidget      *self)
/// {
///   // Set the widget as the drag icon
///   GdkPaintable *paintable = gtk_widget_paintable_new (GTK_WIDGET (self));
///   gtk_drag_source_set_icon (source, paintable, 0, 0);
///   g_object_unref (paintable);
/// }
/// ```
/// 
/// During the DND operation, `GtkDragSource` emits signals that
/// can be used to obtain updates about the status of the operation,
/// but it is not normally necessary to connect to any signals,
/// except for one case: when the supported actions include
/// `GDK_ACTION_MOVE`, you need to listen for the
/// [signal`Gtk.DragSource::drag-end`] signal and delete the
/// data after it has been transferred.
///
/// The `DragSourceProtocol` protocol exposes the methods and properties of an underlying `GtkDragSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragSource`.
/// Alternatively, use `DragSourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DragSourceProtocol: GestureSingleProtocol {
        /// Untyped pointer to the underlying `GtkDragSource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDragSource` instance.
    var drag_source_ptr: UnsafeMutablePointer<GtkDragSource>! { get }

    /// Required Initialiser for types conforming to `DragSourceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDragSource` is an event controller to initiate Drag-And-Drop operations.
/// 
/// `GtkDragSource` can be set up with the necessary
/// ingredients for a DND operation ahead of time. This includes
/// the source for the data that is being transferred, in the form
/// of a [class`Gdk.ContentProvider`], the desired action, and the icon to
/// use during the drag operation. After setting it up, the drag
/// source must be added to a widget as an event controller, using
/// [method`Gtk.Widget.add_controller`].
/// 
/// ```c
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   GtkDragSource *drag_source = gtk_drag_source_new ();
/// 
///   g_signal_connect (drag_source, "prepare", G_CALLBACK (on_drag_prepare), self);
///   g_signal_connect (drag_source, "drag-begin", G_CALLBACK (on_drag_begin), self);
/// 
///   gtk_widget_add_controller (GTK_WIDGET (self), GTK_EVENT_CONTROLLER (drag_source));
/// }
/// ```
/// 
/// Setting up the content provider and icon ahead of time only makes
/// sense when the data does not change. More commonly, you will want
/// to set them up just in time. To do so, `GtkDragSource` has
/// [signal`Gtk.DragSource::prepare`] and [signal`Gtk.DragSource::drag-begin`]
/// signals.
/// 
/// The `prepare` signal is emitted before a drag is started, and
/// can be used to set the content provider and actions that the
/// drag should be started with.
/// 
/// ```c
/// static GdkContentProvider *
/// on_drag_prepare (GtkDragSource *source,
///                  double         x,
///                  double         y,
///                  MyWidget      *self)
/// {
///   // This widget supports two types of content: GFile objects
///   // and GdkPixbuf objects; GTK will handle the serialization
///   // of these types automatically
///   GFile *file = my_widget_get_file (self);
///   GdkPixbuf *pixbuf = my_widget_get_pixbuf (self);
/// 
///   return gdk_content_provider_new_union ((GdkContentProvider *[2]) {
///       gdk_content_provider_new_typed (G_TYPE_FILE, file),
///       gdk_content_provider_new_typed (GDK_TYPE_PIXBUF, pixbuf),
///     }, 2);
/// }
/// ```
/// 
/// The `drag-begin` signal is emitted after the `GdkDrag` object has
/// been created, and can be used to set up the drag icon.
/// 
/// ```c
/// static void
/// on_drag_begin (GtkDragSource *source,
///                GtkDrag       *drag,
///                MyWidget      *self)
/// {
///   // Set the widget as the drag icon
///   GdkPaintable *paintable = gtk_widget_paintable_new (GTK_WIDGET (self));
///   gtk_drag_source_set_icon (source, paintable, 0, 0);
///   g_object_unref (paintable);
/// }
/// ```
/// 
/// During the DND operation, `GtkDragSource` emits signals that
/// can be used to obtain updates about the status of the operation,
/// but it is not normally necessary to connect to any signals,
/// except for one case: when the supported actions include
/// `GDK_ACTION_MOVE`, you need to listen for the
/// [signal`Gtk.DragSource::drag-end`] signal and delete the
/// data after it has been transferred.
///
/// The `DragSourceRef` type acts as a lightweight Swift reference to an underlying `GtkDragSource` instance.
/// It exposes methods that can operate on this data type through `DragSourceProtocol` conformance.
/// Use `DragSourceRef` only as an `unowned` reference to an existing `GtkDragSource` instance.
///
public struct DragSourceRef: DragSourceProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DragSourceProtocol>(_ other: T) -> DragSourceRef { DragSourceRef(other) }

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

/// `GtkDragSource` is an event controller to initiate Drag-And-Drop operations.
/// 
/// `GtkDragSource` can be set up with the necessary
/// ingredients for a DND operation ahead of time. This includes
/// the source for the data that is being transferred, in the form
/// of a [class`Gdk.ContentProvider`], the desired action, and the icon to
/// use during the drag operation. After setting it up, the drag
/// source must be added to a widget as an event controller, using
/// [method`Gtk.Widget.add_controller`].
/// 
/// ```c
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   GtkDragSource *drag_source = gtk_drag_source_new ();
/// 
///   g_signal_connect (drag_source, "prepare", G_CALLBACK (on_drag_prepare), self);
///   g_signal_connect (drag_source, "drag-begin", G_CALLBACK (on_drag_begin), self);
/// 
///   gtk_widget_add_controller (GTK_WIDGET (self), GTK_EVENT_CONTROLLER (drag_source));
/// }
/// ```
/// 
/// Setting up the content provider and icon ahead of time only makes
/// sense when the data does not change. More commonly, you will want
/// to set them up just in time. To do so, `GtkDragSource` has
/// [signal`Gtk.DragSource::prepare`] and [signal`Gtk.DragSource::drag-begin`]
/// signals.
/// 
/// The `prepare` signal is emitted before a drag is started, and
/// can be used to set the content provider and actions that the
/// drag should be started with.
/// 
/// ```c
/// static GdkContentProvider *
/// on_drag_prepare (GtkDragSource *source,
///                  double         x,
///                  double         y,
///                  MyWidget      *self)
/// {
///   // This widget supports two types of content: GFile objects
///   // and GdkPixbuf objects; GTK will handle the serialization
///   // of these types automatically
///   GFile *file = my_widget_get_file (self);
///   GdkPixbuf *pixbuf = my_widget_get_pixbuf (self);
/// 
///   return gdk_content_provider_new_union ((GdkContentProvider *[2]) {
///       gdk_content_provider_new_typed (G_TYPE_FILE, file),
///       gdk_content_provider_new_typed (GDK_TYPE_PIXBUF, pixbuf),
///     }, 2);
/// }
/// ```
/// 
/// The `drag-begin` signal is emitted after the `GdkDrag` object has
/// been created, and can be used to set up the drag icon.
/// 
/// ```c
/// static void
/// on_drag_begin (GtkDragSource *source,
///                GtkDrag       *drag,
///                MyWidget      *self)
/// {
///   // Set the widget as the drag icon
///   GdkPaintable *paintable = gtk_widget_paintable_new (GTK_WIDGET (self));
///   gtk_drag_source_set_icon (source, paintable, 0, 0);
///   g_object_unref (paintable);
/// }
/// ```
/// 
/// During the DND operation, `GtkDragSource` emits signals that
/// can be used to obtain updates about the status of the operation,
/// but it is not normally necessary to connect to any signals,
/// except for one case: when the supported actions include
/// `GDK_ACTION_MOVE`, you need to listen for the
/// [signal`Gtk.DragSource::drag-end`] signal and delete the
/// data after it has been transferred.
///
/// The `DragSource` type acts as a reference-counted owner of an underlying `GtkDragSource` instance.
/// It provides the methods that can operate on this data type through `DragSourceProtocol` conformance.
/// Use `DragSource` as a strong reference or owner of a `GtkDragSource` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum DragSourcePropertyName: String, PropertyNameProtocol {
    /// The actions that are supported by drag operations from the source.
    /// 
    /// Note that you must handle the [signal`Gtk.DragSource::drag-end`] signal
    /// if the actions include `GDK_ACTION_MOVE`.
    case actions = "actions"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// The data that is offered by drag operations from this source.
    case content = "content"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
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
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted on the drag source when a drag is started.
    /// 
    /// It can be used to e.g. set a custom drag icon with
    /// [method`Gtk.DragSource.set_icon`].
    case dragBegin = "drag-begin"
    /// Emitted on the drag source when a drag has failed.
    /// 
    /// The signal handler may handle a failed drag operation based on
    /// the type of error. It should return `true` if the failure has been handled
    /// and the default "drag operation failed" animation should not be shown.
    case dragCancel = "drag-cancel"
    /// Emitted on the drag source when a drag is finished.
    /// 
    /// A typical reason to connect to this signal is to undo
    /// things done in [signal`Gtk.DragSource::prepare`] or
    /// [signal`Gtk.DragSource::drag-begin`] handlers.
    case dragEnd = "drag-end"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// Emitted when a drag is about to be initiated.
    /// 
    /// It returns the `GdkContentProvider` to use for the drag that is about
    /// to start. The default handler for this signal returns the value of
    /// the [property`Gtk.DragSource:content`] property, so if you set up that
    /// property ahead of time, you don't need to connect to this signal.
    case prepare = "prepare"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The actions that are supported by drag operations from the source.
    /// 
    /// Note that you must handle the [signal`Gtk.DragSource::drag-end`] signal
    /// if the actions include `GDK_ACTION_MOVE`.
    case notifyActions = "notify::actions"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// The data that is offered by drag operations from this source.
    case notifyContent = "notify::content"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
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

// MARK: DragSource signals
public extension DragSourceProtocol {
    /// Connect a Swift signal handler to the given, typed `DragSourceSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DragSourceSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DragSourceSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DragSourceSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when a drag is about to be initiated.
    /// 
    /// It returns the `GdkContentProvider` to use for the drag that is about
    /// to start. The default handler for this signal returns the value of
    /// the [property`Gtk.DragSource:content`] property, so if you set up that
    /// property ahead of time, you don't need to connect to this signal.
    /// - Note: This represents the underlying `prepare` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the X coordinate of the drag starting point
    /// - Parameter y: the Y coordinate fo the drag starting point
    /// - Parameter handler: a `GdkContentProvider`
    /// - Warning: a `onPrepare` wrapper for this signal could not be generated because it contains unimplemented features: { (8)  nullable argument or return type is not allowed, (9)  Record return type is not yet supported }
    /// - Note: Instead, you can connect `prepareSignal` using the `connect(signal:)` methods
    static var prepareSignal: DragSourceSignalName { .prepare }
    /// Emitted on the drag source when a drag is started.
    /// 
    /// It can be used to e.g. set a custom drag icon with
    /// [method`Gtk.DragSource.set_icon`].
    /// - Note: This represents the underlying `drag-begin` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drag: the `GdkDrag` object
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dragBegin` signal is emitted
    @discardableResult @inlinable func onDragBegin(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragSourceRef, _ drag: Gdk.DragRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragSourceRef, Gdk.DragRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragSourceRef(raw: unownedSelf), Gdk.DragRef(raw: arg1))
            return output
        }
        return connect(
            signal: .dragBegin,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-begin` signal for using the `connect(signal:)` methods
    static var dragBeginSignal: DragSourceSignalName { .dragBegin }
    
    /// Emitted on the drag source when a drag has failed.
    /// 
    /// The signal handler may handle a failed drag operation based on
    /// the type of error. It should return `true` if the failure has been handled
    /// and the default "drag operation failed" animation should not be shown.
    /// - Note: This represents the underlying `drag-cancel` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drag: the `GdkDrag` object
    /// - Parameter reason: information on why the drag failed
    /// - Parameter handler: `true` if the failed drag operation has been already handled
    /// Run the given callback whenever the `dragCancel` signal is emitted
    @discardableResult @inlinable func onDragCancel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragSourceRef, _ drag: Gdk.DragRef, _ reason: Gdk.DragCancelReason) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DragSourceRef, Gdk.DragRef, Gdk.DragCancelReason, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DragSourceRef(raw: unownedSelf), Gdk.DragRef(raw: arg1), Gdk.DragCancelReason(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .dragCancel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-cancel` signal for using the `connect(signal:)` methods
    static var dragCancelSignal: DragSourceSignalName { .dragCancel }
    
    /// Emitted on the drag source when a drag is finished.
    /// 
    /// A typical reason to connect to this signal is to undo
    /// things done in [signal`Gtk.DragSource::prepare`] or
    /// [signal`Gtk.DragSource::drag-begin`] handlers.
    /// - Note: This represents the underlying `drag-end` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drag: the `GdkDrag` object
    /// - Parameter deleteData: `true` if the drag was performing `GDK_ACTION_MOVE`,    and the data should be deleted
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dragEnd` signal is emitted
    @discardableResult @inlinable func onDragEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragSourceRef, _ drag: Gdk.DragRef, _ deleteData: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DragSourceRef, Gdk.DragRef, Bool, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gboolean, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragSourceRef(raw: unownedSelf), Gdk.DragRef(raw: arg1), ((arg2) != 0))
            return output
        }
        return connect(
            signal: .dragEnd,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-end` signal for using the `connect(signal:)` methods
    static var dragEndSignal: DragSourceSignalName { .dragEnd }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::actions` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyActions` signal is emitted
    @discardableResult @inlinable func onNotifyActions(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragSourceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragSourceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragSourceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyActions,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::actions` signal for using the `connect(signal:)` methods
    static var notifyActionsSignal: DragSourceSignalName { .notifyActions }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::content` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyContent` signal is emitted
    @discardableResult @inlinable func onNotifyContent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragSourceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragSourceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragSourceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyContent,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::content` signal for using the `connect(signal:)` methods
    static var notifyContentSignal: DragSourceSignalName { .notifyContent }
    
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
    @inlinable func getContent() -> Gdk.ContentProviderRef! {
        let rv = Gdk.ContentProviderRef(gtk_drag_source_get_content(drag_source_ptr))
        return rv
    }

    /// Returns the underlying `GdkDrag` object for an ongoing drag.
    @inlinable func getDrag() -> Gdk.DragRef! {
        let rv = Gdk.DragRef(gtk_drag_source_get_drag(drag_source_ptr))
        return rv
    }

    /// Sets the actions on the `GtkDragSource`.
    /// 
    /// During a DND operation, the actions are offered to potential
    /// drop targets. If `actions` include `GDK_ACTION_MOVE`, you need
    /// to listen to the [signal`Gtk.DragSource::drag-end`] signal and
    /// handle `delete_data` being `true`.
    /// 
    /// This function can be called before a drag is started,
    /// or in a handler for the [signal`Gtk.DragSource::prepare`] signal.
    @inlinable func set(actions: Gdk.DragAction) {
        gtk_drag_source_set_actions(drag_source_ptr, actions.value)
    
    }

    /// Sets a content provider on a `GtkDragSource`.
    /// 
    /// When the data is requested in the cause of a DND operation,
    /// it will be obtained from the content provider.
    /// 
    /// This function can be called before a drag is started,
    /// or in a handler for the [signal`Gtk.DragSource::prepare`] signal.
    /// 
    /// You may consider setting the content provider back to
    /// `nil` in a [signal`Gtk.DragSource::drag-end`] signal handler.
    @inlinable func set(content: Gdk.ContentProviderRef? = nil) {
        gtk_drag_source_set_content(drag_source_ptr, content?.content_provider_ptr)
    
    }
    /// Sets a content provider on a `GtkDragSource`.
    /// 
    /// When the data is requested in the cause of a DND operation,
    /// it will be obtained from the content provider.
    /// 
    /// This function can be called before a drag is started,
    /// or in a handler for the [signal`Gtk.DragSource::prepare`] signal.
    /// 
    /// You may consider setting the content provider back to
    /// `nil` in a [signal`Gtk.DragSource::drag-end`] signal handler.
    @inlinable func set<ContentProviderT: Gdk.ContentProviderProtocol>(content: ContentProviderT?) {
        gtk_drag_source_set_content(drag_source_ptr, content?.content_provider_ptr)
    
    }

    /// Sets a paintable to use as icon during DND operations.
    /// 
    /// The hotspot coordinates determine the point on the icon
    /// that gets aligned with the hotspot of the cursor.
    /// 
    /// If `paintable` is `nil`, a default icon is used.
    /// 
    /// This function can be called before a drag is started, or in
    /// a [signal`Gtk.DragSource::prepare`] or
    /// [signal`Gtk.DragSource::drag-begin`] signal handler.
    @inlinable func setIcon(paintable: Gdk.PaintableRef? = nil, hotX: Int, hotY: Int) {
        gtk_drag_source_set_icon(drag_source_ptr, paintable?.paintable_ptr, gint(hotX), gint(hotY))
    
    }
    /// Sets a paintable to use as icon during DND operations.
    /// 
    /// The hotspot coordinates determine the point on the icon
    /// that gets aligned with the hotspot of the cursor.
    /// 
    /// If `paintable` is `nil`, a default icon is used.
    /// 
    /// This function can be called before a drag is started, or in
    /// a [signal`Gtk.DragSource::prepare`] or
    /// [signal`Gtk.DragSource::drag-begin`] signal handler.
    @inlinable func setIcon<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?, hotX: Int, hotY: Int) {
        gtk_drag_source_set_icon(drag_source_ptr, paintable?.paintable_ptr, gint(hotX), gint(hotY))
    
    }
    /// The actions that are supported by drag operations from the source.
    /// 
    /// Note that you must handle the [signal`Gtk.DragSource::drag-end`] signal
    /// if the actions include `GDK_ACTION_MOVE`.
    @inlinable var actions: Gdk.DragAction {
        /// Gets the actions that are currently set on the `GtkDragSource`.
        get {
            let rv = Gdk.DragAction(gtk_drag_source_get_actions(drag_source_ptr))
            return rv
        }
        /// Sets the actions on the `GtkDragSource`.
        /// 
        /// During a DND operation, the actions are offered to potential
        /// drop targets. If `actions` include `GDK_ACTION_MOVE`, you need
        /// to listen to the [signal`Gtk.DragSource::drag-end`] signal and
        /// handle `delete_data` being `true`.
        /// 
        /// This function can be called before a drag is started,
        /// or in a handler for the [signal`Gtk.DragSource::prepare`] signal.
        nonmutating set {
            gtk_drag_source_set_actions(drag_source_ptr, newValue.value)
        }
    }

    /// The data that is offered by drag operations from this source.
    @inlinable var content: Gdk.ContentProviderRef! {
        /// Gets the current content provider of a `GtkDragSource`.
        get {
            let rv = Gdk.ContentProviderRef(gtk_drag_source_get_content(drag_source_ptr))
            return rv
        }
        /// Sets a content provider on a `GtkDragSource`.
        /// 
        /// When the data is requested in the cause of a DND operation,
        /// it will be obtained from the content provider.
        /// 
        /// This function can be called before a drag is started,
        /// or in a handler for the [signal`Gtk.DragSource::prepare`] signal.
        /// 
        /// You may consider setting the content provider back to
        /// `nil` in a [signal`Gtk.DragSource::drag-end`] signal handler.
        nonmutating set {
            gtk_drag_source_set_content(drag_source_ptr, UnsafeMutablePointer<GdkContentProvider>(newValue?.content_provider_ptr))
        }
    }

    /// Returns the underlying `GdkDrag` object for an ongoing drag.
    @inlinable var drag: Gdk.DragRef! {
        /// Returns the underlying `GdkDrag` object for an ongoing drag.
        get {
            let rv = Gdk.DragRef(gtk_drag_source_get_drag(drag_source_ptr))
            return rv
        }
    }


}



// MARK: - DrawingArea Class

/// `GtkDrawingArea` is a widget that allows drawing with cairo.
/// 
/// ![An example GtkDrawingArea](drawingarea.png)
/// 
/// It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - The [signal`Gtk.Widget::realize`] signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The [signal`Gtk.DrawingArea::resize`] signal to take any necessary
///   actions when the widget changes size.
/// 
/// - Call [method`Gtk.DrawingArea.set_draw_func`] to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// ```c
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
/// drawing area’s window using [method`Gtk.Widget.queue_draw`].
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
///
/// The `DrawingAreaProtocol` protocol exposes the methods and properties of an underlying `GtkDrawingArea` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingArea`.
/// Alternatively, use `DrawingAreaRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DrawingAreaProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkDrawingArea` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDrawingArea` instance.
    var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea>! { get }

    /// Required Initialiser for types conforming to `DrawingAreaProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDrawingArea` is a widget that allows drawing with cairo.
/// 
/// ![An example GtkDrawingArea](drawingarea.png)
/// 
/// It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - The [signal`Gtk.Widget::realize`] signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The [signal`Gtk.DrawingArea::resize`] signal to take any necessary
///   actions when the widget changes size.
/// 
/// - Call [method`Gtk.DrawingArea.set_draw_func`] to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// ```c
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
/// drawing area’s window using [method`Gtk.Widget.queue_draw`].
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
///
/// The `DrawingAreaRef` type acts as a lightweight Swift reference to an underlying `GtkDrawingArea` instance.
/// It exposes methods that can operate on this data type through `DrawingAreaProtocol` conformance.
/// Use `DrawingAreaRef` only as an `unowned` reference to an existing `GtkDrawingArea` instance.
///
public struct DrawingAreaRef: DrawingAreaProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DrawingAreaProtocol>(_ other: T) -> DrawingAreaRef { DrawingAreaRef(other) }

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

/// `GtkDrawingArea` is a widget that allows drawing with cairo.
/// 
/// ![An example GtkDrawingArea](drawingarea.png)
/// 
/// It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - The [signal`Gtk.Widget::realize`] signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The [signal`Gtk.DrawingArea::resize`] signal to take any necessary
///   actions when the widget changes size.
/// 
/// - Call [method`Gtk.DrawingArea.set_draw_func`] to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// ```c
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
/// drawing area’s window using [method`Gtk.Widget.queue_draw`].
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
///
/// The `DrawingArea` type acts as a reference-counted owner of an underlying `GtkDrawingArea` instance.
/// It provides the methods that can operate on this data type through `DrawingAreaProtocol` conformance.
/// Use `DrawingArea` as a strong reference or owner of a `GtkDrawingArea` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum DrawingAreaPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The content height.
    case contentHeight = "content-height"
    /// The content width.
    case contentWidth = "content-width"
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
    /// Emitted once when the widget is realized, and then each time the widget
    /// is changed while realized.
    /// 
    /// This is useful in order to keep state up to date with the widget size,
    /// like for instance a backing surface.
    case resize = "resize"
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
    /// The content height.
    case notifyContentHeight = "notify::content-height"
    /// The content width.
    case notifyContentWidth = "notify::content-width"
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

// MARK: DrawingArea signals
public extension DrawingAreaProtocol {
    /// Connect a Swift signal handler to the given, typed `DrawingAreaSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DrawingAreaSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DrawingAreaSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DrawingAreaSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted once when the widget is realized, and then each time the widget
    /// is changed while realized.
    /// 
    /// This is useful in order to keep state up to date with the widget size,
    /// like for instance a backing surface.
    /// - Note: This represents the underlying `resize` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter width: the width of the viewport
    /// - Parameter height: the height of the viewport
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `resize` signal is emitted
    @discardableResult @inlinable func onResize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DrawingAreaRef, _ width: Int, _ height: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DrawingAreaRef, Int, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DrawingAreaRef(raw: unownedSelf), Int(arg1), Int(arg2))
            return output
        }
        return connect(
            signal: .resize,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `resize` signal for using the `connect(signal:)` methods
    static var resizeSignal: DrawingAreaSignalName { .resize }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::content-height` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyContentHeight` signal is emitted
    @discardableResult @inlinable func onNotifyContentHeight(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DrawingAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DrawingAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DrawingAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyContentHeight,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::content-height` signal for using the `connect(signal:)` methods
    static var notifyContentHeightSignal: DrawingAreaSignalName { .notifyContentHeight }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::content-width` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyContentWidth` signal is emitted
    @discardableResult @inlinable func onNotifyContentWidth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DrawingAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DrawingAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DrawingAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyContentWidth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::content-width` signal for using the `connect(signal:)` methods
    static var notifyContentWidthSignal: DrawingAreaSignalName { .notifyContentWidth }
    
}

// MARK: DrawingArea Class: DrawingAreaProtocol extension (methods and fields)
public extension DrawingAreaProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDrawingArea` instance.
    @inlinable var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea>! { return ptr?.assumingMemoryBound(to: GtkDrawingArea.self) }

    /// Retrieves the content height of the `GtkDrawingArea`.
    @inlinable func getContentHeight() -> Int {
        let rv = Int(gtk_drawing_area_get_content_height(drawing_area_ptr))
        return rv
    }

    /// Retrieves the content width of the `GtkDrawingArea`.
    @inlinable func getContentWidth() -> Int {
        let rv = Int(gtk_drawing_area_get_content_width(drawing_area_ptr))
        return rv
    }

    /// Sets the desired height of the contents of the drawing area.
    /// 
    /// Note that because widgets may be allocated larger sizes than they
    /// requested, it is possible that the actual height passed to your draw
    /// function is larger than the height set here. You can use
    /// [method`Gtk.Widget.set_valign`] to avoid that.
    /// 
    /// If the height is set to 0 (the default), the drawing area may disappear.
    @inlinable func setContent(height: Int) {
        gtk_drawing_area_set_content_height(drawing_area_ptr, gint(height))
    
    }

    /// Sets the desired width of the contents of the drawing area.
    /// 
    /// Note that because widgets may be allocated larger sizes than they
    /// requested, it is possible that the actual width passed to your draw
    /// function is larger than the width set here. You can use
    /// [method`Gtk.Widget.set_halign`] to avoid that.
    /// 
    /// If the width is set to 0 (the default), the drawing area may disappear.
    @inlinable func setContent(width: Int) {
        gtk_drawing_area_set_content_width(drawing_area_ptr, gint(width))
    
    }

    /// Setting a draw function is the main thing you want to do when using
    /// a drawing area.
    /// 
    /// The draw function is called whenever GTK needs to draw the contents
    /// of the drawing area to the screen.
    /// 
    /// The draw function will be called during the drawing stage of GTK.
    /// In the drawing stage it is not allowed to change properties of any
    /// GTK widgets or call any functions that would cause any properties
    /// to be changed. You should restrict yourself exclusively to drawing
    /// your contents in the draw function.
    /// 
    /// If what you are drawing does change, call [method`Gtk.Widget.queue_draw`]
    /// on the drawing area. This will cause a redraw and will call `draw_func` again.
    @inlinable func set(drawFunc: GtkDrawingAreaDrawFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_drawing_area_set_draw_func(drawing_area_ptr, drawFunc, userData, destroy)
    
    }
    /// Retrieves the content height of the `GtkDrawingArea`.
    @inlinable var contentHeight: Int {
        /// Retrieves the content height of the `GtkDrawingArea`.
        get {
            let rv = Int(gtk_drawing_area_get_content_height(drawing_area_ptr))
            return rv
        }
        /// Sets the desired height of the contents of the drawing area.
        /// 
        /// Note that because widgets may be allocated larger sizes than they
        /// requested, it is possible that the actual height passed to your draw
        /// function is larger than the height set here. You can use
        /// [method`Gtk.Widget.set_valign`] to avoid that.
        /// 
        /// If the height is set to 0 (the default), the drawing area may disappear.
        nonmutating set {
            gtk_drawing_area_set_content_height(drawing_area_ptr, gint(newValue))
        }
    }

    /// Retrieves the content width of the `GtkDrawingArea`.
    @inlinable var contentWidth: Int {
        /// Retrieves the content width of the `GtkDrawingArea`.
        get {
            let rv = Int(gtk_drawing_area_get_content_width(drawing_area_ptr))
            return rv
        }
        /// Sets the desired width of the contents of the drawing area.
        /// 
        /// Note that because widgets may be allocated larger sizes than they
        /// requested, it is possible that the actual width passed to your draw
        /// function is larger than the width set here. You can use
        /// [method`Gtk.Widget.set_halign`] to avoid that.
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

/// `GtkDropControllerMotion` is an event controller tracking
/// the pointer during Drag-and-Drop operations.
/// 
/// It is modeled after [class`Gtk.EventControllerMotion`] so if you
/// have used that, this should feel really familiar.
/// 
/// This controller is not able to accept drops, use [class`Gtk.DropTarget`]
/// for that purpose.
///
/// The `DropControllerMotionProtocol` protocol exposes the methods and properties of an underlying `GtkDropControllerMotion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropControllerMotion`.
/// Alternatively, use `DropControllerMotionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DropControllerMotionProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkDropControllerMotion` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropControllerMotion` instance.
    var drop_controller_motion_ptr: UnsafeMutablePointer<GtkDropControllerMotion>! { get }

    /// Required Initialiser for types conforming to `DropControllerMotionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDropControllerMotion` is an event controller tracking
/// the pointer during Drag-and-Drop operations.
/// 
/// It is modeled after [class`Gtk.EventControllerMotion`] so if you
/// have used that, this should feel really familiar.
/// 
/// This controller is not able to accept drops, use [class`Gtk.DropTarget`]
/// for that purpose.
///
/// The `DropControllerMotionRef` type acts as a lightweight Swift reference to an underlying `GtkDropControllerMotion` instance.
/// It exposes methods that can operate on this data type through `DropControllerMotionProtocol` conformance.
/// Use `DropControllerMotionRef` only as an `unowned` reference to an existing `GtkDropControllerMotion` instance.
///
public struct DropControllerMotionRef: DropControllerMotionProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DropControllerMotionProtocol>(_ other: T) -> DropControllerMotionRef { DropControllerMotionRef(other) }

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

/// `GtkDropControllerMotion` is an event controller tracking
/// the pointer during Drag-and-Drop operations.
/// 
/// It is modeled after [class`Gtk.EventControllerMotion`] so if you
/// have used that, this should feel really familiar.
/// 
/// This controller is not able to accept drops, use [class`Gtk.DropTarget`]
/// for that purpose.
///
/// The `DropControllerMotion` type acts as a reference-counted owner of an underlying `GtkDropControllerMotion` instance.
/// It provides the methods that can operate on this data type through `DropControllerMotionProtocol` conformance.
/// Use `DropControllerMotion` as a strong reference or owner of a `GtkDropControllerMotion` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum DropControllerMotionPropertyName: String, PropertyNameProtocol {
    /// Whether the pointer of a Drag-and-Drop operation is in
    /// the controller's widget or a descendant.
    /// 
    /// See also [property`Gtk.DropControllerMotion:is-pointer`].
    /// 
    /// When handling crossing events, this property is updated
    /// before [signal`Gtk.DropControllerMotion::enter`], but after
    /// [signal`Gtk.DropControllerMotion::leave`] is emitted.
    case containsPointer = "contains-pointer"
    /// The ongoing drop operation over the controller's widget or
    /// its descendant.
    /// 
    /// If no drop operation is going on, this property returns `nil`.
    /// 
    /// The event controller should not modify the `drop`, but it might
    /// want to query its properties.
    /// 
    /// When handling crossing events, this property is updated
    /// before [signal`Gtk.DropControllerMotion::enter`], but after
    /// [signal`Gtk.DropControllerMotion::leave`] is emitted.
    case drop = "drop"
    /// Whether the pointer is in the controllers widget itself,
    /// as opposed to in a descendent widget.
    /// 
    /// See also [property`Gtk.DropControllerMotion:contains-pointer`].
    /// 
    /// When handling crossing events, this property is updated
    /// before [signal`Gtk.DropControllerMotion::enter`], but after
    /// [signal`Gtk.DropControllerMotion::leave`] is emitted.
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
    /// Whether the pointer of a Drag-and-Drop operation is in
    /// the controller's widget or a descendant.
    /// 
    /// See also [property`Gtk.DropControllerMotion:is-pointer`].
    /// 
    /// When handling crossing events, this property is updated
    /// before [signal`Gtk.DropControllerMotion::enter`], but after
    /// [signal`Gtk.DropControllerMotion::leave`] is emitted.
    case notifyContainsPointer = "notify::contains-pointer"
    /// The ongoing drop operation over the controller's widget or
    /// its descendant.
    /// 
    /// If no drop operation is going on, this property returns `nil`.
    /// 
    /// The event controller should not modify the `drop`, but it might
    /// want to query its properties.
    /// 
    /// When handling crossing events, this property is updated
    /// before [signal`Gtk.DropControllerMotion::enter`], but after
    /// [signal`Gtk.DropControllerMotion::leave`] is emitted.
    case notifyDrop = "notify::drop"
    /// Whether the pointer is in the controllers widget itself,
    /// as opposed to in a descendent widget.
    /// 
    /// See also [property`Gtk.DropControllerMotion:contains-pointer`].
    /// 
    /// When handling crossing events, this property is updated
    /// before [signal`Gtk.DropControllerMotion::enter`], but after
    /// [signal`Gtk.DropControllerMotion::leave`] is emitted.
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

// MARK: DropControllerMotion signals
public extension DropControllerMotionProtocol {
    /// Connect a Swift signal handler to the given, typed `DropControllerMotionSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DropControllerMotionSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DropControllerMotionSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DropControllerMotionSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Signals that the pointer has entered the widget.
    /// - Note: This represents the underlying `enter` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: coordinates of pointer location
    /// - Parameter y: coordinates of pointer location
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `enter` signal is emitted
    @discardableResult @inlinable func onEnter(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropControllerMotionRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DropControllerMotionRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropControllerMotionRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .enter,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `enter` signal for using the `connect(signal:)` methods
    static var enterSignal: DropControllerMotionSignalName { .enter }
    
    /// Signals that the pointer has left the widget.
    /// - Note: This represents the underlying `leave` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `leave` signal is emitted
    @discardableResult @inlinable func onLeave(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropControllerMotionRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DropControllerMotionRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropControllerMotionRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .leave,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `leave` signal for using the `connect(signal:)` methods
    static var leaveSignal: DropControllerMotionSignalName { .leave }
    
    /// Emitted when the pointer moves inside the widget.
    /// - Note: This represents the underlying `motion` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the x coordinate
    /// - Parameter y: the y coordinate
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `motion` signal is emitted
    @discardableResult @inlinable func onMotion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropControllerMotionRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DropControllerMotionRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropControllerMotionRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .motion,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `motion` signal for using the `connect(signal:)` methods
    static var motionSignal: DropControllerMotionSignalName { .motion }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::contains-pointer` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyContainsPointer` signal is emitted
    @discardableResult @inlinable func onNotifyContainsPointer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropControllerMotionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropControllerMotionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropControllerMotionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyContainsPointer,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::contains-pointer` signal for using the `connect(signal:)` methods
    static var notifyContainsPointerSignal: DropControllerMotionSignalName { .notifyContainsPointer }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::drop` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDrop` signal is emitted
    @discardableResult @inlinable func onNotifyDrop(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropControllerMotionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropControllerMotionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropControllerMotionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDrop,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::drop` signal for using the `connect(signal:)` methods
    static var notifyDropSignal: DropControllerMotionSignalName { .notifyDrop }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::is-pointer` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIsPointer` signal is emitted
    @discardableResult @inlinable func onNotifyIsPointer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropControllerMotionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropControllerMotionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropControllerMotionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIsPointer,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::is-pointer` signal for using the `connect(signal:)` methods
    static var notifyIsPointerSignal: DropControllerMotionSignalName { .notifyIsPointer }
    
}

// MARK: DropControllerMotion Class: DropControllerMotionProtocol extension (methods and fields)
public extension DropControllerMotionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropControllerMotion` instance.
    @inlinable var drop_controller_motion_ptr: UnsafeMutablePointer<GtkDropControllerMotion>! { return ptr?.assumingMemoryBound(to: GtkDropControllerMotion.self) }

    /// Returns if a Drag-and-Drop operation is within the widget
    /// `self` or one of its children.
    @inlinable func containsPointer() -> Bool {
        let rv = ((gtk_drop_controller_motion_contains_pointer(drop_controller_motion_ptr)) != 0)
        return rv
    }

    /// Returns the `GdkDrop` of a current Drag-and-Drop operation
    /// over the widget of `self`.
    @inlinable func getDrop() -> Gdk.DropRef! {
        let rv = Gdk.DropRef(gtk_drop_controller_motion_get_drop(drop_controller_motion_ptr))
        return rv
    }
    /// The ongoing drop operation over the controller's widget or
    /// its descendant.
    /// 
    /// If no drop operation is going on, this property returns `nil`.
    /// 
    /// The event controller should not modify the `drop`, but it might
    /// want to query its properties.
    /// 
    /// When handling crossing events, this property is updated
    /// before [signal`Gtk.DropControllerMotion::enter`], but after
    /// [signal`Gtk.DropControllerMotion::leave`] is emitted.
    @inlinable var drop: Gdk.DropRef! {
        /// Returns the `GdkDrop` of a current Drag-and-Drop operation
        /// over the widget of `self`.
        get {
            let rv = Gdk.DropRef(gtk_drop_controller_motion_get_drop(drop_controller_motion_ptr))
            return rv
        }
    }

    /// Returns if a Drag-and-Drop operation is within the widget
    /// `self`, not one of its children.
    @inlinable var isPointer: Bool {
        /// Returns if a Drag-and-Drop operation is within the widget
        /// `self`, not one of its children.
        get {
            let rv = ((gtk_drop_controller_motion_is_pointer(drop_controller_motion_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - DropDown Class

/// `GtkDropDown` is a widget that allows the user to choose an item
/// from a list of options.
/// 
/// ![An example GtkDropDown](drop-down.png)
/// 
/// The `GtkDropDown` displays the selected choice.
/// 
/// The options are given to `GtkDropDown` in the form of `GListModel`
/// and how the individual options are represented is determined by
/// a [class`Gtk.ListItemFactory`]. The default factory displays simple strings.
/// 
/// `GtkDropDown` knows how to obtain strings from the items in a
/// [class`Gtk.StringList`]; for other models, you have to provide an expression
/// to find the strings via [method`Gtk.DropDown.set_expression`].
/// 
/// `GtkDropDown` can optionally allow search in the popup, which is
/// useful if the list of options is long. To enable the search entry,
/// use [method`Gtk.DropDown.set_enable_search`].
/// 
/// # CSS nodes
/// 
/// `GtkDropDown` has a single CSS node with name dropdown,
/// with the button and popover nodes as children.
/// 
/// # Accessibility
/// 
/// `GtkDropDown` uses the `GTK_ACCESSIBLE_ROLE_COMBO_BOX` role.
///
/// The `DropDownProtocol` protocol exposes the methods and properties of an underlying `GtkDropDown` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropDown`.
/// Alternatively, use `DropDownRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DropDownProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkDropDown` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropDown` instance.
    var drop_down_ptr: UnsafeMutablePointer<GtkDropDown>! { get }

    /// Required Initialiser for types conforming to `DropDownProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDropDown` is a widget that allows the user to choose an item
/// from a list of options.
/// 
/// ![An example GtkDropDown](drop-down.png)
/// 
/// The `GtkDropDown` displays the selected choice.
/// 
/// The options are given to `GtkDropDown` in the form of `GListModel`
/// and how the individual options are represented is determined by
/// a [class`Gtk.ListItemFactory`]. The default factory displays simple strings.
/// 
/// `GtkDropDown` knows how to obtain strings from the items in a
/// [class`Gtk.StringList`]; for other models, you have to provide an expression
/// to find the strings via [method`Gtk.DropDown.set_expression`].
/// 
/// `GtkDropDown` can optionally allow search in the popup, which is
/// useful if the list of options is long. To enable the search entry,
/// use [method`Gtk.DropDown.set_enable_search`].
/// 
/// # CSS nodes
/// 
/// `GtkDropDown` has a single CSS node with name dropdown,
/// with the button and popover nodes as children.
/// 
/// # Accessibility
/// 
/// `GtkDropDown` uses the `GTK_ACCESSIBLE_ROLE_COMBO_BOX` role.
///
/// The `DropDownRef` type acts as a lightweight Swift reference to an underlying `GtkDropDown` instance.
/// It exposes methods that can operate on this data type through `DropDownProtocol` conformance.
/// Use `DropDownRef` only as an `unowned` reference to an existing `GtkDropDown` instance.
///
public struct DropDownRef: DropDownProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DropDownProtocol>(_ other: T) -> DropDownRef { DropDownRef(other) }

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
    /// You may want to call [method`Gtk.DropDown.set_factory`]
    /// to set up a way to map its items to widgets.
    @inlinable init<ExpressionT: ExpressionProtocol, ListModelT: GIO.ListModelProtocol>( model: ListModelT?, expression: ExpressionT?) {
        let rv = gtk_drop_down_new(model?.list_model_ptr, expression?.expression_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkDropDown` that is populated with
    /// the strings.
    @inlinable init(strings: UnsafePointer<UnsafePointer<CChar>?>!) {
        let rv = gtk_drop_down_new_from_strings(strings)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkDropDown` that is populated with
    /// the strings.
    @inlinable static func newFrom(strings: UnsafePointer<UnsafePointer<CChar>?>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drop_down_new_from_strings(strings))) else { return nil }
        return rv
    }
}

/// `GtkDropDown` is a widget that allows the user to choose an item
/// from a list of options.
/// 
/// ![An example GtkDropDown](drop-down.png)
/// 
/// The `GtkDropDown` displays the selected choice.
/// 
/// The options are given to `GtkDropDown` in the form of `GListModel`
/// and how the individual options are represented is determined by
/// a [class`Gtk.ListItemFactory`]. The default factory displays simple strings.
/// 
/// `GtkDropDown` knows how to obtain strings from the items in a
/// [class`Gtk.StringList`]; for other models, you have to provide an expression
/// to find the strings via [method`Gtk.DropDown.set_expression`].
/// 
/// `GtkDropDown` can optionally allow search in the popup, which is
/// useful if the list of options is long. To enable the search entry,
/// use [method`Gtk.DropDown.set_enable_search`].
/// 
/// # CSS nodes
/// 
/// `GtkDropDown` has a single CSS node with name dropdown,
/// with the button and popover nodes as children.
/// 
/// # Accessibility
/// 
/// `GtkDropDown` uses the `GTK_ACCESSIBLE_ROLE_COMBO_BOX` role.
///
/// The `DropDown` type acts as a reference-counted owner of an underlying `GtkDropDown` instance.
/// It provides the methods that can operate on this data type through `DropDownProtocol` conformance.
/// Use `DropDown` as a strong reference or owner of a `GtkDropDown` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// You may want to call [method`Gtk.DropDown.set_factory`]
    /// to set up a way to map its items to widgets.
    @inlinable public init<ExpressionT: ExpressionProtocol, ListModelT: GIO.ListModelProtocol>( model: ListModelT?, expression: ExpressionT?) {
        let rv = gtk_drop_down_new(model?.list_model_ptr, expression?.expression_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkDropDown` that is populated with
    /// the strings.
    @inlinable public init(strings: UnsafePointer<UnsafePointer<CChar>?>!) {
        let rv = gtk_drop_down_new_from_strings(strings)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkDropDown` that is populated with
    /// the strings.
    @inlinable public static func newFrom(strings: UnsafePointer<UnsafePointer<CChar>?>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_drop_down_new_from_strings(strings))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum DropDownPropertyName: String, PropertyNameProtocol {
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
    /// Whether to show a search entry in the popup.
    /// 
    /// Note that search requires [property`Gtk.DropDown:expression`]
    /// to be set.
    case enableSearch = "enable-search"
    /// An expression to evaluate to obtain strings to match against the search
    /// term.
    /// 
    /// See [property`Gtk.DropDown:enable-search`] for how to enable search.
    /// If [property`Gtk.DropDown:factory`] is not set, the expression is also
    /// used to bind strings to labels produced by a default factory.
    case expression = "expression"
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
    /// The factory for populating list items in the popup.
    /// 
    /// If this is not set, [property`Gtk.DropDown:factory`] is used.
    case listFactory = "list-factory"
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
    /// Model for the displayed items.
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
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// The position of the selected item.
    /// 
    /// If no item is selected, the property has the value
    /// `GTK_INVALID_LIST_POSITION`.
    case selected = "selected"
    /// The selected item.
    case selectedItem = "selected-item"
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
    /// Whether to show a search entry in the popup.
    /// 
    /// Note that search requires [property`Gtk.DropDown:expression`]
    /// to be set.
    case notifyEnableSearch = "notify::enable-search"
    /// An expression to evaluate to obtain strings to match against the search
    /// term.
    /// 
    /// See [property`Gtk.DropDown:enable-search`] for how to enable search.
    /// If [property`Gtk.DropDown:factory`] is not set, the expression is also
    /// used to bind strings to labels produced by a default factory.
    case notifyExpression = "notify::expression"
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
    /// The factory for populating list items in the popup.
    /// 
    /// If this is not set, [property`Gtk.DropDown:factory`] is used.
    case notifyListFactory = "notify::list-factory"
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
    /// Model for the displayed items.
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
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// The position of the selected item.
    /// 
    /// If no item is selected, the property has the value
    /// `GTK_INVALID_LIST_POSITION`.
    case notifySelected = "notify::selected"
    /// The selected item.
    case notifySelectedItem = "notify::selected-item"
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

// MARK: DropDown has no signals
// MARK: DropDown Class: DropDownProtocol extension (methods and fields)
public extension DropDownProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropDown` instance.
    @inlinable var drop_down_ptr: UnsafeMutablePointer<GtkDropDown>! { return ptr?.assumingMemoryBound(to: GtkDropDown.self) }

    /// Returns whether search is enabled.
    @inlinable func getEnableSearch() -> Bool {
        let rv = ((gtk_drop_down_get_enable_search(drop_down_ptr)) != 0)
        return rv
    }

    /// Gets the expression set that is used to obtain strings from items.
    /// 
    /// See [method`Gtk.DropDown.set_expression`].
    @inlinable func getExpression() -> ExpressionRef! {
        let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_drop_down_get_expression(drop_down_ptr)))
        return rv
    }

    /// Gets the factory that's currently used to populate list items.
    /// 
    /// The factory returned by this function is always used for the
    /// item in the button. It is also used for items in the popup
    /// if [property`Gtk.DropDown:list-factory`] is not set.
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
    /// Note that [property`Gtk.DropDown:expression`] must be set for
    /// search to work.
    @inlinable func set(enableSearch: Bool) {
        gtk_drop_down_set_enable_search(drop_down_ptr, gboolean((enableSearch) ? 1 : 0))
    
    }

    /// Sets the expression that gets evaluated to obtain strings from items.
    /// 
    /// This is used for search in the popup. The expression must have
    /// a value type of `G_TYPE_STRING`.
    @inlinable func set(expression: ExpressionRef? = nil) {
        gtk_drop_down_set_expression(drop_down_ptr, expression?.expression_ptr)
    
    }
    /// Sets the expression that gets evaluated to obtain strings from items.
    /// 
    /// This is used for search in the popup. The expression must have
    /// a value type of `G_TYPE_STRING`.
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
        /// Note that [property`Gtk.DropDown:expression`] must be set for
        /// search to work.
        nonmutating set {
            gtk_drop_down_set_enable_search(drop_down_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// An expression to evaluate to obtain strings to match against the search
    /// term.
    /// 
    /// See [property`Gtk.DropDown:enable-search`] for how to enable search.
    /// If [property`Gtk.DropDown:factory`] is not set, the expression is also
    /// used to bind strings to labels produced by a default factory.
    @inlinable var expression: ExpressionRef! {
        /// Gets the expression set that is used to obtain strings from items.
        /// 
        /// See [method`Gtk.DropDown.set_expression`].
        get {
            let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_drop_down_get_expression(drop_down_ptr)))
            return rv
        }
        /// Sets the expression that gets evaluated to obtain strings from items.
        /// 
        /// This is used for search in the popup. The expression must have
        /// a value type of `G_TYPE_STRING`.
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
        /// if [property`Gtk.DropDown:list-factory`] is not set.
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

    /// The position of the selected item.
    /// 
    /// If no item is selected, the property has the value
    /// `GTK_INVALID_LIST_POSITION`.
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

/// `GtkDropTarget` is an event controller to receive Drag-and-Drop operations.
/// 
/// The most basic way to use a `GtkDropTarget` to receive drops on a
/// widget is to create it via [ctor`Gtk.DropTarget.new`], passing in the
/// `GType` of the data you want to receive and connect to the
/// [signal`Gtk.DropTarget::drop`] signal to receive the data:
/// 
/// ```c
/// static gboolean
/// on_drop (GtkDropTarget *target,
///          const GValue  *value,
///          double         x,
///          double         y,
///          gpointer       data)
/// {
///   MyWidget *self = data;
/// 
///   // Call the appropriate setter depending on the type of data
///   // that we received
///   if (G_VALUE_HOLDS (value, G_TYPE_FILE))
///     my_widget_set_file (self, g_value_get_object (value));
///   else if (G_VALUE_HOLDS (value, GDK_TYPE_PIXBUF))
///     my_widget_set_pixbuf (self, g_value_get_object (value));
///   else
///     return FALSE;
/// 
///   return TRUE;
/// }
/// 
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   GtkDropTarget *target =
///     gtk_drop_target_new (G_TYPE_INVALID, GDK_ACTION_COPY);
/// 
///   // This widget accepts two types of drop types: GFile objects
///   // and GdkPixbuf objects
///   gtk_drop_target_set_gtypes (target, (GTypes [2]) {
///     G_TYPE_FILE,
///     GDK_TYPE_PIXBUF,
///   }, 2);
/// 
///   gtk_widget_add_controller (GTK_WIDGET (self), GTK_EVENT_CONTROLLER (target));
/// }
/// ```
/// 
/// `GtkDropTarget` supports more options, such as:
/// 
///  * rejecting potential drops via the [signal`Gtk.DropTarget::accept`] signal
///    and the [method`Gtk.DropTarget.reject`] function to let other drop
///    targets handle the drop
///  * tracking an ongoing drag operation before the drop via the
///    [signal`Gtk.DropTarget::enter`], [signal`Gtk.DropTarget::motion`] and
///    [signal`Gtk.DropTarget::leave`] signals
///  * configuring how to receive data by setting the
///    [property`Gtk.DropTarget:preload`] property and listening for its
///    availability via the [property`Gtk.DropTarget:value`] property
/// 
/// However, `GtkDropTarget` is ultimately modeled in a synchronous way
/// and only supports data transferred via `GType`. If you want full control
/// over an ongoing drop, the [class`Gtk.DropTargetAsync`] object gives you
/// this ability.
/// 
/// While a pointer is dragged over the drop target's widget and the drop
/// has not been rejected, that widget will receive the
/// `GTK_STATE_FLAG_DROP_ACTIVE` state, which can be used to style the widget.
/// 
/// If you are not interested in receiving the drop, but just want to update
/// UI state during a Drag-and-Drop operation (e.g. switching tabs), you can
/// use [class`Gtk.DropControllerMotion`].
///
/// The `DropTargetProtocol` protocol exposes the methods and properties of an underlying `GtkDropTarget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropTarget`.
/// Alternatively, use `DropTargetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DropTargetProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkDropTarget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropTarget` instance.
    var drop_target_ptr: UnsafeMutablePointer<GtkDropTarget>! { get }

    /// Required Initialiser for types conforming to `DropTargetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDropTarget` is an event controller to receive Drag-and-Drop operations.
/// 
/// The most basic way to use a `GtkDropTarget` to receive drops on a
/// widget is to create it via [ctor`Gtk.DropTarget.new`], passing in the
/// `GType` of the data you want to receive and connect to the
/// [signal`Gtk.DropTarget::drop`] signal to receive the data:
/// 
/// ```c
/// static gboolean
/// on_drop (GtkDropTarget *target,
///          const GValue  *value,
///          double         x,
///          double         y,
///          gpointer       data)
/// {
///   MyWidget *self = data;
/// 
///   // Call the appropriate setter depending on the type of data
///   // that we received
///   if (G_VALUE_HOLDS (value, G_TYPE_FILE))
///     my_widget_set_file (self, g_value_get_object (value));
///   else if (G_VALUE_HOLDS (value, GDK_TYPE_PIXBUF))
///     my_widget_set_pixbuf (self, g_value_get_object (value));
///   else
///     return FALSE;
/// 
///   return TRUE;
/// }
/// 
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   GtkDropTarget *target =
///     gtk_drop_target_new (G_TYPE_INVALID, GDK_ACTION_COPY);
/// 
///   // This widget accepts two types of drop types: GFile objects
///   // and GdkPixbuf objects
///   gtk_drop_target_set_gtypes (target, (GTypes [2]) {
///     G_TYPE_FILE,
///     GDK_TYPE_PIXBUF,
///   }, 2);
/// 
///   gtk_widget_add_controller (GTK_WIDGET (self), GTK_EVENT_CONTROLLER (target));
/// }
/// ```
/// 
/// `GtkDropTarget` supports more options, such as:
/// 
///  * rejecting potential drops via the [signal`Gtk.DropTarget::accept`] signal
///    and the [method`Gtk.DropTarget.reject`] function to let other drop
///    targets handle the drop
///  * tracking an ongoing drag operation before the drop via the
///    [signal`Gtk.DropTarget::enter`], [signal`Gtk.DropTarget::motion`] and
///    [signal`Gtk.DropTarget::leave`] signals
///  * configuring how to receive data by setting the
///    [property`Gtk.DropTarget:preload`] property and listening for its
///    availability via the [property`Gtk.DropTarget:value`] property
/// 
/// However, `GtkDropTarget` is ultimately modeled in a synchronous way
/// and only supports data transferred via `GType`. If you want full control
/// over an ongoing drop, the [class`Gtk.DropTargetAsync`] object gives you
/// this ability.
/// 
/// While a pointer is dragged over the drop target's widget and the drop
/// has not been rejected, that widget will receive the
/// `GTK_STATE_FLAG_DROP_ACTIVE` state, which can be used to style the widget.
/// 
/// If you are not interested in receiving the drop, but just want to update
/// UI state during a Drag-and-Drop operation (e.g. switching tabs), you can
/// use [class`Gtk.DropControllerMotion`].
///
/// The `DropTargetRef` type acts as a lightweight Swift reference to an underlying `GtkDropTarget` instance.
/// It exposes methods that can operate on this data type through `DropTargetProtocol` conformance.
/// Use `DropTargetRef` only as an `unowned` reference to an existing `GtkDropTarget` instance.
///
public struct DropTargetRef: DropTargetProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DropTargetProtocol>(_ other: T) -> DropTargetRef { DropTargetRef(other) }

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
    /// [method`Gtk.DropTarget.set_gtypes`].
    @inlinable init( type: GType, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_new(type, actions.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkDropTarget` is an event controller to receive Drag-and-Drop operations.
/// 
/// The most basic way to use a `GtkDropTarget` to receive drops on a
/// widget is to create it via [ctor`Gtk.DropTarget.new`], passing in the
/// `GType` of the data you want to receive and connect to the
/// [signal`Gtk.DropTarget::drop`] signal to receive the data:
/// 
/// ```c
/// static gboolean
/// on_drop (GtkDropTarget *target,
///          const GValue  *value,
///          double         x,
///          double         y,
///          gpointer       data)
/// {
///   MyWidget *self = data;
/// 
///   // Call the appropriate setter depending on the type of data
///   // that we received
///   if (G_VALUE_HOLDS (value, G_TYPE_FILE))
///     my_widget_set_file (self, g_value_get_object (value));
///   else if (G_VALUE_HOLDS (value, GDK_TYPE_PIXBUF))
///     my_widget_set_pixbuf (self, g_value_get_object (value));
///   else
///     return FALSE;
/// 
///   return TRUE;
/// }
/// 
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   GtkDropTarget *target =
///     gtk_drop_target_new (G_TYPE_INVALID, GDK_ACTION_COPY);
/// 
///   // This widget accepts two types of drop types: GFile objects
///   // and GdkPixbuf objects
///   gtk_drop_target_set_gtypes (target, (GTypes [2]) {
///     G_TYPE_FILE,
///     GDK_TYPE_PIXBUF,
///   }, 2);
/// 
///   gtk_widget_add_controller (GTK_WIDGET (self), GTK_EVENT_CONTROLLER (target));
/// }
/// ```
/// 
/// `GtkDropTarget` supports more options, such as:
/// 
///  * rejecting potential drops via the [signal`Gtk.DropTarget::accept`] signal
///    and the [method`Gtk.DropTarget.reject`] function to let other drop
///    targets handle the drop
///  * tracking an ongoing drag operation before the drop via the
///    [signal`Gtk.DropTarget::enter`], [signal`Gtk.DropTarget::motion`] and
///    [signal`Gtk.DropTarget::leave`] signals
///  * configuring how to receive data by setting the
///    [property`Gtk.DropTarget:preload`] property and listening for its
///    availability via the [property`Gtk.DropTarget:value`] property
/// 
/// However, `GtkDropTarget` is ultimately modeled in a synchronous way
/// and only supports data transferred via `GType`. If you want full control
/// over an ongoing drop, the [class`Gtk.DropTargetAsync`] object gives you
/// this ability.
/// 
/// While a pointer is dragged over the drop target's widget and the drop
/// has not been rejected, that widget will receive the
/// `GTK_STATE_FLAG_DROP_ACTIVE` state, which can be used to style the widget.
/// 
/// If you are not interested in receiving the drop, but just want to update
/// UI state during a Drag-and-Drop operation (e.g. switching tabs), you can
/// use [class`Gtk.DropControllerMotion`].
///
/// The `DropTarget` type acts as a reference-counted owner of an underlying `GtkDropTarget` instance.
/// It provides the methods that can operate on this data type through `DropTargetProtocol` conformance.
/// Use `DropTarget` as a strong reference or owner of a `GtkDropTarget` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// [method`Gtk.DropTarget.set_gtypes`].
    @inlinable public init( type: GType, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_new(type, actions.value)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum DropTargetPropertyName: String, PropertyNameProtocol {
    /// The `GdkDragActions` that this drop target supports.
    case actions = "actions"
    /// The `GdkDrop` that is currently being performed.
    case currentDrop = "current-drop"
    /// The `GdkDrop` that is currently being performed.
    ///
    /// **drop is deprecated:**
    /// Use [property@Gtk.DropTarget:current-drop] instead
    case drop = "drop"
    /// The `GdkContentFormats` that determine the supported data formats.
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
    /// 
    /// For example, if somebody drags a full document of gigabytes of text
    /// from a text editor across a widget with a preloading drop target,
    /// this data will be downloaded, even if the data is ultimately dropped
    /// elsewhere.
    /// 
    /// For a lot of data formats, the amount of data is very small (like
    /// `GDK_TYPE_RGBA`), so enabling this property does not hurt at all.
    /// And for local-only Drag-and-Drop operations, no data transfer is done,
    /// so enabling it there is free.
    case preload = "preload"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The value for this drop operation.
    /// 
    /// This is `nil` if the data has not been loaded yet or no drop
    /// operation is going on.
    /// 
    /// Data may be available before the [signal`Gtk.DropTarget::drop`]
    /// signal gets emitted - for example when the [property`Gtk.DropTarget:preload`]
    /// property is set. You can use the `notify` signal to be notified
    /// of available data.
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
    /// Emitted on the drop site when a drop operation is about to begin.
    /// 
    /// If the drop is not accepted, `false` will be returned and the drop target
    /// will ignore the drop. If `true` is returned, the drop is accepted for now
    /// but may be rejected later via a call to [method`Gtk.DropTarget.reject`]
    /// or ultimately by returning `false` from a [signal`Gtk.DropTarget::drop`]
    /// handler.
    /// 
    /// The default handler for this signal decides whether to accept the drop
    /// based on the formats provided by the `drop`.
    /// 
    /// If the decision whether the drop will be accepted or rejected depends
    /// on the data, this function should return `true`, the
    /// [property`Gtk.DropTarget:preload`] property should be set and the value
    /// should be inspected via the `notify:value` signal, calling
    /// [method`Gtk.DropTarget.reject`] if required.
    case accept = "accept"
    /// Emitted on the drop site when the user drops the data onto the widget.
    /// 
    /// The signal handler must determine whether the pointer position is in
    /// a drop zone or not. If it is not in a drop zone, it returns `false`
    /// and no further processing is necessary.
    /// 
    /// Otherwise, the handler returns `true`. In this case, this handler will
    /// accept the drop. The handler is responsible for using the given `value`
    /// and performing the drop operation.
    case drop = "drop"
    /// Emitted on the drop site when the pointer enters the widget.
    /// 
    /// It can be used to set up custom highlighting.
    case enter = "enter"
    /// Emitted on the drop site when the pointer leaves the widget.
    /// 
    /// Its main purpose it to undo things done in
    /// [signal`Gtk.DropTarget::enter`].
    case leave = "leave"
    /// Emitted while the pointer is moving over the drop target.
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
    /// The `GdkDragActions` that this drop target supports.
    case notifyActions = "notify::actions"
    /// The `GdkDrop` that is currently being performed.
    case notifyCurrentDrop = "notify::current-drop"
    /// The `GdkDrop` that is currently being performed.
    ///
    /// **drop is deprecated:**
    /// Use [property@Gtk.DropTarget:current-drop] instead
    case notifyDrop = "notify::drop"
    /// The `GdkContentFormats` that determine the supported data formats.
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
    /// 
    /// For example, if somebody drags a full document of gigabytes of text
    /// from a text editor across a widget with a preloading drop target,
    /// this data will be downloaded, even if the data is ultimately dropped
    /// elsewhere.
    /// 
    /// For a lot of data formats, the amount of data is very small (like
    /// `GDK_TYPE_RGBA`), so enabling this property does not hurt at all.
    /// And for local-only Drag-and-Drop operations, no data transfer is done,
    /// so enabling it there is free.
    case notifyPreload = "notify::preload"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The value for this drop operation.
    /// 
    /// This is `nil` if the data has not been loaded yet or no drop
    /// operation is going on.
    /// 
    /// Data may be available before the [signal`Gtk.DropTarget::drop`]
    /// signal gets emitted - for example when the [property`Gtk.DropTarget:preload`]
    /// property is set. You can use the `notify` signal to be notified
    /// of available data.
    case notifyValue = "notify::value"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: DropTarget signals
public extension DropTargetProtocol {
    /// Connect a Swift signal handler to the given, typed `DropTargetSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DropTargetSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DropTargetSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DropTargetSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted on the drop site when a drop operation is about to begin.
    /// 
    /// If the drop is not accepted, `false` will be returned and the drop target
    /// will ignore the drop. If `true` is returned, the drop is accepted for now
    /// but may be rejected later via a call to [method`Gtk.DropTarget.reject`]
    /// or ultimately by returning `false` from a [signal`Gtk.DropTarget::drop`]
    /// handler.
    /// 
    /// The default handler for this signal decides whether to accept the drop
    /// based on the formats provided by the `drop`.
    /// 
    /// If the decision whether the drop will be accepted or rejected depends
    /// on the data, this function should return `true`, the
    /// [property`Gtk.DropTarget:preload`] property should be set and the value
    /// should be inspected via the `notify:value` signal, calling
    /// [method`Gtk.DropTarget.reject`] if required.
    /// - Note: This represents the underlying `accept` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drop: the `GdkDrop`
    /// - Parameter handler: `true` if `drop` is accepted
    /// Run the given callback whenever the `accept` signal is emitted
    @discardableResult @inlinable func onAccept(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ drop: Gdk.DropRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetRef, Gdk.DropRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetRef(raw: unownedSelf), Gdk.DropRef(raw: arg1))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .accept,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `accept` signal for using the `connect(signal:)` methods
    static var acceptSignal: DropTargetSignalName { .accept }
    
    /// Emitted on the drop site when the user drops the data onto the widget.
    /// 
    /// The signal handler must determine whether the pointer position is in
    /// a drop zone or not. If it is not in a drop zone, it returns `false`
    /// and no further processing is necessary.
    /// 
    /// Otherwise, the handler returns `true`. In this case, this handler will
    /// accept the drop. The handler is responsible for using the given `value`
    /// and performing the drop operation.
    /// - Note: This represents the underlying `drop` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter value: the `GValue` being dropped
    /// - Parameter x: the x coordinate of the current pointer position
    /// - Parameter y: the y coordinate of the current pointer position
    /// - Parameter handler: whether the drop was accepted at the given pointer position
    /// Run the given callback whenever the `drop` signal is emitted
    @discardableResult @inlinable func onDrop(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ value: GLibObject.ValueRef, _ x: Double, _ y: Double) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<DropTargetRef, GLibObject.ValueRef, Double, Double, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gdouble, gdouble, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetRef(raw: unownedSelf), GLibObject.ValueRef(raw: arg1), Double(arg2), Double(arg3))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .drop,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drop` signal for using the `connect(signal:)` methods
    static var dropSignal: DropTargetSignalName { .drop }
    
    /// Emitted on the drop site when the pointer enters the widget.
    /// 
    /// It can be used to set up custom highlighting.
    /// - Note: This represents the underlying `enter` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the x coordinate of the current pointer position
    /// - Parameter y: the y coordinate of the current pointer position
    /// - Parameter handler: Preferred action for this drag operation or 0 if   dropping is not supported at the current `x`,`y` location.
    /// Run the given callback whenever the `enter` signal is emitted
    @discardableResult @inlinable func onEnter(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ x: Double, _ y: Double) -> Gdk.DragAction ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DropTargetRef, Double, Double, Gdk.DragAction>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> UInt32 = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output.rawValue
        }
        return connect(
            signal: .enter,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `enter` signal for using the `connect(signal:)` methods
    static var enterSignal: DropTargetSignalName { .enter }
    
    /// Emitted on the drop site when the pointer leaves the widget.
    /// 
    /// Its main purpose it to undo things done in
    /// [signal`Gtk.DropTarget::enter`].
    /// - Note: This represents the underlying `leave` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `leave` signal is emitted
    @discardableResult @inlinable func onLeave(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DropTargetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .leave,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `leave` signal for using the `connect(signal:)` methods
    static var leaveSignal: DropTargetSignalName { .leave }
    
    /// Emitted while the pointer is moving over the drop target.
    /// - Note: This represents the underlying `motion` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the x coordinate of the current pointer position
    /// - Parameter y: the y coordinate of the current pointer position
    /// - Parameter handler: Preferred action for this drag operation or 0 if   dropping is not supported at the current `x`,`y` location.
    /// Run the given callback whenever the `motion` signal is emitted
    @discardableResult @inlinable func onMotion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ x: Double, _ y: Double) -> Gdk.DragAction ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DropTargetRef, Double, Double, Gdk.DragAction>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> UInt32 = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output.rawValue
        }
        return connect(
            signal: .motion,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `motion` signal for using the `connect(signal:)` methods
    static var motionSignal: DropTargetSignalName { .motion }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::actions` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyActions` signal is emitted
    @discardableResult @inlinable func onNotifyActions(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyActions,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::actions` signal for using the `connect(signal:)` methods
    static var notifyActionsSignal: DropTargetSignalName { .notifyActions }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::current-drop` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCurrentDrop` signal is emitted
    @discardableResult @inlinable func onNotifyCurrentDrop(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCurrentDrop,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::current-drop` signal for using the `connect(signal:)` methods
    static var notifyCurrentDropSignal: DropTargetSignalName { .notifyCurrentDrop }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::drop` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDrop` signal is emitted
    @discardableResult @inlinable func onNotifyDrop(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDrop,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::drop` signal for using the `connect(signal:)` methods
    static var notifyDropSignal: DropTargetSignalName { .notifyDrop }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::formats` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFormats` signal is emitted
    @discardableResult @inlinable func onNotifyFormats(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFormats,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::formats` signal for using the `connect(signal:)` methods
    static var notifyFormatsSignal: DropTargetSignalName { .notifyFormats }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::preload` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPreload` signal is emitted
    @discardableResult @inlinable func onNotifyPreload(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPreload,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::preload` signal for using the `connect(signal:)` methods
    static var notifyPreloadSignal: DropTargetSignalName { .notifyPreload }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::value` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyValue` signal is emitted
    @discardableResult @inlinable func onNotifyValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyValueSignal: DropTargetSignalName { .notifyValue }
    
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
    @inlinable func getCurrentDrop() -> Gdk.DropRef! {
        let rv = Gdk.DropRef(gtk_drop_target_get_current_drop(drop_target_ptr))
        return rv
    }

    /// Gets the currently handled drop operation.
    /// 
    /// If no drop operation is going on, `nil` is returned.
    ///
    /// **get_drop is deprecated:**
    /// Use [method@Gtk.DropTarget.get_current_drop] instead
    @available(*, deprecated) @inlinable func getDrop() -> Gdk.DropRef! {
        let rv = Gdk.DropRef(gtk_drop_target_get_drop(drop_target_ptr))
        return rv
    }

    /// Gets the data formats that this drop target accepts.
    /// 
    /// If the result is `nil`, all formats are expected to be supported.
    @inlinable func getFormats() -> Gdk.ContentFormatsRef! {
        let rv = Gdk.ContentFormatsRef(gtk_drop_target_get_formats(drop_target_ptr))
        return rv
    }

    /// Gets the list of supported `GType`s that can be dropped on the target.
    /// 
    /// If no types have been set, `NULL` will be returned.
    @inlinable func getGtypes(nTypes: UnsafeMutablePointer<gsize>! = nil) -> UnsafePointer<GType>! {
        let rv = gtk_drop_target_get_gtypes(drop_target_ptr, nTypes)
        return rv
    }

    /// Gets whether data should be preloaded on hover.
    @inlinable func getPreload() -> Bool {
        let rv = ((gtk_drop_target_get_preload(drop_target_ptr)) != 0)
        return rv
    }

    /// Gets the current drop data, as a `GValue`.
    @inlinable func getValue() -> GLibObject.ValueRef! {
        let rv = GLibObject.ValueRef(gtk_drop_target_get_value(drop_target_ptr))
        return rv
    }

    /// Rejects the ongoing drop operation.
    /// 
    /// If no drop operation is ongoing, i.e when [property`Gtk.DropTarget:current-drop`]
    /// is `nil`, this function does nothing.
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
    @inlinable func setGtypes(types: UnsafeMutablePointer<GType>! = nil, nTypes: Int) {
        gtk_drop_target_set_gtypes(drop_target_ptr, types, gsize(nTypes))
    
    }

    /// Sets whether data should be preloaded on hover.
    @inlinable func set(preload: Bool) {
        gtk_drop_target_set_preload(drop_target_ptr, gboolean((preload) ? 1 : 0))
    
    }
    /// The `GdkDragActions` that this drop target supports.
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

    /// Gets the currently handled drop operation.
    /// 
    /// If no drop operation is going on, `nil` is returned.
    @inlinable var currentDrop: Gdk.DropRef! {
        /// Gets the currently handled drop operation.
        /// 
        /// If no drop operation is going on, `nil` is returned.
        get {
            let rv = Gdk.DropRef(gtk_drop_target_get_current_drop(drop_target_ptr))
            return rv
        }
    }

    /// The `GdkDrop` that is currently being performed.
    ///
    /// **drop is deprecated:**
    /// Use [property@Gtk.DropTarget:current-drop] instead
    @inlinable var drop: Gdk.DropRef! {
        /// Gets the currently handled drop operation.
        /// 
        /// If no drop operation is going on, `nil` is returned.
        ///
        /// **get_drop is deprecated:**
        /// Use [method@Gtk.DropTarget.get_current_drop] instead
        @available(*, deprecated) get {
            let rv = Gdk.DropRef(gtk_drop_target_get_drop(drop_target_ptr))
            return rv
        }
    }

    /// The `GdkContentFormats` that determine the supported data formats.
    @inlinable var formats: Gdk.ContentFormatsRef! {
        /// Gets the data formats that this drop target accepts.
        /// 
        /// If the result is `nil`, all formats are expected to be supported.
        get {
            let rv = Gdk.ContentFormatsRef(gtk_drop_target_get_formats(drop_target_ptr))
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
    /// 
    /// For example, if somebody drags a full document of gigabytes of text
    /// from a text editor across a widget with a preloading drop target,
    /// this data will be downloaded, even if the data is ultimately dropped
    /// elsewhere.
    /// 
    /// For a lot of data formats, the amount of data is very small (like
    /// `GDK_TYPE_RGBA`), so enabling this property does not hurt at all.
    /// And for local-only Drag-and-Drop operations, no data transfer is done,
    /// so enabling it there is free.
    @inlinable var preload: Bool {
        /// Gets whether data should be preloaded on hover.
        get {
            let rv = ((gtk_drop_target_get_preload(drop_target_ptr)) != 0)
            return rv
        }
        /// Sets whether data should be preloaded on hover.
        nonmutating set {
            gtk_drop_target_set_preload(drop_target_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The value for this drop operation.
    /// 
    /// This is `nil` if the data has not been loaded yet or no drop
    /// operation is going on.
    /// 
    /// Data may be available before the [signal`Gtk.DropTarget::drop`]
    /// signal gets emitted - for example when the [property`Gtk.DropTarget:preload`]
    /// property is set. You can use the `notify` signal to be notified
    /// of available data.
    @inlinable var value: GLibObject.ValueRef! {
        /// Gets the current drop data, as a `GValue`.
        get {
            let rv = GLibObject.ValueRef(gtk_drop_target_get_value(drop_target_ptr))
            return rv
        }
    }


}



// MARK: - DropTargetAsync Class

/// `GtkDropTargetAsync` is an event controller to receive Drag-and-Drop
/// operations, asynchronously.
/// 
/// It is the more complete but also more complex method of handling drop
/// operations compared to [class`Gtk.DropTarget`], and you should only use
/// it if `GtkDropTarget` doesn't provide all the features you need.
/// 
/// To use a `GtkDropTargetAsync` to receive drops on a widget, you create
/// a `GtkDropTargetAsync` object, configure which data formats and actions
/// you support, connect to its signals, and then attach it to the widget
/// with [method`Gtk.Widget.add_controller`].
/// 
/// During a drag operation, the first signal that a `GtkDropTargetAsync`
/// emits is [signal`Gtk.DropTargetAsync::accept`], which is meant to determine
/// whether the target is a possible drop site for the ongoing drop. The
/// default handler for the `accept` signal accepts the drop if it finds
/// a compatible data format and an action that is supported on both sides.
/// 
/// If it is, and the widget becomes a target, you will receive a
/// [signal`Gtk.DropTargetAsync::drag-enter`] signal, followed by
/// [signal`Gtk.DropTargetAsync::drag-motion`] signals as the pointer moves,
/// optionally a [signal`Gtk.DropTargetAsync::drop`] signal when a drop happens,
/// and finally a [signal`Gtk.DropTargetAsync::drag-leave`] signal when the
/// pointer moves off the widget.
/// 
/// The `drag-enter` and `drag-motion` handler return a `GdkDragAction`
/// to update the status of the ongoing operation. The `drop` handler
/// should decide if it ultimately accepts the drop and if it does, it
/// should initiate the data transfer and finish the operation by calling
/// [method`Gdk.Drop.finish`].
/// 
/// Between the `drag-enter` and `drag-leave` signals the widget is a
/// current drop target, and will receive the `GTK_STATE_FLAG_DROP_ACTIVE`
/// state, which can be used by themes to style the widget as a drop target.
///
/// The `DropTargetAsyncProtocol` protocol exposes the methods and properties of an underlying `GtkDropTargetAsync` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropTargetAsync`.
/// Alternatively, use `DropTargetAsyncRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DropTargetAsyncProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkDropTargetAsync` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropTargetAsync` instance.
    var drop_target_async_ptr: UnsafeMutablePointer<GtkDropTargetAsync>! { get }

    /// Required Initialiser for types conforming to `DropTargetAsyncProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkDropTargetAsync` is an event controller to receive Drag-and-Drop
/// operations, asynchronously.
/// 
/// It is the more complete but also more complex method of handling drop
/// operations compared to [class`Gtk.DropTarget`], and you should only use
/// it if `GtkDropTarget` doesn't provide all the features you need.
/// 
/// To use a `GtkDropTargetAsync` to receive drops on a widget, you create
/// a `GtkDropTargetAsync` object, configure which data formats and actions
/// you support, connect to its signals, and then attach it to the widget
/// with [method`Gtk.Widget.add_controller`].
/// 
/// During a drag operation, the first signal that a `GtkDropTargetAsync`
/// emits is [signal`Gtk.DropTargetAsync::accept`], which is meant to determine
/// whether the target is a possible drop site for the ongoing drop. The
/// default handler for the `accept` signal accepts the drop if it finds
/// a compatible data format and an action that is supported on both sides.
/// 
/// If it is, and the widget becomes a target, you will receive a
/// [signal`Gtk.DropTargetAsync::drag-enter`] signal, followed by
/// [signal`Gtk.DropTargetAsync::drag-motion`] signals as the pointer moves,
/// optionally a [signal`Gtk.DropTargetAsync::drop`] signal when a drop happens,
/// and finally a [signal`Gtk.DropTargetAsync::drag-leave`] signal when the
/// pointer moves off the widget.
/// 
/// The `drag-enter` and `drag-motion` handler return a `GdkDragAction`
/// to update the status of the ongoing operation. The `drop` handler
/// should decide if it ultimately accepts the drop and if it does, it
/// should initiate the data transfer and finish the operation by calling
/// [method`Gdk.Drop.finish`].
/// 
/// Between the `drag-enter` and `drag-leave` signals the widget is a
/// current drop target, and will receive the `GTK_STATE_FLAG_DROP_ACTIVE`
/// state, which can be used by themes to style the widget as a drop target.
///
/// The `DropTargetAsyncRef` type acts as a lightweight Swift reference to an underlying `GtkDropTargetAsync` instance.
/// It exposes methods that can operate on this data type through `DropTargetAsyncProtocol` conformance.
/// Use `DropTargetAsyncRef` only as an `unowned` reference to an existing `GtkDropTargetAsync` instance.
///
public struct DropTargetAsyncRef: DropTargetAsyncProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DropTargetAsyncProtocol>(_ other: T) -> DropTargetAsyncRef { DropTargetAsyncRef(other) }

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
    @inlinable init<ContentFormatsT: Gdk.ContentFormatsProtocol>( formats: ContentFormatsT?, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_async_new(formats?.content_formats_ptr, actions.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkDropTargetAsync` is an event controller to receive Drag-and-Drop
/// operations, asynchronously.
/// 
/// It is the more complete but also more complex method of handling drop
/// operations compared to [class`Gtk.DropTarget`], and you should only use
/// it if `GtkDropTarget` doesn't provide all the features you need.
/// 
/// To use a `GtkDropTargetAsync` to receive drops on a widget, you create
/// a `GtkDropTargetAsync` object, configure which data formats and actions
/// you support, connect to its signals, and then attach it to the widget
/// with [method`Gtk.Widget.add_controller`].
/// 
/// During a drag operation, the first signal that a `GtkDropTargetAsync`
/// emits is [signal`Gtk.DropTargetAsync::accept`], which is meant to determine
/// whether the target is a possible drop site for the ongoing drop. The
/// default handler for the `accept` signal accepts the drop if it finds
/// a compatible data format and an action that is supported on both sides.
/// 
/// If it is, and the widget becomes a target, you will receive a
/// [signal`Gtk.DropTargetAsync::drag-enter`] signal, followed by
/// [signal`Gtk.DropTargetAsync::drag-motion`] signals as the pointer moves,
/// optionally a [signal`Gtk.DropTargetAsync::drop`] signal when a drop happens,
/// and finally a [signal`Gtk.DropTargetAsync::drag-leave`] signal when the
/// pointer moves off the widget.
/// 
/// The `drag-enter` and `drag-motion` handler return a `GdkDragAction`
/// to update the status of the ongoing operation. The `drop` handler
/// should decide if it ultimately accepts the drop and if it does, it
/// should initiate the data transfer and finish the operation by calling
/// [method`Gdk.Drop.finish`].
/// 
/// Between the `drag-enter` and `drag-leave` signals the widget is a
/// current drop target, and will receive the `GTK_STATE_FLAG_DROP_ACTIVE`
/// state, which can be used by themes to style the widget as a drop target.
///
/// The `DropTargetAsync` type acts as a reference-counted owner of an underlying `GtkDropTargetAsync` instance.
/// It provides the methods that can operate on this data type through `DropTargetAsyncProtocol` conformance.
/// Use `DropTargetAsync` as a strong reference or owner of a `GtkDropTargetAsync` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @inlinable public init<ContentFormatsT: Gdk.ContentFormatsProtocol>( formats: ContentFormatsT?, actions: Gdk.DragAction) {
        let rv = gtk_drop_target_async_new(formats?.content_formats_ptr, actions.value)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum DropTargetAsyncPropertyName: String, PropertyNameProtocol {
    /// The `GdkDragActions` that this drop target supports.
    case actions = "actions"
    /// The `GdkContentFormats` that determines the supported data formats.
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
    /// Emitted on the drop site when a drop operation is about to begin.
    /// 
    /// If the drop is not accepted, `false` will be returned and the drop target
    /// will ignore the drop. If `true` is returned, the drop is accepted for now
    /// but may be rejected later via a call to [method`Gtk.DropTargetAsync.reject_drop`]
    /// or ultimately by returning `false` from a [signal`Gtk.DropTargetAsync::drop`]
    /// handler.
    /// 
    /// The default handler for this signal decides whether to accept the drop
    /// based on the formats provided by the `drop`.
    /// 
    /// If the decision whether the drop will be accepted or rejected needs
    /// further processing, such as inspecting the data, this function should
    /// return `true` and proceed as is `drop` was accepted and if it decides to
    /// reject the drop later, it should call [method`Gtk.DropTargetAsync.reject_drop`].
    case accept = "accept"
    /// Emitted on the drop site when the pointer enters the widget.
    /// 
    /// It can be used to set up custom highlighting.
    case dragEnter = "drag-enter"
    /// Emitted on the drop site when the pointer leaves the widget.
    /// 
    /// Its main purpose it to undo things done in
    /// `GtkDropTargetAsync``drag-enter`.
    case dragLeave = "drag-leave"
    /// Emitted while the pointer is moving over the drop target.
    case dragMotion = "drag-motion"
    /// Emitted on the drop site when the user drops the data onto the widget.
    /// 
    /// The signal handler must determine whether the pointer position is in a
    /// drop zone or not. If it is not in a drop zone, it returns `false` and no
    /// further processing is necessary.
    /// 
    /// Otherwise, the handler returns `true`. In this case, this handler will
    /// accept the drop. The handler must ensure that [method`Gdk.Drop.finish`]
    /// is called to let the source know that the drop is done. The call to
    /// [method`Gdk.Drop.finish`] must only be done when all data has been received.
    /// 
    /// To receive the data, use one of the read functions provided by
    /// [class`Gdk.Drop`] such as [method`Gdk.Drop.read_async`] or
    /// [method`Gdk.Drop.read_value_async`].
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
    /// The `GdkDragActions` that this drop target supports.
    case notifyActions = "notify::actions"
    /// The `GdkContentFormats` that determines the supported data formats.
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

// MARK: DropTargetAsync signals
public extension DropTargetAsyncProtocol {
    /// Connect a Swift signal handler to the given, typed `DropTargetAsyncSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DropTargetAsyncSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DropTargetAsyncSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DropTargetAsyncSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted on the drop site when a drop operation is about to begin.
    /// 
    /// If the drop is not accepted, `false` will be returned and the drop target
    /// will ignore the drop. If `true` is returned, the drop is accepted for now
    /// but may be rejected later via a call to [method`Gtk.DropTargetAsync.reject_drop`]
    /// or ultimately by returning `false` from a [signal`Gtk.DropTargetAsync::drop`]
    /// handler.
    /// 
    /// The default handler for this signal decides whether to accept the drop
    /// based on the formats provided by the `drop`.
    /// 
    /// If the decision whether the drop will be accepted or rejected needs
    /// further processing, such as inspecting the data, this function should
    /// return `true` and proceed as is `drop` was accepted and if it decides to
    /// reject the drop later, it should call [method`Gtk.DropTargetAsync.reject_drop`].
    /// - Note: This represents the underlying `accept` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drop: the `GdkDrop`
    /// - Parameter handler: `true` if `drop` is accepted
    /// Run the given callback whenever the `accept` signal is emitted
    @discardableResult @inlinable func onAccept(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetAsyncRef, _ drop: Gdk.DropRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetAsyncRef, Gdk.DropRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetAsyncRef(raw: unownedSelf), Gdk.DropRef(raw: arg1))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .accept,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `accept` signal for using the `connect(signal:)` methods
    static var acceptSignal: DropTargetAsyncSignalName { .accept }
    
    /// Emitted on the drop site when the pointer enters the widget.
    /// 
    /// It can be used to set up custom highlighting.
    /// - Note: This represents the underlying `drag-enter` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drop: the `GdkDrop`
    /// - Parameter x: the x coordinate of the current pointer position
    /// - Parameter y: the y coordinate of the current pointer position
    /// - Parameter handler: Preferred action for this drag operation.
    /// Run the given callback whenever the `dragEnter` signal is emitted
    @discardableResult @inlinable func onDragEnter(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetAsyncRef, _ drop: Gdk.DropRef, _ x: Double, _ y: Double) -> Gdk.DragAction ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<DropTargetAsyncRef, Gdk.DropRef, Double, Double, Gdk.DragAction>
        let cCallback: @convention(c) (gpointer, gpointer, gdouble, gdouble, gpointer) -> UInt32 = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetAsyncRef(raw: unownedSelf), Gdk.DropRef(raw: arg1), Double(arg2), Double(arg3))
            return output.rawValue
        }
        return connect(
            signal: .dragEnter,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-enter` signal for using the `connect(signal:)` methods
    static var dragEnterSignal: DropTargetAsyncSignalName { .dragEnter }
    
    /// Emitted on the drop site when the pointer leaves the widget.
    /// 
    /// Its main purpose it to undo things done in
    /// `GtkDropTargetAsync``drag-enter`.
    /// - Note: This represents the underlying `drag-leave` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drop: the `GdkDrop`
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dragLeave` signal is emitted
    @discardableResult @inlinable func onDragLeave(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetAsyncRef, _ drop: Gdk.DropRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetAsyncRef, Gdk.DropRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetAsyncRef(raw: unownedSelf), Gdk.DropRef(raw: arg1))
            return output
        }
        return connect(
            signal: .dragLeave,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-leave` signal for using the `connect(signal:)` methods
    static var dragLeaveSignal: DropTargetAsyncSignalName { .dragLeave }
    
    /// Emitted while the pointer is moving over the drop target.
    /// - Note: This represents the underlying `drag-motion` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drop: the `GdkDrop`
    /// - Parameter x: the x coordinate of the current pointer position
    /// - Parameter y: the y coordinate of the current pointer position
    /// - Parameter handler: Preferred action for this drag operation.
    /// Run the given callback whenever the `dragMotion` signal is emitted
    @discardableResult @inlinable func onDragMotion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetAsyncRef, _ drop: Gdk.DropRef, _ x: Double, _ y: Double) -> Gdk.DragAction ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<DropTargetAsyncRef, Gdk.DropRef, Double, Double, Gdk.DragAction>
        let cCallback: @convention(c) (gpointer, gpointer, gdouble, gdouble, gpointer) -> UInt32 = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetAsyncRef(raw: unownedSelf), Gdk.DropRef(raw: arg1), Double(arg2), Double(arg3))
            return output.rawValue
        }
        return connect(
            signal: .dragMotion,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-motion` signal for using the `connect(signal:)` methods
    static var dragMotionSignal: DropTargetAsyncSignalName { .dragMotion }
    
    /// Emitted on the drop site when the user drops the data onto the widget.
    /// 
    /// The signal handler must determine whether the pointer position is in a
    /// drop zone or not. If it is not in a drop zone, it returns `false` and no
    /// further processing is necessary.
    /// 
    /// Otherwise, the handler returns `true`. In this case, this handler will
    /// accept the drop. The handler must ensure that [method`Gdk.Drop.finish`]
    /// is called to let the source know that the drop is done. The call to
    /// [method`Gdk.Drop.finish`] must only be done when all data has been received.
    /// 
    /// To receive the data, use one of the read functions provided by
    /// [class`Gdk.Drop`] such as [method`Gdk.Drop.read_async`] or
    /// [method`Gdk.Drop.read_value_async`].
    /// - Note: This represents the underlying `drop` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter drop: the `GdkDrop`
    /// - Parameter x: the x coordinate of the current pointer position
    /// - Parameter y: the y coordinate of the current pointer position
    /// - Parameter handler: whether the drop is accepted at the given pointer position
    /// Run the given callback whenever the `drop` signal is emitted
    @discardableResult @inlinable func onDrop(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetAsyncRef, _ drop: Gdk.DropRef, _ x: Double, _ y: Double) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<DropTargetAsyncRef, Gdk.DropRef, Double, Double, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gdouble, gdouble, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DropTargetAsyncRef(raw: unownedSelf), Gdk.DropRef(raw: arg1), Double(arg2), Double(arg3))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .drop,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drop` signal for using the `connect(signal:)` methods
    static var dropSignal: DropTargetAsyncSignalName { .drop }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::actions` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyActions` signal is emitted
    @discardableResult @inlinable func onNotifyActions(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetAsyncRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetAsyncRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetAsyncRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyActions,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::actions` signal for using the `connect(signal:)` methods
    static var notifyActionsSignal: DropTargetAsyncSignalName { .notifyActions }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::formats` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFormats` signal is emitted
    @discardableResult @inlinable func onNotifyFormats(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DropTargetAsyncRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DropTargetAsyncRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DropTargetAsyncRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFormats,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::formats` signal for using the `connect(signal:)` methods
    static var notifyFormatsSignal: DropTargetAsyncSignalName { .notifyFormats }
    
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
    @inlinable func getFormats() -> Gdk.ContentFormatsRef! {
        let rv = Gdk.ContentFormatsRef(gtk_drop_target_async_get_formats(drop_target_async_ptr))
        return rv
    }

    /// Sets the `drop` as not accepted on this drag site.
    /// 
    /// This function should be used when delaying the decision
    /// on whether to accept a drag or not until after reading
    /// the data.
    @inlinable func reject<DropT: Gdk.DropProtocol>(drop: DropT) {
        gtk_drop_target_async_reject_drop(drop_target_async_ptr, drop.drop_ptr)
    
    }

    /// Sets the actions that this drop target supports.
    @inlinable func set(actions: Gdk.DragAction) {
        gtk_drop_target_async_set_actions(drop_target_async_ptr, actions.value)
    
    }

    /// Sets the data formats that this drop target will accept.
    @inlinable func set(formats: Gdk.ContentFormatsRef? = nil) {
        gtk_drop_target_async_set_formats(drop_target_async_ptr, formats?.content_formats_ptr)
    
    }
    /// Sets the data formats that this drop target will accept.
    @inlinable func set<ContentFormatsT: Gdk.ContentFormatsProtocol>(formats: ContentFormatsT?) {
        gtk_drop_target_async_set_formats(drop_target_async_ptr, formats?.content_formats_ptr)
    
    }
    /// The `GdkDragActions` that this drop target supports.
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

    /// The `GdkContentFormats` that determines the supported data formats.
    @inlinable var formats: Gdk.ContentFormatsRef! {
        /// Gets the data formats that this drop target accepts.
        /// 
        /// If the result is `nil`, all formats are expected to be supported.
        get {
            let rv = Gdk.ContentFormatsRef(gtk_drop_target_async_get_formats(drop_target_async_ptr))
            return rv
        }
        /// Sets the data formats that this drop target will accept.
        nonmutating set {
            gtk_drop_target_async_set_formats(drop_target_async_ptr, UnsafeMutablePointer<GdkContentFormats>(newValue?.content_formats_ptr))
        }
    }


}



// MARK: - EditableLabel Class

/// A `GtkEditableLabel` is a label that allows users to
/// edit the text by switching to an “edit mode”.
/// 
/// ![An example GtkEditableLabel](editable-label.png)
/// 
/// `GtkEditableLabel` does not have API of its own, but it
/// implements the [iface`Gtk.Editable`] interface.
/// 
/// The default bindings for activating the edit mode is
/// to click or press the Enter key. The default bindings
/// for leaving the edit mode are the Enter key (to save
/// the results) or the Escape key (to cancel the editing).
/// 
/// # CSS nodes
/// 
/// ```
/// editablelabel[.editing]
/// ╰── stack
///     ├── label
///     ╰── text
/// ```
/// 
/// `GtkEditableLabel` has a main node with the name editablelabel.
/// When the entry is in editing mode, it gets the .editing style
/// class.
/// 
/// For all the subnodes added to the text node in various situations,
/// see [class`Gtk.Text`].
///
/// The `EditableLabelProtocol` protocol exposes the methods and properties of an underlying `GtkEditableLabel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EditableLabel`.
/// Alternatively, use `EditableLabelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol EditableLabelProtocol: WidgetProtocol, EditableProtocol {
        /// Untyped pointer to the underlying `GtkEditableLabel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEditableLabel` instance.
    var editable_label_ptr: UnsafeMutablePointer<GtkEditableLabel>! { get }

    /// Required Initialiser for types conforming to `EditableLabelProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkEditableLabel` is a label that allows users to
/// edit the text by switching to an “edit mode”.
/// 
/// ![An example GtkEditableLabel](editable-label.png)
/// 
/// `GtkEditableLabel` does not have API of its own, but it
/// implements the [iface`Gtk.Editable`] interface.
/// 
/// The default bindings for activating the edit mode is
/// to click or press the Enter key. The default bindings
/// for leaving the edit mode are the Enter key (to save
/// the results) or the Escape key (to cancel the editing).
/// 
/// # CSS nodes
/// 
/// ```
/// editablelabel[.editing]
/// ╰── stack
///     ├── label
///     ╰── text
/// ```
/// 
/// `GtkEditableLabel` has a main node with the name editablelabel.
/// When the entry is in editing mode, it gets the .editing style
/// class.
/// 
/// For all the subnodes added to the text node in various situations,
/// see [class`Gtk.Text`].
///
/// The `EditableLabelRef` type acts as a lightweight Swift reference to an underlying `GtkEditableLabel` instance.
/// It exposes methods that can operate on this data type through `EditableLabelProtocol` conformance.
/// Use `EditableLabelRef` only as an `unowned` reference to an existing `GtkEditableLabel` instance.
///
public struct EditableLabelRef: EditableLabelProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EditableLabelProtocol>(_ other: T) -> EditableLabelRef { EditableLabelRef(other) }

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

/// A `GtkEditableLabel` is a label that allows users to
/// edit the text by switching to an “edit mode”.
/// 
/// ![An example GtkEditableLabel](editable-label.png)
/// 
/// `GtkEditableLabel` does not have API of its own, but it
/// implements the [iface`Gtk.Editable`] interface.
/// 
/// The default bindings for activating the edit mode is
/// to click or press the Enter key. The default bindings
/// for leaving the edit mode are the Enter key (to save
/// the results) or the Escape key (to cancel the editing).
/// 
/// # CSS nodes
/// 
/// ```
/// editablelabel[.editing]
/// ╰── stack
///     ├── label
///     ╰── text
/// ```
/// 
/// `GtkEditableLabel` has a main node with the name editablelabel.
/// When the entry is in editing mode, it gets the .editing style
/// class.
/// 
/// For all the subnodes added to the text node in various situations,
/// see [class`Gtk.Text`].
///
/// The `EditableLabel` type acts as a reference-counted owner of an underlying `GtkEditableLabel` instance.
/// It provides the methods that can operate on this data type through `EditableLabelProtocol` conformance.
/// Use `EditableLabel` as a strong reference or owner of a `GtkEditableLabel` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum EditableLabelPropertyName: String, PropertyNameProtocol {
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
    /// This property is `true` while the widget is in edit mode.
    case editing = "editing"
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
    /// This property is `true` while the widget is in edit mode.
    case notifyEditing = "notify::editing"
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

// MARK: EditableLabel has no signals
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

    /// Switches the label out of “editing mode”.
    /// 
    /// If `commit` is `true`, the resulting text is kept as the
    /// [property`Gtk.Editable:text`] property value, otherwise the
    /// resulting text is discarded and the label will keep its
    /// previous [property`Gtk.Editable:text`] property value.
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



