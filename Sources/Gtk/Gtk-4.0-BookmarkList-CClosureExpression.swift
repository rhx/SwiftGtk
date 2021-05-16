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

// MARK: - BookmarkList Class

/// The `BookmarkListProtocol` protocol exposes the methods and properties of an underlying `GtkBookmarkList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BookmarkList`.
/// Alternatively, use `BookmarkListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkBookmarkList` is a list model that wraps `GBookmarkFile`.
/// 
/// It presents a `GListModel` and fills it asynchronously with the
/// `GFileInfo`s returned from that function.
/// 
/// The `GFileInfo`s in the list have some attributes in the recent
/// namespace added: `recent`private`` (boolean) and `recent:applications`
/// (stringv).
public protocol BookmarkListProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol {
        /// Untyped pointer to the underlying `GtkBookmarkList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBookmarkList` instance.
    var bookmark_list_ptr: UnsafeMutablePointer<GtkBookmarkList>! { get }

    /// Required Initialiser for types conforming to `BookmarkListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BookmarkListRef` type acts as a lightweight Swift reference to an underlying `GtkBookmarkList` instance.
/// It exposes methods that can operate on this data type through `BookmarkListProtocol` conformance.
/// Use `BookmarkListRef` only as an `unowned` reference to an existing `GtkBookmarkList` instance.
///
/// `GtkBookmarkList` is a list model that wraps `GBookmarkFile`.
/// 
/// It presents a `GListModel` and fills it asynchronously with the
/// `GFileInfo`s returned from that function.
/// 
/// The `GFileInfo`s in the list have some attributes in the recent
/// namespace added: `recent`private`` (boolean) and `recent:applications`
/// (stringv).
public struct BookmarkListRef: BookmarkListProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBookmarkList` instance.
    /// For type-safe access, use the generated, typed pointer `bookmark_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BookmarkListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBookmarkList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBookmarkList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBookmarkList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBookmarkList>?) {
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

    /// Reference intialiser for a related type that implements `BookmarkListProtocol`
    @inlinable init<T: BookmarkListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BookmarkListProtocol>(_ other: T) -> BookmarkListRef { BookmarkListRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkBookmarkList` with the given `attributes`.
    @inlinable init( filename: UnsafePointer<CChar>? = nil, attributes: UnsafePointer<CChar>? = nil) {
        let rv = gtk_bookmark_list_new(filename, attributes)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `BookmarkList` type acts as a reference-counted owner of an underlying `GtkBookmarkList` instance.
/// It provides the methods that can operate on this data type through `BookmarkListProtocol` conformance.
/// Use `BookmarkList` as a strong reference or owner of a `GtkBookmarkList` instance.
///
/// `GtkBookmarkList` is a list model that wraps `GBookmarkFile`.
/// 
/// It presents a `GListModel` and fills it asynchronously with the
/// `GFileInfo`s returned from that function.
/// 
/// The `GFileInfo`s in the list have some attributes in the recent
/// namespace added: `recent`private`` (boolean) and `recent:applications`
/// (stringv).
open class BookmarkList: GLibObject.Object, BookmarkListProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBookmarkList>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBookmarkList>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBookmarkList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBookmarkList>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBookmarkList`.
    /// i.e., ownership is transferred to the `BookmarkList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBookmarkList>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BookmarkListProtocol`
    /// Will retain `GtkBookmarkList`.
    /// - Parameter other: an instance of a related type that implements `BookmarkListProtocol`
    @inlinable public init<T: BookmarkListProtocol>(bookmarkList other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkBookmarkList` with the given `attributes`.
    @inlinable public init( filename: UnsafePointer<CChar>? = nil, attributes: UnsafePointer<CChar>? = nil) {
        let rv = gtk_bookmark_list_new(filename, attributes)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum BookmarkListPropertyName: String, PropertyNameProtocol {
    /// The attributes to query.
    case attributes = "attributes"
    /// The bookmark file to load.
    case String = "filename"
    /// Priority used when loading.
    case ioPriority = "io-priority"
    /// `true` if files are being loaded.
    case loading = "loading"
}

public extension BookmarkListProtocol {
    /// Bind a `BookmarkListPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BookmarkListPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a BookmarkList property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BookmarkListPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a BookmarkList property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BookmarkListPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BookmarkListSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// The attributes to query.
    case notifyAttributes = "notify::attributes"
    /// The bookmark file to load.
    case notifyFilename = "notify::filename"
    /// Priority used when loading.
    case notifyIoPriority = "notify::io-priority"
    /// `true` if files are being loaded.
    case notifyLoading = "notify::loading"
}

// MARK: BookmarkList has no signals
// MARK: BookmarkList Class: BookmarkListProtocol extension (methods and fields)
public extension BookmarkListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBookmarkList` instance.
    @inlinable var bookmark_list_ptr: UnsafeMutablePointer<GtkBookmarkList>! { return ptr?.assumingMemoryBound(to: GtkBookmarkList.self) }

    /// Gets the attributes queried on the children.
    @inlinable func getAttributes() -> String! {
        let rv = gtk_bookmark_list_get_attributes(bookmark_list_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the filename of the bookmark file that
    /// this list is loading.
    @inlinable func getFilename() -> String! {
        let rv = gtk_bookmark_list_get_filename(bookmark_list_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the IO priority to use while loading file.
    @inlinable func getIoPriority() -> Int {
        let rv = Int(gtk_bookmark_list_get_io_priority(bookmark_list_ptr))
        return rv
    }

    /// Sets the `attributes` to be enumerated and starts the enumeration.
    /// 
    /// If `attributes` is `nil`, no attributes will be queried, but a list
    /// of `GFileInfos` will still be created.
    @inlinable func set(attributes: UnsafePointer<CChar>? = nil) {
        gtk_bookmark_list_set_attributes(bookmark_list_ptr, attributes)
    
    }

    /// Sets the IO priority to use while loading files.
    /// 
    /// The default IO priority is `G_PRIORITY_DEFAULT`.
    @inlinable func set(ioPriority: Int) {
        gtk_bookmark_list_set_io_priority(bookmark_list_ptr, gint(ioPriority))
    
    }
    /// The attributes to query.
    @inlinable var attributes: String! {
        /// Gets the attributes queried on the children.
        get {
            let rv = gtk_bookmark_list_get_attributes(bookmark_list_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the `attributes` to be enumerated and starts the enumeration.
        /// 
        /// If `attributes` is `nil`, no attributes will be queried, but a list
        /// of `GFileInfos` will still be created.
        nonmutating set {
            gtk_bookmark_list_set_attributes(bookmark_list_ptr, newValue)
        }
    }

    /// The bookmark file to load.
    @inlinable var filename: String! {
        /// Returns the filename of the bookmark file that
        /// this list is loading.
        get {
            let rv = gtk_bookmark_list_get_filename(bookmark_list_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the IO priority to use while loading file.
    @inlinable var ioPriority: Int {
        /// Gets the IO priority to use while loading file.
        get {
            let rv = Int(gtk_bookmark_list_get_io_priority(bookmark_list_ptr))
            return rv
        }
        /// Sets the IO priority to use while loading files.
        /// 
        /// The default IO priority is `G_PRIORITY_DEFAULT`.
        nonmutating set {
            gtk_bookmark_list_set_io_priority(bookmark_list_ptr, gint(newValue))
        }
    }

    /// Returns `true` if the files are currently being loaded.
    /// 
    /// Files will be added to `self` from time to time while loading is
    /// going on. The order in which are added is undefined and may change
    /// in between runs.
    @inlinable var isLoading: Bool {
        /// Returns `true` if the files are currently being loaded.
        /// 
        /// Files will be added to `self` from time to time while loading is
        /// going on. The order in which are added is undefined and may change
        /// in between runs.
        get {
            let rv = ((gtk_bookmark_list_is_loading(bookmark_list_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - BoolFilter Class

/// The `BoolFilterProtocol` protocol exposes the methods and properties of an underlying `GtkBoolFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoolFilter`.
/// Alternatively, use `BoolFilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkBoolFilter` evaluates a boolean `GtkExpression`
/// to determine whether to include items.
public protocol BoolFilterProtocol: FilterProtocol {
        /// Untyped pointer to the underlying `GtkBoolFilter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBoolFilter` instance.
    var bool_filter_ptr: UnsafeMutablePointer<GtkBoolFilter>! { get }

    /// Required Initialiser for types conforming to `BoolFilterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BoolFilterRef` type acts as a lightweight Swift reference to an underlying `GtkBoolFilter` instance.
/// It exposes methods that can operate on this data type through `BoolFilterProtocol` conformance.
/// Use `BoolFilterRef` only as an `unowned` reference to an existing `GtkBoolFilter` instance.
///
/// `GtkBoolFilter` evaluates a boolean `GtkExpression`
/// to determine whether to include items.
public struct BoolFilterRef: BoolFilterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBoolFilter` instance.
    /// For type-safe access, use the generated, typed pointer `bool_filter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoolFilterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBoolFilter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBoolFilter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBoolFilter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBoolFilter>?) {
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

    /// Reference intialiser for a related type that implements `BoolFilterProtocol`
    @inlinable init<T: BoolFilterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BoolFilterProtocol>(_ other: T) -> BoolFilterRef { BoolFilterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new bool filter.
    @inlinable init<ExpressionT: ExpressionProtocol>( expression: ExpressionT?) {
        let rv = gtk_bool_filter_new(expression?.expression_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `BoolFilter` type acts as a reference-counted owner of an underlying `GtkBoolFilter` instance.
/// It provides the methods that can operate on this data type through `BoolFilterProtocol` conformance.
/// Use `BoolFilter` as a strong reference or owner of a `GtkBoolFilter` instance.
///
/// `GtkBoolFilter` evaluates a boolean `GtkExpression`
/// to determine whether to include items.
open class BoolFilter: Filter, BoolFilterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoolFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBoolFilter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoolFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBoolFilter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoolFilter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoolFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoolFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBoolFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoolFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBoolFilter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBoolFilter`.
    /// i.e., ownership is transferred to the `BoolFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBoolFilter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BoolFilterProtocol`
    /// Will retain `GtkBoolFilter`.
    /// - Parameter other: an instance of a related type that implements `BoolFilterProtocol`
    @inlinable public init<T: BoolFilterProtocol>(boolFilter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new bool filter.
    @inlinable public init<ExpressionT: ExpressionProtocol>( expression: ExpressionT?) {
        let rv = gtk_bool_filter_new(expression?.expression_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum BoolFilterPropertyName: String, PropertyNameProtocol {
    /// The boolean expression to evaluate on item.
    case expression = "expression"
    /// If the expression result should be inverted.
    case invert = "invert"
}

public extension BoolFilterProtocol {
    /// Bind a `BoolFilterPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BoolFilterPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a BoolFilter property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BoolFilterPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a BoolFilter property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BoolFilterPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BoolFilterSignalName: String, SignalNameProtocol {
    /// Emitted whenever the filter changed.
    /// 
    /// Users of the filter should then check items again via
    /// [method`Gtk.Filter.match`].
    /// 
    /// `GtkFilterListModel` handles this signal automatically.
    /// 
    /// Depending on the `change` parameter, not all items need
    /// to be checked, but only some. Refer to the [enum`Gtk.FilterChange`]
    /// documentation for details.
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
    /// The boolean expression to evaluate on item.
    case notifyExpression = "notify::expression"
    /// If the expression result should be inverted.
    case notifyInvert = "notify::invert"
}

// MARK: BoolFilter has no signals
// MARK: BoolFilter Class: BoolFilterProtocol extension (methods and fields)
public extension BoolFilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoolFilter` instance.
    @inlinable var bool_filter_ptr: UnsafeMutablePointer<GtkBoolFilter>! { return ptr?.assumingMemoryBound(to: GtkBoolFilter.self) }

    /// Gets the expression that the filter uses to evaluate if
    /// an item should be filtered.
    @inlinable func getExpression() -> ExpressionRef! {
        let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_bool_filter_get_expression(bool_filter_ptr)))
        return rv
    }

    /// Returns whether the filter inverts the expression.
    @inlinable func getInvert() -> Bool {
        let rv = ((gtk_bool_filter_get_invert(bool_filter_ptr)) != 0)
        return rv
    }

    /// Sets the expression that the filter uses to check if items
    /// should be filtered.
    /// 
    /// The expression must have a value type of `G_TYPE_BOOLEAN`.
    @inlinable func set(expression: ExpressionRef? = nil) {
        gtk_bool_filter_set_expression(bool_filter_ptr, expression?.expression_ptr)
    
    }
    /// Sets the expression that the filter uses to check if items
    /// should be filtered.
    /// 
    /// The expression must have a value type of `G_TYPE_BOOLEAN`.
    @inlinable func set<ExpressionT: ExpressionProtocol>(expression: ExpressionT?) {
        gtk_bool_filter_set_expression(bool_filter_ptr, expression?.expression_ptr)
    
    }

    /// Sets whether the filter should invert the expression.
    @inlinable func set(invert: Bool) {
        gtk_bool_filter_set_invert(bool_filter_ptr, gboolean((invert) ? 1 : 0))
    
    }
    /// The boolean expression to evaluate on item.
    @inlinable var expression: ExpressionRef! {
        /// Gets the expression that the filter uses to evaluate if
        /// an item should be filtered.
        get {
            let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_bool_filter_get_expression(bool_filter_ptr)))
            return rv
        }
        /// Sets the expression that the filter uses to check if items
        /// should be filtered.
        /// 
        /// The expression must have a value type of `G_TYPE_BOOLEAN`.
        nonmutating set {
            gtk_bool_filter_set_expression(bool_filter_ptr, UnsafeMutablePointer<GtkExpression>(newValue?.expression_ptr))
        }
    }

    /// If the expression result should be inverted.
    @inlinable var invert: Bool {
        /// Returns whether the filter inverts the expression.
        get {
            let rv = ((gtk_bool_filter_get_invert(bool_filter_ptr)) != 0)
            return rv
        }
        /// Sets whether the filter should invert the expression.
        nonmutating set {
            gtk_bool_filter_set_invert(bool_filter_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - Box Class

/// The `BoxProtocol` protocol exposes the methods and properties of an underlying `GtkBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Box`.
/// Alternatively, use `BoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkBox` widget arranges child widgets into a single row or column.
/// 
/// ![An example GtkBox](box.png)
/// 
/// Whether it is a row or column depends on the value of its
/// [property`Gtk.Orientable:orientation`] property. Within the other
/// dimension, all children are allocated the same size. Of course, the
/// [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`] properties
/// can be used on the children to influence their allocation.
/// 
/// Use repeated calls to [method`Gtk.Box.append`] to pack widgets into a
/// `GtkBox` from start to end. Use [method`Gtk.Box.remove`] to remove widgets
/// from the `GtkBox`. [method`Gtk.Box.insert_child_after`] can be used to add
/// a child at a particular position.
/// 
/// Use [method`Gtk.Box.set_homogeneous`] to specify whether or not all children
/// of the `GtkBox` are forced to get the same amount of space.
/// 
/// Use [method`Gtk.Box.set_spacing`] to determine how much space will be minimally
/// placed between all children in the `GtkBox`. Note that spacing is added
/// *between* the children.
/// 
/// Use [method`Gtk.Box.reorder_child_after`] to move a child to a different
/// place in the box.
/// 
/// # CSS nodes
/// 
/// `GtkBox` uses a single CSS node with name box.
/// 
/// # Accessibility
/// 
/// `GtkBox` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public protocol BoxProtocol: WidgetProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBox` instance.
    var box_ptr: UnsafeMutablePointer<GtkBox>! { get }

    /// Required Initialiser for types conforming to `BoxProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BoxRef` type acts as a lightweight Swift reference to an underlying `GtkBox` instance.
/// It exposes methods that can operate on this data type through `BoxProtocol` conformance.
/// Use `BoxRef` only as an `unowned` reference to an existing `GtkBox` instance.
///
/// The `GtkBox` widget arranges child widgets into a single row or column.
/// 
/// ![An example GtkBox](box.png)
/// 
/// Whether it is a row or column depends on the value of its
/// [property`Gtk.Orientable:orientation`] property. Within the other
/// dimension, all children are allocated the same size. Of course, the
/// [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`] properties
/// can be used on the children to influence their allocation.
/// 
/// Use repeated calls to [method`Gtk.Box.append`] to pack widgets into a
/// `GtkBox` from start to end. Use [method`Gtk.Box.remove`] to remove widgets
/// from the `GtkBox`. [method`Gtk.Box.insert_child_after`] can be used to add
/// a child at a particular position.
/// 
/// Use [method`Gtk.Box.set_homogeneous`] to specify whether or not all children
/// of the `GtkBox` are forced to get the same amount of space.
/// 
/// Use [method`Gtk.Box.set_spacing`] to determine how much space will be minimally
/// placed between all children in the `GtkBox`. Note that spacing is added
/// *between* the children.
/// 
/// Use [method`Gtk.Box.reorder_child_after`] to move a child to a different
/// place in the box.
/// 
/// # CSS nodes
/// 
/// `GtkBox` uses a single CSS node with name box.
/// 
/// # Accessibility
/// 
/// `GtkBox` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public struct BoxRef: BoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBox` instance.
    /// For type-safe access, use the generated, typed pointer `box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBox>?) {
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

    /// Reference intialiser for a related type that implements `BoxProtocol`
    @inlinable init<T: BoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BoxProtocol>(_ other: T) -> BoxRef { BoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkBox`.
    @inlinable init( orientation: GtkOrientation, spacing: Int) {
        let rv = gtk_box_new(orientation, gint(spacing))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Box` type acts as a reference-counted owner of an underlying `GtkBox` instance.
/// It provides the methods that can operate on this data type through `BoxProtocol` conformance.
/// Use `Box` as a strong reference or owner of a `GtkBox` instance.
///
/// The `GtkBox` widget arranges child widgets into a single row or column.
/// 
/// ![An example GtkBox](box.png)
/// 
/// Whether it is a row or column depends on the value of its
/// [property`Gtk.Orientable:orientation`] property. Within the other
/// dimension, all children are allocated the same size. Of course, the
/// [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`] properties
/// can be used on the children to influence their allocation.
/// 
/// Use repeated calls to [method`Gtk.Box.append`] to pack widgets into a
/// `GtkBox` from start to end. Use [method`Gtk.Box.remove`] to remove widgets
/// from the `GtkBox`. [method`Gtk.Box.insert_child_after`] can be used to add
/// a child at a particular position.
/// 
/// Use [method`Gtk.Box.set_homogeneous`] to specify whether or not all children
/// of the `GtkBox` are forced to get the same amount of space.
/// 
/// Use [method`Gtk.Box.set_spacing`] to determine how much space will be minimally
/// placed between all children in the `GtkBox`. Note that spacing is added
/// *between* the children.
/// 
/// Use [method`Gtk.Box.reorder_child_after`] to move a child to a different
/// place in the box.
/// 
/// # CSS nodes
/// 
/// `GtkBox` uses a single CSS node with name box.
/// 
/// # Accessibility
/// 
/// `GtkBox` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
open class Box: Widget, BoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBox`.
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BoxProtocol`
    /// Will retain `GtkBox`.
    /// - Parameter other: an instance of a related type that implements `BoxProtocol`
    @inlinable public init<T: BoxProtocol>(box other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkBox`.
    @inlinable public init( orientation: GtkOrientation, spacing: Int) {
        let rv = gtk_box_new(orientation, gint(spacing))
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum BoxPropertyName: String, PropertyNameProtocol {
    /// The position of the baseline aligned widgets if extra space is available.
    case baselinePosition = "baseline-position"
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
    /// Whether the children should all be the same size.
    case homogeneous = "homogeneous"
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
    /// The amount of space between children.
    case spacing = "spacing"
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

public extension BoxProtocol {
    /// Bind a `BoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Box property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Box property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BoxSignalName: String, SignalNameProtocol {
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
    /// The position of the baseline aligned widgets if extra space is available.
    case notifyBaselinePosition = "notify::baseline-position"
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
    /// Whether the children should all be the same size.
    case notifyHomogeneous = "notify::homogeneous"
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
    /// The amount of space between children.
    case notifySpacing = "notify::spacing"
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

// MARK: Box has no signals
// MARK: Box Class: BoxProtocol extension (methods and fields)
public extension BoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBox` instance.
    @inlinable var box_ptr: UnsafeMutablePointer<GtkBox>! { return ptr?.assumingMemoryBound(to: GtkBox.self) }

    /// Adds `child` as the last child to `box`.
    @inlinable func append<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_box_append(box_ptr, child.widget_ptr)
    
    }

    /// Gets the value set by `gtk_box_set_baseline_position()`.
    @inlinable func getBaselinePosition() -> GtkBaselinePosition {
        let rv = gtk_box_get_baseline_position(box_ptr)
        return rv
    }

    /// Returns whether the box is homogeneous (all children are the
    /// same size).
    @inlinable func getHomogeneous() -> Bool {
        let rv = ((gtk_box_get_homogeneous(box_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_box_set_spacing()`.
    @inlinable func getSpacing() -> Int {
        let rv = Int(gtk_box_get_spacing(box_ptr))
        return rv
    }

    /// Inserts `child` in the position after `sibling` in the list
    /// of `box` children.
    /// 
    /// If `sibling` is `nil`, insert `child` at the first position.
    @inlinable func insertChildAfter<WidgetT: WidgetProtocol>(child: WidgetT, sibling: WidgetT?) {
        gtk_box_insert_child_after(box_ptr, child.widget_ptr, sibling?.widget_ptr)
    
    }

    /// Adds `child` as the first child to `box`.
    @inlinable func prepend<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_box_prepend(box_ptr, child.widget_ptr)
    
    }

    /// Removes a child widget from `box`.
    /// 
    /// The child must have been added before with
    /// [method`Gtk.Box.append`], [method`Gtk.Box.prepend`], or
    /// [method`Gtk.Box.insert_child_after`].
    @inlinable func remove<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_box_remove(box_ptr, child.widget_ptr)
    
    }

    /// Moves `child` to the position after `sibling` in the list
    /// of `box` children.
    /// 
    /// If `sibling` is `nil`, move `child` to the first position.
    @inlinable func reorderChildAfter<WidgetT: WidgetProtocol>(child: WidgetT, sibling: WidgetT?) {
        gtk_box_reorder_child_after(box_ptr, child.widget_ptr, sibling?.widget_ptr)
    
    }

    /// Sets the baseline position of a box.
    /// 
    /// This affects only horizontal boxes with at least one baseline
    /// aligned child. If there is more vertical space available than
    /// requested, and the baseline is not allocated by the parent then
    /// `position` is used to allocate the baseline with respect to the
    /// extra space available.
    @inlinable func setBaseline(position: GtkBaselinePosition) {
        gtk_box_set_baseline_position(box_ptr, position)
    
    }

    /// Sets whether or not all children of `box` are given equal space
    /// in the box.
    @inlinable func set(homogeneous: Bool) {
        gtk_box_set_homogeneous(box_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets the number of pixels to place between children of `box`.
    @inlinable func set(spacing: Int) {
        gtk_box_set_spacing(box_ptr, gint(spacing))
    
    }
    /// Gets the value set by `gtk_box_set_baseline_position()`.
    @inlinable var baselinePosition: GtkBaselinePosition {
        /// Gets the value set by `gtk_box_set_baseline_position()`.
        get {
            let rv = gtk_box_get_baseline_position(box_ptr)
            return rv
        }
        /// Sets the baseline position of a box.
        /// 
        /// This affects only horizontal boxes with at least one baseline
        /// aligned child. If there is more vertical space available than
        /// requested, and the baseline is not allocated by the parent then
        /// `position` is used to allocate the baseline with respect to the
        /// extra space available.
        nonmutating set {
            gtk_box_set_baseline_position(box_ptr, newValue)
        }
    }

    /// Whether the children should all be the same size.
    @inlinable var homogeneous: Bool {
        /// Returns whether the box is homogeneous (all children are the
        /// same size).
        get {
            let rv = ((gtk_box_get_homogeneous(box_ptr)) != 0)
            return rv
        }
        /// Sets whether or not all children of `box` are given equal space
        /// in the box.
        nonmutating set {
            gtk_box_set_homogeneous(box_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The amount of space between children.
    @inlinable var spacing: Int {
        /// Gets the value set by `gtk_box_set_spacing()`.
        get {
            let rv = Int(gtk_box_get_spacing(box_ptr))
            return rv
        }
        /// Sets the number of pixels to place between children of `box`.
        nonmutating set {
            gtk_box_set_spacing(box_ptr, gint(newValue))
        }
    }

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = box_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - BoxLayout Class

/// The `BoxLayoutProtocol` protocol exposes the methods and properties of an underlying `GtkBoxLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoxLayout`.
/// Alternatively, use `BoxLayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkBoxLayout` is a layout manager that arranges children in a single
/// row or column.
/// 
/// Whether it is a row or column depends on the value of its
/// [property`Gtk.Orientable:orientation`] property. Within the other dimension
/// all children all allocated the same size. The `GtkBoxLayout` will respect
/// the [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties of each child widget.
/// 
/// If you want all children to be assigned the same size, you can use
/// the [property`Gtk.BoxLayout:homogeneous`] property.
/// 
/// If you want to specify the amount of space placed between each child,
/// you can use the [property`Gtk.BoxLayout:spacing`] property.
public protocol BoxLayoutProtocol: LayoutManagerProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkBoxLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBoxLayout` instance.
    var box_layout_ptr: UnsafeMutablePointer<GtkBoxLayout>! { get }

    /// Required Initialiser for types conforming to `BoxLayoutProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BoxLayoutRef` type acts as a lightweight Swift reference to an underlying `GtkBoxLayout` instance.
/// It exposes methods that can operate on this data type through `BoxLayoutProtocol` conformance.
/// Use `BoxLayoutRef` only as an `unowned` reference to an existing `GtkBoxLayout` instance.
///
/// `GtkBoxLayout` is a layout manager that arranges children in a single
/// row or column.
/// 
/// Whether it is a row or column depends on the value of its
/// [property`Gtk.Orientable:orientation`] property. Within the other dimension
/// all children all allocated the same size. The `GtkBoxLayout` will respect
/// the [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties of each child widget.
/// 
/// If you want all children to be assigned the same size, you can use
/// the [property`Gtk.BoxLayout:homogeneous`] property.
/// 
/// If you want to specify the amount of space placed between each child,
/// you can use the [property`Gtk.BoxLayout:spacing`] property.
public struct BoxLayoutRef: BoxLayoutProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBoxLayout` instance.
    /// For type-safe access, use the generated, typed pointer `box_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoxLayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBoxLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBoxLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBoxLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBoxLayout>?) {
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

    /// Reference intialiser for a related type that implements `BoxLayoutProtocol`
    @inlinable init<T: BoxLayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BoxLayoutProtocol>(_ other: T) -> BoxLayoutRef { BoxLayoutRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkBoxLayout`.
    @inlinable init( orientation: GtkOrientation) {
        let rv = gtk_box_layout_new(orientation)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `BoxLayout` type acts as a reference-counted owner of an underlying `GtkBoxLayout` instance.
/// It provides the methods that can operate on this data type through `BoxLayoutProtocol` conformance.
/// Use `BoxLayout` as a strong reference or owner of a `GtkBoxLayout` instance.
///
/// `GtkBoxLayout` is a layout manager that arranges children in a single
/// row or column.
/// 
/// Whether it is a row or column depends on the value of its
/// [property`Gtk.Orientable:orientation`] property. Within the other dimension
/// all children all allocated the same size. The `GtkBoxLayout` will respect
/// the [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties of each child widget.
/// 
/// If you want all children to be assigned the same size, you can use
/// the [property`Gtk.BoxLayout:homogeneous`] property.
/// 
/// If you want to specify the amount of space placed between each child,
/// you can use the [property`Gtk.BoxLayout:spacing`] property.
open class BoxLayout: LayoutManager, BoxLayoutProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoxLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBoxLayout>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoxLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBoxLayout>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoxLayout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoxLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoxLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBoxLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BoxLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBoxLayout>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBoxLayout`.
    /// i.e., ownership is transferred to the `BoxLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBoxLayout>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BoxLayoutProtocol`
    /// Will retain `GtkBoxLayout`.
    /// - Parameter other: an instance of a related type that implements `BoxLayoutProtocol`
    @inlinable public init<T: BoxLayoutProtocol>(boxLayout other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkBoxLayout`.
    @inlinable public init( orientation: GtkOrientation) {
        let rv = gtk_box_layout_new(orientation)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum BoxLayoutPropertyName: String, PropertyNameProtocol {
    /// The position of the allocated baseline within the extra space
    /// allocated to each child.
    /// 
    /// This property is only relevant for horizontal layouts containing
    /// at least one child with a baseline alignment.
    case baselinePosition = "baseline-position"
    /// Whether the box layout should distribute the available space
    /// equally among the children.
    case homogeneous = "homogeneous"
    /// The space to put between the children.
    case spacing = "spacing"
}

public extension BoxLayoutProtocol {
    /// Bind a `BoxLayoutPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BoxLayoutPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a BoxLayout property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BoxLayoutPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a BoxLayout property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BoxLayoutPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BoxLayoutSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// The position of the allocated baseline within the extra space
    /// allocated to each child.
    /// 
    /// This property is only relevant for horizontal layouts containing
    /// at least one child with a baseline alignment.
    case notifyBaselinePosition = "notify::baseline-position"
    /// Whether the box layout should distribute the available space
    /// equally among the children.
    case notifyHomogeneous = "notify::homogeneous"
    /// The space to put between the children.
    case notifySpacing = "notify::spacing"
}

// MARK: BoxLayout has no signals
// MARK: BoxLayout Class: BoxLayoutProtocol extension (methods and fields)
public extension BoxLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoxLayout` instance.
    @inlinable var box_layout_ptr: UnsafeMutablePointer<GtkBoxLayout>! { return ptr?.assumingMemoryBound(to: GtkBoxLayout.self) }

    /// Gets the value set by `gtk_box_layout_set_baseline_position()`.
    @inlinable func getBaselinePosition() -> GtkBaselinePosition {
        let rv = gtk_box_layout_get_baseline_position(box_layout_ptr)
        return rv
    }

    /// Returns whether the layout is set to be homogeneous.
    @inlinable func getHomogeneous() -> Bool {
        let rv = ((gtk_box_layout_get_homogeneous(box_layout_ptr)) != 0)
        return rv
    }

    /// Returns the space that `box_layout` puts between children.
    @inlinable func getSpacing() -> Int {
        let rv = Int(gtk_box_layout_get_spacing(box_layout_ptr))
        return rv
    }

    /// Sets the baseline position of a box layout.
    /// 
    /// The baseline position affects only horizontal boxes with at least one
    /// baseline aligned child. If there is more vertical space available than
    /// requested, and the baseline is not allocated by the parent then the
    /// given `position` is used to allocate the baseline within the extra
    /// space available.
    @inlinable func setBaseline(position: GtkBaselinePosition) {
        gtk_box_layout_set_baseline_position(box_layout_ptr, position)
    
    }

    /// Sets whether the box layout will allocate the same
    /// size to all children.
    @inlinable func set(homogeneous: Bool) {
        gtk_box_layout_set_homogeneous(box_layout_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets how much spacing to put between children.
    @inlinable func set(spacing: Int) {
        gtk_box_layout_set_spacing(box_layout_ptr, guint(spacing))
    
    }
    /// Gets the value set by `gtk_box_layout_set_baseline_position()`.
    @inlinable var baselinePosition: GtkBaselinePosition {
        /// Gets the value set by `gtk_box_layout_set_baseline_position()`.
        get {
            let rv = gtk_box_layout_get_baseline_position(box_layout_ptr)
            return rv
        }
        /// Sets the baseline position of a box layout.
        /// 
        /// The baseline position affects only horizontal boxes with at least one
        /// baseline aligned child. If there is more vertical space available than
        /// requested, and the baseline is not allocated by the parent then the
        /// given `position` is used to allocate the baseline within the extra
        /// space available.
        nonmutating set {
            gtk_box_layout_set_baseline_position(box_layout_ptr, newValue)
        }
    }

    /// Whether the box layout should distribute the available space
    /// equally among the children.
    @inlinable var homogeneous: Bool {
        /// Returns whether the layout is set to be homogeneous.
        get {
            let rv = ((gtk_box_layout_get_homogeneous(box_layout_ptr)) != 0)
            return rv
        }
        /// Sets whether the box layout will allocate the same
        /// size to all children.
        nonmutating set {
            gtk_box_layout_set_homogeneous(box_layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The space to put between the children.
    @inlinable var spacing: Int {
        /// Returns the space that `box_layout` puts between children.
        get {
            let rv = Int(gtk_box_layout_get_spacing(box_layout_ptr))
            return rv
        }
        /// Sets how much spacing to put between children.
        nonmutating set {
            gtk_box_layout_set_spacing(box_layout_ptr, guint(newValue))
        }
    }


}



// MARK: - Builder Class

/// The `BuilderProtocol` protocol exposes the methods and properties of an underlying `GtkBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Builder`.
/// Alternatively, use `BuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkBuilder` reads XML descriptions of a user interface and
/// instantiates the described objects.
/// 
/// To create a `GtkBuilder` from a user interface description, call
/// [ctor`Gtk.Builder.new_from_file`], [ctor`Gtk.Builder.new_from_resource`]
/// or [ctor`Gtk.Builder.new_from_string`].
/// 
/// In the (unusual) case that you want to add user interface
/// descriptions from multiple sources to the same `GtkBuilder` you can
/// call [ctor`Gtk.Builder.new`] to get an empty builder and populate it by
/// (multiple) calls to [method`Gtk.Builder.add_from_file`],
/// [method`Gtk.Builder.add_from_resource`] or
/// [method`Gtk.Builder.add_from_string`].
/// 
/// A `GtkBuilder` holds a reference to all objects that it has constructed
/// and drops these references when it is finalized. This finalization can
/// cause the destruction of non-widget objects or widgets which are not
/// contained in a toplevel window. For toplevel windows constructed by a
/// builder, it is the responsibility of the user to call
/// [method`Gtk.Window.destroy`] to get rid of them and all the widgets
/// they contain.
/// 
/// The functions [method`Gtk.Builder.get_object`] and
/// [method`Gtk.Builder.get_objects`] can be used to access the widgets in
/// the interface by the names assigned to them inside the UI description.
/// Toplevel windows returned by these functions will stay around until the
/// user explicitly destroys them with [method`Gtk.Window.destroy`]. Other
/// widgets will either be part of a larger hierarchy constructed by the
/// builder (in which case you should not have to worry about their lifecycle),
/// or without a parent, in which case they have to be added to some container
/// to make use of them. Non-widget objects need to be reffed with
/// `g_object_ref()` to keep them beyond the lifespan of the builder.
/// 
/// # GtkBuilder UI Definitions
/// 
/// `GtkBuilder` parses textual descriptions of user interfaces which are
/// specified in XML format. We refer to these descriptions as “GtkBuilder
/// UI definitions” or just “UI definitions” if the context is clear.
/// 
/// The toplevel element is `&lt;interface&gt;`. It optionally takes a “domain”
/// attribute, which will make the builder look for translated strings
/// using ``dgettext()`` in the domain specified. This can also be done by
/// calling [method`Gtk.Builder.set_translation_domain`] on the builder.
/// 
/// Objects are described by `&lt;object&gt;` elements, which can contain
/// `&lt;property&gt;` elements to set properties, `&lt;signal&gt;` elements which
/// connect signals to handlers, and `&lt;child&gt;` elements, which describe
/// child objects (most often widgets inside a container, but also e.g.
/// actions in an action group, or columns in a tree model). A `&lt;child&gt;`
/// element contains an `&lt;object&gt;` element which describes the child object.
/// 
/// The target toolkit `version(s)` are described by `&lt;requires&gt;` elements,
/// the “lib” attribute specifies the widget library in question (currently
/// the only supported value is “gtk”) and the “version” attribute specifies
/// the target version in the form “`&lt;major&gt;`.`&lt;minor&gt;`”. `GtkBuilder` will
/// error out if the version requirements are not met.
/// 
/// Typically, the specific kind of object represented by an `&lt;object&gt;`
/// element is specified by the “class” attribute. If the type has not
/// been loaded yet, GTK tries to find the ``get_type()`` function from the
/// class name by applying heuristics. This works in most cases, but if
/// necessary, it is possible to specify the name of the ``get_type()``
/// function explicitly with the "type-func" attribute.
/// 
/// Objects may be given a name with the “id” attribute, which allows the
/// application to retrieve them from the builder with
/// [method`Gtk.Builder.get_object`]. An id is also necessary to use the
/// object as property value in other parts of the UI definition. GTK
/// reserves ids starting and ending with `___` (three consecutive
/// underscores) for its own purposes.
/// 
/// Setting properties of objects is pretty straightforward with the
/// `&lt;property&gt;` element: the “name” attribute specifies the name of the
/// property, and the content of the element specifies the value.
/// If the “translatable” attribute is set to a true value, GTK uses
/// ``gettext()`` (or ``dgettext()`` if the builder has a translation domain set)
/// to find a translation for the value. This happens before the value
/// is parsed, so it can be used for properties of any type, but it is
/// probably most useful for string properties. It is also possible to
/// specify a context to disambiguate short strings, and comments which
/// may help the translators.
/// 
/// `GtkBuilder` can parse textual representations for the most common
/// property types: characters, strings, integers, floating-point numbers,
/// booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
/// as `true`, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
/// as `false`), enumerations (can be specified by their name, nick or
/// integer value), flags (can be specified by their name, nick, integer
/// value, optionally combined with “|”, e.g.
/// “GTK_INPUT_HINT_EMOJI|GTK_INPUT_HINT_LOWERCASE”)
/// and colors (in a format understood by [method`Gdk.RGBA.parse`]).
/// 
/// `GVariant`s can be specified in the format understood by
/// `g_variant_parse()`, and pixbufs can be specified as a filename of an
/// image file to load.
/// 
/// Objects can be referred to by their name and by default refer to
/// objects declared in the local XML fragment and objects exposed via
/// [method`Gtk.Builder.expose_object`]. In general, `GtkBuilder` allows
/// forward references to objects — declared in the local XML; an object
/// doesn’t have to be constructed before it can be referred to. The
/// exception to this rule is that an object has to be constructed before
/// it can be used as the value of a construct-only property.
/// 
/// It is also possible to bind a property value to another object's
/// property value using the attributes "bind-source" to specify the
/// source object of the binding, and optionally, "bind-property" and
/// "bind-flags" to specify the source property and source binding flags
/// respectively. Internally, `GtkBuilder` implements this using `GBinding`
/// objects. For more information see `g_object_bind_property()`.
/// 
/// Sometimes it is necessary to refer to widgets which have implicitly
/// been constructed by GTK as part of a composite widget, to set
/// properties on them or to add further children (e.g. the content area
/// of a `GtkDialog`). This can be achieved by setting the “internal-child”
/// property of the `&lt;child&gt;` element to a true value. Note that `GtkBuilder`
/// still requires an `&lt;object&gt;` element for the internal child, even if it
/// has already been constructed.
/// 
/// A number of widgets have different places where a child can be added
/// (e.g. tabs vs. page content in notebooks). This can be reflected in
/// a UI definition by specifying the “type” attribute on a `&lt;child&gt;`
/// The possible values for the “type” attribute are described in the
/// sections describing the widget-specific portions of UI definitions.
/// 
/// # Signal handlers and function pointers
/// 
/// Signal handlers are set up with the `&lt;signal&gt;` element. The “name”
/// attribute specifies the name of the signal, and the “handler” attribute
/// specifies the function to connect to the signal.
/// The remaining attributes, “after”, “swapped” and “object”, have the
/// same meaning as the corresponding parameters of the
/// `g_signal_connect_object()` or `g_signal_connect_data()` functions. A
/// “last_modification_time” attribute is also allowed, but it does not
/// have a meaning to the builder.
/// 
/// If you rely on `GModule` support to lookup callbacks in the symbol table,
/// the following details should be noted:
/// 
/// When compiling applications for Windows, you must declare signal callbacks
/// with `G_MODULE_EXPORT`, or they will not be put in the symbol table.
/// On Linux and Unix, this is not necessary; applications should instead
/// be compiled with the -Wl,--export-dynamic `CFLAGS`, and linked against
/// `gmodule-export-2.0`.
/// 
/// # A GtkBuilder UI Definition
/// 
/// ```xml
/// &lt;interface&gt;
///   &lt;object class="GtkDialog" id="dialog1"&gt;
///     &lt;child internal-child="vbox"&gt;
///       &lt;object class="GtkBox" id="vbox1"&gt;
///         &lt;child internal-child="action_area"&gt;
///           &lt;object class="GtkBox" id="hbuttonbox1"&gt;
///             &lt;child&gt;
///               &lt;object class="GtkButton" id="ok_button"&gt;
///                 &lt;property name="label"&gt;gtk-ok&lt;/property&gt;
///                 &lt;signal name="clicked" handler="ok_button_clicked"/&gt;
///               &lt;/object&gt;
///             &lt;/child&gt;
///           &lt;/object&gt;
///         &lt;/child&gt;
///       &lt;/object&gt;
///     &lt;/child&gt;
///   &lt;/object&gt;
/// &lt;/interface&gt;
/// ```
/// 
/// Beyond this general structure, several object classes define their
/// own XML DTD fragments for filling in the ANY placeholders in the DTD
/// above. Note that a custom element in a &lt;child&gt; element gets parsed by
/// the custom tag handler of the parent object, while a custom element in
/// an &lt;object&gt; element gets parsed by the custom tag handler of the object.
/// 
/// These XML fragments are explained in the documentation of the
/// respective objects.
/// 
/// A `&lt;template&gt;` tag can be used to define a widget class’s components.
/// See the [GtkWidget documentation](class.Widget.html`building-composite-widgets-from-template-xml`) for details.
public protocol BuilderProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkBuilder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilder` instance.
    var builder_ptr: UnsafeMutablePointer<GtkBuilder>! { get }

    /// Required Initialiser for types conforming to `BuilderProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuilderRef` type acts as a lightweight Swift reference to an underlying `GtkBuilder` instance.
/// It exposes methods that can operate on this data type through `BuilderProtocol` conformance.
/// Use `BuilderRef` only as an `unowned` reference to an existing `GtkBuilder` instance.
///
/// A `GtkBuilder` reads XML descriptions of a user interface and
/// instantiates the described objects.
/// 
/// To create a `GtkBuilder` from a user interface description, call
/// [ctor`Gtk.Builder.new_from_file`], [ctor`Gtk.Builder.new_from_resource`]
/// or [ctor`Gtk.Builder.new_from_string`].
/// 
/// In the (unusual) case that you want to add user interface
/// descriptions from multiple sources to the same `GtkBuilder` you can
/// call [ctor`Gtk.Builder.new`] to get an empty builder and populate it by
/// (multiple) calls to [method`Gtk.Builder.add_from_file`],
/// [method`Gtk.Builder.add_from_resource`] or
/// [method`Gtk.Builder.add_from_string`].
/// 
/// A `GtkBuilder` holds a reference to all objects that it has constructed
/// and drops these references when it is finalized. This finalization can
/// cause the destruction of non-widget objects or widgets which are not
/// contained in a toplevel window. For toplevel windows constructed by a
/// builder, it is the responsibility of the user to call
/// [method`Gtk.Window.destroy`] to get rid of them and all the widgets
/// they contain.
/// 
/// The functions [method`Gtk.Builder.get_object`] and
/// [method`Gtk.Builder.get_objects`] can be used to access the widgets in
/// the interface by the names assigned to them inside the UI description.
/// Toplevel windows returned by these functions will stay around until the
/// user explicitly destroys them with [method`Gtk.Window.destroy`]. Other
/// widgets will either be part of a larger hierarchy constructed by the
/// builder (in which case you should not have to worry about their lifecycle),
/// or without a parent, in which case they have to be added to some container
/// to make use of them. Non-widget objects need to be reffed with
/// `g_object_ref()` to keep them beyond the lifespan of the builder.
/// 
/// # GtkBuilder UI Definitions
/// 
/// `GtkBuilder` parses textual descriptions of user interfaces which are
/// specified in XML format. We refer to these descriptions as “GtkBuilder
/// UI definitions” or just “UI definitions” if the context is clear.
/// 
/// The toplevel element is `&lt;interface&gt;`. It optionally takes a “domain”
/// attribute, which will make the builder look for translated strings
/// using ``dgettext()`` in the domain specified. This can also be done by
/// calling [method`Gtk.Builder.set_translation_domain`] on the builder.
/// 
/// Objects are described by `&lt;object&gt;` elements, which can contain
/// `&lt;property&gt;` elements to set properties, `&lt;signal&gt;` elements which
/// connect signals to handlers, and `&lt;child&gt;` elements, which describe
/// child objects (most often widgets inside a container, but also e.g.
/// actions in an action group, or columns in a tree model). A `&lt;child&gt;`
/// element contains an `&lt;object&gt;` element which describes the child object.
/// 
/// The target toolkit `version(s)` are described by `&lt;requires&gt;` elements,
/// the “lib” attribute specifies the widget library in question (currently
/// the only supported value is “gtk”) and the “version” attribute specifies
/// the target version in the form “`&lt;major&gt;`.`&lt;minor&gt;`”. `GtkBuilder` will
/// error out if the version requirements are not met.
/// 
/// Typically, the specific kind of object represented by an `&lt;object&gt;`
/// element is specified by the “class” attribute. If the type has not
/// been loaded yet, GTK tries to find the ``get_type()`` function from the
/// class name by applying heuristics. This works in most cases, but if
/// necessary, it is possible to specify the name of the ``get_type()``
/// function explicitly with the "type-func" attribute.
/// 
/// Objects may be given a name with the “id” attribute, which allows the
/// application to retrieve them from the builder with
/// [method`Gtk.Builder.get_object`]. An id is also necessary to use the
/// object as property value in other parts of the UI definition. GTK
/// reserves ids starting and ending with `___` (three consecutive
/// underscores) for its own purposes.
/// 
/// Setting properties of objects is pretty straightforward with the
/// `&lt;property&gt;` element: the “name” attribute specifies the name of the
/// property, and the content of the element specifies the value.
/// If the “translatable” attribute is set to a true value, GTK uses
/// ``gettext()`` (or ``dgettext()`` if the builder has a translation domain set)
/// to find a translation for the value. This happens before the value
/// is parsed, so it can be used for properties of any type, but it is
/// probably most useful for string properties. It is also possible to
/// specify a context to disambiguate short strings, and comments which
/// may help the translators.
/// 
/// `GtkBuilder` can parse textual representations for the most common
/// property types: characters, strings, integers, floating-point numbers,
/// booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
/// as `true`, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
/// as `false`), enumerations (can be specified by their name, nick or
/// integer value), flags (can be specified by their name, nick, integer
/// value, optionally combined with “|”, e.g.
/// “GTK_INPUT_HINT_EMOJI|GTK_INPUT_HINT_LOWERCASE”)
/// and colors (in a format understood by [method`Gdk.RGBA.parse`]).
/// 
/// `GVariant`s can be specified in the format understood by
/// `g_variant_parse()`, and pixbufs can be specified as a filename of an
/// image file to load.
/// 
/// Objects can be referred to by their name and by default refer to
/// objects declared in the local XML fragment and objects exposed via
/// [method`Gtk.Builder.expose_object`]. In general, `GtkBuilder` allows
/// forward references to objects — declared in the local XML; an object
/// doesn’t have to be constructed before it can be referred to. The
/// exception to this rule is that an object has to be constructed before
/// it can be used as the value of a construct-only property.
/// 
/// It is also possible to bind a property value to another object's
/// property value using the attributes "bind-source" to specify the
/// source object of the binding, and optionally, "bind-property" and
/// "bind-flags" to specify the source property and source binding flags
/// respectively. Internally, `GtkBuilder` implements this using `GBinding`
/// objects. For more information see `g_object_bind_property()`.
/// 
/// Sometimes it is necessary to refer to widgets which have implicitly
/// been constructed by GTK as part of a composite widget, to set
/// properties on them or to add further children (e.g. the content area
/// of a `GtkDialog`). This can be achieved by setting the “internal-child”
/// property of the `&lt;child&gt;` element to a true value. Note that `GtkBuilder`
/// still requires an `&lt;object&gt;` element for the internal child, even if it
/// has already been constructed.
/// 
/// A number of widgets have different places where a child can be added
/// (e.g. tabs vs. page content in notebooks). This can be reflected in
/// a UI definition by specifying the “type” attribute on a `&lt;child&gt;`
/// The possible values for the “type” attribute are described in the
/// sections describing the widget-specific portions of UI definitions.
/// 
/// # Signal handlers and function pointers
/// 
/// Signal handlers are set up with the `&lt;signal&gt;` element. The “name”
/// attribute specifies the name of the signal, and the “handler” attribute
/// specifies the function to connect to the signal.
/// The remaining attributes, “after”, “swapped” and “object”, have the
/// same meaning as the corresponding parameters of the
/// `g_signal_connect_object()` or `g_signal_connect_data()` functions. A
/// “last_modification_time” attribute is also allowed, but it does not
/// have a meaning to the builder.
/// 
/// If you rely on `GModule` support to lookup callbacks in the symbol table,
/// the following details should be noted:
/// 
/// When compiling applications for Windows, you must declare signal callbacks
/// with `G_MODULE_EXPORT`, or they will not be put in the symbol table.
/// On Linux and Unix, this is not necessary; applications should instead
/// be compiled with the -Wl,--export-dynamic `CFLAGS`, and linked against
/// `gmodule-export-2.0`.
/// 
/// # A GtkBuilder UI Definition
/// 
/// ```xml
/// &lt;interface&gt;
///   &lt;object class="GtkDialog" id="dialog1"&gt;
///     &lt;child internal-child="vbox"&gt;
///       &lt;object class="GtkBox" id="vbox1"&gt;
///         &lt;child internal-child="action_area"&gt;
///           &lt;object class="GtkBox" id="hbuttonbox1"&gt;
///             &lt;child&gt;
///               &lt;object class="GtkButton" id="ok_button"&gt;
///                 &lt;property name="label"&gt;gtk-ok&lt;/property&gt;
///                 &lt;signal name="clicked" handler="ok_button_clicked"/&gt;
///               &lt;/object&gt;
///             &lt;/child&gt;
///           &lt;/object&gt;
///         &lt;/child&gt;
///       &lt;/object&gt;
///     &lt;/child&gt;
///   &lt;/object&gt;
/// &lt;/interface&gt;
/// ```
/// 
/// Beyond this general structure, several object classes define their
/// own XML DTD fragments for filling in the ANY placeholders in the DTD
/// above. Note that a custom element in a &lt;child&gt; element gets parsed by
/// the custom tag handler of the parent object, while a custom element in
/// an &lt;object&gt; element gets parsed by the custom tag handler of the object.
/// 
/// These XML fragments are explained in the documentation of the
/// respective objects.
/// 
/// A `&lt;template&gt;` tag can be used to define a widget class’s components.
/// See the [GtkWidget documentation](class.Widget.html`building-composite-widgets-from-template-xml`) for details.
public struct BuilderRef: BuilderProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilder>?) {
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

    /// Reference intialiser for a related type that implements `BuilderProtocol`
    @inlinable init<T: BuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BuilderProtocol>(_ other: T) -> BuilderRef { BuilderRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty builder object.
    /// 
    /// This function is only useful if you intend to make multiple calls
    /// to [method`Gtk.Builder.add_from_file`], [method`Gtk.Builder.add_from_resource`]
    /// or [method`Gtk.Builder.add_from_string`] in order to merge multiple UI
    /// descriptions into a single builder.
    @inlinable init() {
        let rv = gtk_builder_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Parses the UI definition in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted. You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable init(file filename: UnsafePointer<CChar>!) {
        let rv = gtk_builder_new_from_file(filename)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Parses the UI definition at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable init(resource resourcePath: UnsafePointer<CChar>!) {
        let rv = gtk_builder_new_from_resource(resourcePath)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Parses the UI definition in `string`.
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable init(string: UnsafePointer<CChar>!, length: gssize) {
        let rv = gtk_builder_new_from_string(string, length)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Parses the UI definition in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted. You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable static func newFrom(file filename: UnsafePointer<CChar>!) -> BuilderRef! {
        guard let rv = BuilderRef(gconstpointer: gconstpointer(gtk_builder_new_from_file(filename))) else { return nil }
        return rv
    }

    /// Parses the UI definition at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable static func newFrom(resource resourcePath: UnsafePointer<CChar>!) -> BuilderRef! {
        guard let rv = BuilderRef(gconstpointer: gconstpointer(gtk_builder_new_from_resource(resourcePath))) else { return nil }
        return rv
    }

    /// Parses the UI definition in `string`.
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable static func newFrom(string: UnsafePointer<CChar>!, length: gssize) -> BuilderRef! {
        guard let rv = BuilderRef(gconstpointer: gconstpointer(gtk_builder_new_from_string(string, length))) else { return nil }
        return rv
    }
}

/// The `Builder` type acts as a reference-counted owner of an underlying `GtkBuilder` instance.
/// It provides the methods that can operate on this data type through `BuilderProtocol` conformance.
/// Use `Builder` as a strong reference or owner of a `GtkBuilder` instance.
///
/// A `GtkBuilder` reads XML descriptions of a user interface and
/// instantiates the described objects.
/// 
/// To create a `GtkBuilder` from a user interface description, call
/// [ctor`Gtk.Builder.new_from_file`], [ctor`Gtk.Builder.new_from_resource`]
/// or [ctor`Gtk.Builder.new_from_string`].
/// 
/// In the (unusual) case that you want to add user interface
/// descriptions from multiple sources to the same `GtkBuilder` you can
/// call [ctor`Gtk.Builder.new`] to get an empty builder and populate it by
/// (multiple) calls to [method`Gtk.Builder.add_from_file`],
/// [method`Gtk.Builder.add_from_resource`] or
/// [method`Gtk.Builder.add_from_string`].
/// 
/// A `GtkBuilder` holds a reference to all objects that it has constructed
/// and drops these references when it is finalized. This finalization can
/// cause the destruction of non-widget objects or widgets which are not
/// contained in a toplevel window. For toplevel windows constructed by a
/// builder, it is the responsibility of the user to call
/// [method`Gtk.Window.destroy`] to get rid of them and all the widgets
/// they contain.
/// 
/// The functions [method`Gtk.Builder.get_object`] and
/// [method`Gtk.Builder.get_objects`] can be used to access the widgets in
/// the interface by the names assigned to them inside the UI description.
/// Toplevel windows returned by these functions will stay around until the
/// user explicitly destroys them with [method`Gtk.Window.destroy`]. Other
/// widgets will either be part of a larger hierarchy constructed by the
/// builder (in which case you should not have to worry about their lifecycle),
/// or without a parent, in which case they have to be added to some container
/// to make use of them. Non-widget objects need to be reffed with
/// `g_object_ref()` to keep them beyond the lifespan of the builder.
/// 
/// # GtkBuilder UI Definitions
/// 
/// `GtkBuilder` parses textual descriptions of user interfaces which are
/// specified in XML format. We refer to these descriptions as “GtkBuilder
/// UI definitions” or just “UI definitions” if the context is clear.
/// 
/// The toplevel element is `&lt;interface&gt;`. It optionally takes a “domain”
/// attribute, which will make the builder look for translated strings
/// using ``dgettext()`` in the domain specified. This can also be done by
/// calling [method`Gtk.Builder.set_translation_domain`] on the builder.
/// 
/// Objects are described by `&lt;object&gt;` elements, which can contain
/// `&lt;property&gt;` elements to set properties, `&lt;signal&gt;` elements which
/// connect signals to handlers, and `&lt;child&gt;` elements, which describe
/// child objects (most often widgets inside a container, but also e.g.
/// actions in an action group, or columns in a tree model). A `&lt;child&gt;`
/// element contains an `&lt;object&gt;` element which describes the child object.
/// 
/// The target toolkit `version(s)` are described by `&lt;requires&gt;` elements,
/// the “lib” attribute specifies the widget library in question (currently
/// the only supported value is “gtk”) and the “version” attribute specifies
/// the target version in the form “`&lt;major&gt;`.`&lt;minor&gt;`”. `GtkBuilder` will
/// error out if the version requirements are not met.
/// 
/// Typically, the specific kind of object represented by an `&lt;object&gt;`
/// element is specified by the “class” attribute. If the type has not
/// been loaded yet, GTK tries to find the ``get_type()`` function from the
/// class name by applying heuristics. This works in most cases, but if
/// necessary, it is possible to specify the name of the ``get_type()``
/// function explicitly with the "type-func" attribute.
/// 
/// Objects may be given a name with the “id” attribute, which allows the
/// application to retrieve them from the builder with
/// [method`Gtk.Builder.get_object`]. An id is also necessary to use the
/// object as property value in other parts of the UI definition. GTK
/// reserves ids starting and ending with `___` (three consecutive
/// underscores) for its own purposes.
/// 
/// Setting properties of objects is pretty straightforward with the
/// `&lt;property&gt;` element: the “name” attribute specifies the name of the
/// property, and the content of the element specifies the value.
/// If the “translatable” attribute is set to a true value, GTK uses
/// ``gettext()`` (or ``dgettext()`` if the builder has a translation domain set)
/// to find a translation for the value. This happens before the value
/// is parsed, so it can be used for properties of any type, but it is
/// probably most useful for string properties. It is also possible to
/// specify a context to disambiguate short strings, and comments which
/// may help the translators.
/// 
/// `GtkBuilder` can parse textual representations for the most common
/// property types: characters, strings, integers, floating-point numbers,
/// booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
/// as `true`, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
/// as `false`), enumerations (can be specified by their name, nick or
/// integer value), flags (can be specified by their name, nick, integer
/// value, optionally combined with “|”, e.g.
/// “GTK_INPUT_HINT_EMOJI|GTK_INPUT_HINT_LOWERCASE”)
/// and colors (in a format understood by [method`Gdk.RGBA.parse`]).
/// 
/// `GVariant`s can be specified in the format understood by
/// `g_variant_parse()`, and pixbufs can be specified as a filename of an
/// image file to load.
/// 
/// Objects can be referred to by their name and by default refer to
/// objects declared in the local XML fragment and objects exposed via
/// [method`Gtk.Builder.expose_object`]. In general, `GtkBuilder` allows
/// forward references to objects — declared in the local XML; an object
/// doesn’t have to be constructed before it can be referred to. The
/// exception to this rule is that an object has to be constructed before
/// it can be used as the value of a construct-only property.
/// 
/// It is also possible to bind a property value to another object's
/// property value using the attributes "bind-source" to specify the
/// source object of the binding, and optionally, "bind-property" and
/// "bind-flags" to specify the source property and source binding flags
/// respectively. Internally, `GtkBuilder` implements this using `GBinding`
/// objects. For more information see `g_object_bind_property()`.
/// 
/// Sometimes it is necessary to refer to widgets which have implicitly
/// been constructed by GTK as part of a composite widget, to set
/// properties on them or to add further children (e.g. the content area
/// of a `GtkDialog`). This can be achieved by setting the “internal-child”
/// property of the `&lt;child&gt;` element to a true value. Note that `GtkBuilder`
/// still requires an `&lt;object&gt;` element for the internal child, even if it
/// has already been constructed.
/// 
/// A number of widgets have different places where a child can be added
/// (e.g. tabs vs. page content in notebooks). This can be reflected in
/// a UI definition by specifying the “type” attribute on a `&lt;child&gt;`
/// The possible values for the “type” attribute are described in the
/// sections describing the widget-specific portions of UI definitions.
/// 
/// # Signal handlers and function pointers
/// 
/// Signal handlers are set up with the `&lt;signal&gt;` element. The “name”
/// attribute specifies the name of the signal, and the “handler” attribute
/// specifies the function to connect to the signal.
/// The remaining attributes, “after”, “swapped” and “object”, have the
/// same meaning as the corresponding parameters of the
/// `g_signal_connect_object()` or `g_signal_connect_data()` functions. A
/// “last_modification_time” attribute is also allowed, but it does not
/// have a meaning to the builder.
/// 
/// If you rely on `GModule` support to lookup callbacks in the symbol table,
/// the following details should be noted:
/// 
/// When compiling applications for Windows, you must declare signal callbacks
/// with `G_MODULE_EXPORT`, or they will not be put in the symbol table.
/// On Linux and Unix, this is not necessary; applications should instead
/// be compiled with the -Wl,--export-dynamic `CFLAGS`, and linked against
/// `gmodule-export-2.0`.
/// 
/// # A GtkBuilder UI Definition
/// 
/// ```xml
/// &lt;interface&gt;
///   &lt;object class="GtkDialog" id="dialog1"&gt;
///     &lt;child internal-child="vbox"&gt;
///       &lt;object class="GtkBox" id="vbox1"&gt;
///         &lt;child internal-child="action_area"&gt;
///           &lt;object class="GtkBox" id="hbuttonbox1"&gt;
///             &lt;child&gt;
///               &lt;object class="GtkButton" id="ok_button"&gt;
///                 &lt;property name="label"&gt;gtk-ok&lt;/property&gt;
///                 &lt;signal name="clicked" handler="ok_button_clicked"/&gt;
///               &lt;/object&gt;
///             &lt;/child&gt;
///           &lt;/object&gt;
///         &lt;/child&gt;
///       &lt;/object&gt;
///     &lt;/child&gt;
///   &lt;/object&gt;
/// &lt;/interface&gt;
/// ```
/// 
/// Beyond this general structure, several object classes define their
/// own XML DTD fragments for filling in the ANY placeholders in the DTD
/// above. Note that a custom element in a &lt;child&gt; element gets parsed by
/// the custom tag handler of the parent object, while a custom element in
/// an &lt;object&gt; element gets parsed by the custom tag handler of the object.
/// 
/// These XML fragments are explained in the documentation of the
/// respective objects.
/// 
/// A `&lt;template&gt;` tag can be used to define a widget class’s components.
/// See the [GtkWidget documentation](class.Widget.html`building-composite-widgets-from-template-xml`) for details.
open class Builder: GLibObject.Object, BuilderProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuilder>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuilder>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuilder>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBuilder`.
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuilder>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BuilderProtocol`
    /// Will retain `GtkBuilder`.
    /// - Parameter other: an instance of a related type that implements `BuilderProtocol`
    @inlinable public init<T: BuilderProtocol>(builder other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty builder object.
    /// 
    /// This function is only useful if you intend to make multiple calls
    /// to [method`Gtk.Builder.add_from_file`], [method`Gtk.Builder.add_from_resource`]
    /// or [method`Gtk.Builder.add_from_string`] in order to merge multiple UI
    /// descriptions into a single builder.
    @inlinable public init() {
        let rv = gtk_builder_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Parses the UI definition in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted. You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable public init(file filename: UnsafePointer<CChar>!) {
        let rv = gtk_builder_new_from_file(filename)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Parses the UI definition at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable public init(resource resourcePath: UnsafePointer<CChar>!) {
        let rv = gtk_builder_new_from_resource(resourcePath)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Parses the UI definition in `string`.
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable public init(string: UnsafePointer<CChar>!, length: gssize) {
        let rv = gtk_builder_new_from_string(string, length)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Parses the UI definition in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted. You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable public static func newFrom(file filename: UnsafePointer<CChar>!) -> Builder! {
        guard let rv = Builder(gconstpointer: gconstpointer(gtk_builder_new_from_file(filename))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Parses the UI definition at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable public static func newFrom(resource resourcePath: UnsafePointer<CChar>!) -> Builder! {
        guard let rv = Builder(gconstpointer: gconstpointer(gtk_builder_new_from_resource(resourcePath))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Parses the UI definition in `string`.
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable public static func newFrom(string: UnsafePointer<CChar>!, length: gssize) -> Builder! {
        guard let rv = Builder(gconstpointer: gconstpointer(gtk_builder_new_from_string(string, length))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum BuilderPropertyName: String, PropertyNameProtocol {
    /// The object the builder is evaluating for.
    case currentObject = "current-object"
    /// The scope the builder is operating in
    case scope = "scope"
    /// The translation domain used when translating property values that
    /// have been marked as translatable.
    /// 
    /// If the translation domain is `nil`, `GtkBuilder` uses `gettext()`,
    /// otherwise `g_dgettext()`.
    case translationDomain = "translation-domain"
}

public extension BuilderProtocol {
    /// Bind a `BuilderPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BuilderPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Builder property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BuilderPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Builder property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BuilderPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BuilderSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// The object the builder is evaluating for.
    case notifyCurrentObject = "notify::current-object"
    /// The scope the builder is operating in
    case notifyScope = "notify::scope"
    /// The translation domain used when translating property values that
    /// have been marked as translatable.
    /// 
    /// If the translation domain is `nil`, `GtkBuilder` uses `gettext()`,
    /// otherwise `g_dgettext()`.
    case notifyTranslationDomain = "notify::translation-domain"
}

// MARK: Builder has no signals
// MARK: Builder Class: BuilderProtocol extension (methods and fields)
public extension BuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilder` instance.
    @inlinable var builder_ptr: UnsafeMutablePointer<GtkBuilder>! { return ptr?.assumingMemoryBound(to: GtkBuilder.self) }

    /// Parses a file containing a UI definition and merges it with
    /// the current contents of `builder`.
    /// 
    /// This function is useful if you need to call
    /// [method`Gtk.Builder.set_current_object`]) to add user data to
    /// callbacks before loading GtkBuilder UI. Otherwise, you probably
    /// want [ctor`Gtk.Builder.new_from_file`] instead.
    /// 
    /// If an error occurs, 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_FILE_ERROR`
    /// domains.
    /// 
    /// It’s not really reasonable to attempt to handle failures of this
    /// call. You should not use this function with untrusted files (ie:
    /// files that are not part of your application). Broken `GtkBuilder`
    /// files can easily crash your program, and it’s possible that memory
    /// was leaked leading up to the reported failure. The only reasonable
    /// thing to do when an error is detected is to call ``g_error()``.
    @inlinable func addFromFile(filename: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_add_from_file(builder_ptr, filename, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a resource file containing a UI definition
    /// and merges it with the current contents of `builder`.
    /// 
    /// This function is useful if you need to call
    /// [method`Gtk.Builder.set_current_object`] to add user data to
    /// callbacks before loading GtkBuilder UI. Otherwise, you probably
    /// want [ctor`Gtk.Builder.new_from_resource`] instead.
    /// 
    /// If an error occurs, 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_RESOURCE_ERROR`
    /// domain.
    /// 
    /// It’s not really reasonable to attempt to handle failures of this
    /// call.  The only reasonable thing to do when an error is detected is
    /// to call `g_error()`.
    @inlinable func addFromResource(resourcePath: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_add_from_resource(builder_ptr, resourcePath, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a string containing a UI definition and merges it
    /// with the current contents of `builder`.
    /// 
    /// This function is useful if you need to call
    /// [method`Gtk.Builder.set_current_object`] to add user data to
    /// callbacks before loading `GtkBuilder` UI. Otherwise, you probably
    /// want [ctor`Gtk.Builder.new_from_string`] instead.
    /// 
    /// Upon errors `false` will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or
    /// `G_VARIANT_PARSE_ERROR` domain.
    /// 
    /// It’s not really reasonable to attempt to handle failures of this
    /// call.  The only reasonable thing to do when an error is detected is
    /// to call `g_error()`.
    @inlinable func addFromString(buffer: UnsafePointer<CChar>!, length: gssize) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_add_from_string(builder_ptr, buffer, length, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a file containing a UI definition building only the
    /// requested objects and merges them with the current contents
    /// of `builder`.
    /// 
    /// Upon errors, 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_FILE_ERROR`
    /// domain.
    /// 
    /// If you are adding an object that depends on an object that is not
    /// its child (for instance a `GtkTreeView` that depends on its
    /// `GtkTreeModel`), you have to explicitly list all of them in `object_ids`.
    @inlinable func addObjectsFromFile(filename: UnsafePointer<CChar>!, objectIds: UnsafeMutablePointer<UnsafePointer<CChar>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_add_objects_from_file(builder_ptr, filename, objectIds, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a resource file containing a UI definition, building
    /// only the requested objects and merges them with the current
    /// contents of `builder`.
    /// 
    /// Upon errors, 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_RESOURCE_ERROR`
    /// domain.
    /// 
    /// If you are adding an object that depends on an object that is not
    /// its child (for instance a `GtkTreeView` that depends on its
    /// `GtkTreeModel`), you have to explicitly list all of them in `object_ids`.
    @inlinable func addObjectsFromResource(resourcePath: UnsafePointer<CChar>!, objectIds: UnsafeMutablePointer<UnsafePointer<CChar>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_add_objects_from_resource(builder_ptr, resourcePath, objectIds, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a string containing a UI definition, building only the
    /// requested objects and merges them with the current contents of
    /// `builder`.
    /// 
    /// Upon errors `false` will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR` or `G_MARKUP_ERROR` domain.
    /// 
    /// If you are adding an object that depends on an object that is not
    /// its child (for instance a `GtkTreeView` that depends on its
    /// `GtkTreeModel`), you have to explicitly list all of them in `object_ids`.
    @inlinable func addObjectsFromString(buffer: UnsafePointer<CChar>!, length: gssize, objectIds: UnsafeMutablePointer<UnsafePointer<CChar>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_add_objects_from_string(builder_ptr, buffer, length, objectIds, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a closure to invoke the function called `function_name`.
    /// 
    /// This is using the `create_closure()` implementation of `builder`'s
    /// [class`Gtk.BuilderScope`].
    /// 
    /// If no closure could be created, `nil` will be returned and `error`
    /// will be set.
    @inlinable func createClosure(functionName: UnsafePointer<CChar>!, flags: BuilderClosureFlags, object: GLibObject.ObjectRef? = nil) throws -> GLibObject.ClosureRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLibObject.ClosureRef(gtk_builder_create_closure(builder_ptr, functionName, flags.value, object?.object_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a closure to invoke the function called `function_name`.
    /// 
    /// This is using the `create_closure()` implementation of `builder`'s
    /// [class`Gtk.BuilderScope`].
    /// 
    /// If no closure could be created, `nil` will be returned and `error`
    /// will be set.
    @inlinable func createClosure<ObjectT: GLibObject.ObjectProtocol>(functionName: UnsafePointer<CChar>!, flags: BuilderClosureFlags, object: ObjectT?) throws -> GLibObject.ClosureRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLibObject.ClosureRef(gtk_builder_create_closure(builder_ptr, functionName, flags.value, object?.object_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Add `object` to the `builder` object pool so it can be
    /// referenced just like any other object built by builder.
    @inlinable func exposeObject<ObjectT: GLibObject.ObjectProtocol>(name: UnsafePointer<CChar>!, object: ObjectT) {
        gtk_builder_expose_object(builder_ptr, name, object.object_ptr)
    
    }

    /// Main private entry point for building composite components
    /// from template XML.
    /// 
    /// This is exported purely to let `gtk-builder-tool` validate
    /// templates, applications have no need to call this function.
    @inlinable func extendWithTemplate<ObjectT: GLibObject.ObjectProtocol>(object: ObjectT, templateType: GType, buffer: UnsafePointer<CChar>!, length: gssize) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_extend_with_template(builder_ptr, object.object_ptr, templateType, buffer, length, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the current object set via `gtk_builder_set_current_object()`.
    @inlinable func getCurrentObject() -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gtk_builder_get_current_object(builder_ptr))
        return rv
    }

    /// Gets the object named `name`.
    /// 
    /// Note that this function does not increment the reference count
    /// of the returned object.
    @inlinable func getObject(name: UnsafePointer<CChar>!) -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gtk_builder_get_object(builder_ptr, name))
        return rv
    }

    /// Gets all objects that have been constructed by `builder`.
    /// 
    /// Note that this function does not increment the reference
    /// counts of the returned objects.
    @inlinable func getObjects() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_builder_get_objects(builder_ptr))
        return rv
    }

    /// Gets the scope in use that was set via `gtk_builder_set_scope()`.
    @inlinable func getScope() -> BuilderScopeRef! {
        let rv = BuilderScopeRef(gconstpointer: gconstpointer(gtk_builder_get_scope(builder_ptr)))
        return rv
    }

    /// Gets the translation domain of `builder`.
    @inlinable func getTranslationDomain() -> String! {
        let rv = gtk_builder_get_translation_domain(builder_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Looks up a type by name.
    /// 
    /// This is using the virtual function that `GtkBuilder` has
    /// for that purpose. This is mainly used when implementing
    /// the `GtkBuildable` interface on a type.
    @inlinable func getTypeFromName(typeName: UnsafePointer<CChar>!) -> GType {
        let rv = gtk_builder_get_type_from_name(builder_ptr, typeName)
        return rv
    }

    /// Sets the current object for the `builder`.
    /// 
    /// The current object can be thought of as the `this` object that the
    /// builder is working for and will often be used as the default object
    /// when an object is optional.
    /// 
    /// [method`Gtk.Widget.init_template`] for example will set the current
    /// object to the widget the template is inited for. For functions like
    /// [ctor`Gtk.Builder.new_from_resource`], the current object will be `nil`.
    @inlinable func set(currentObject: GLibObject.ObjectRef? = nil) {
        gtk_builder_set_current_object(builder_ptr, currentObject?.object_ptr)
    
    }
    /// Sets the current object for the `builder`.
    /// 
    /// The current object can be thought of as the `this` object that the
    /// builder is working for and will often be used as the default object
    /// when an object is optional.
    /// 
    /// [method`Gtk.Widget.init_template`] for example will set the current
    /// object to the widget the template is inited for. For functions like
    /// [ctor`Gtk.Builder.new_from_resource`], the current object will be `nil`.
    @inlinable func set<ObjectT: GLibObject.ObjectProtocol>(currentObject: ObjectT?) {
        gtk_builder_set_current_object(builder_ptr, currentObject?.object_ptr)
    
    }

    /// Sets the scope the builder should operate in.
    /// 
    /// If `scope` is `nil` a new [class`Gtk.BuilderCScope`] will be created.
    @inlinable func set(scope: BuilderScopeRef? = nil) {
        gtk_builder_set_scope(builder_ptr, scope?.builder_scope_ptr)
    
    }
    /// Sets the scope the builder should operate in.
    /// 
    /// If `scope` is `nil` a new [class`Gtk.BuilderCScope`] will be created.
    @inlinable func set<BuilderScopeT: BuilderScopeProtocol>(scope: BuilderScopeT?) {
        gtk_builder_set_scope(builder_ptr, scope?.builder_scope_ptr)
    
    }

    /// Sets the translation domain of `builder`.
    @inlinable func setTranslation(domain: UnsafePointer<CChar>? = nil) {
        gtk_builder_set_translation_domain(builder_ptr, domain)
    
    }

    /// Demarshals a value from a string.
    /// 
    /// This function calls `g_value_init()` on the `value` argument,
    /// so it need not be initialised beforehand.
    /// 
    /// Can handle char, uchar, boolean, int, uint, long,
    /// ulong, enum, flags, float, double, string, `GdkRGBA` and
    /// `GtkAdjustment` type values.
    /// 
    /// Upon errors `false` will be returned and `error` will be
    /// assigned a `GError` from the `GTK_BUILDER_ERROR` domain.
    @inlinable func valueFromString<ParamSpecT: GLibObject.ParamSpecProtocol, ValueT: GLibObject.ValueProtocol>(pspec: ParamSpecT, string: UnsafePointer<CChar>!, value: ValueT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_value_from_string(builder_ptr, pspec.param_spec_ptr, string, value.value_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Demarshals a value from a string.
    /// 
    /// Unlike [method`Gtk.Builder.value_from_string`], this function
    /// takes a `GType` instead of `GParamSpec`.
    /// 
    /// Calls `g_value_init()` on the `value` argument, so it
    /// need not be initialised beforehand.
    /// 
    /// Upon errors `false` will be returned and `error` will be
    /// assigned a `GError` from the `GTK_BUILDER_ERROR` domain.
    @inlinable func valueFromString<ValueT: GLibObject.ValueProtocol>(type: GType, string: UnsafePointer<CChar>!, value: ValueT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_value_from_string_type(builder_ptr, type, string, value.value_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the current object set via `gtk_builder_set_current_object()`.
    @inlinable var currentObject: GLibObject.ObjectRef! {
        /// Gets the current object set via `gtk_builder_set_current_object()`.
        get {
            let rv = GLibObject.ObjectRef(gtk_builder_get_current_object(builder_ptr))
            return rv
        }
        /// Sets the current object for the `builder`.
        /// 
        /// The current object can be thought of as the `this` object that the
        /// builder is working for and will often be used as the default object
        /// when an object is optional.
        /// 
        /// [method`Gtk.Widget.init_template`] for example will set the current
        /// object to the widget the template is inited for. For functions like
        /// [ctor`Gtk.Builder.new_from_resource`], the current object will be `nil`.
        nonmutating set {
            gtk_builder_set_current_object(builder_ptr, UnsafeMutablePointer<GObject>(newValue?.object_ptr))
        }
    }

    /// Gets all objects that have been constructed by `builder`.
    /// 
    /// Note that this function does not increment the reference
    /// counts of the returned objects.
    @inlinable var objects: GLib.SListRef! {
        /// Gets all objects that have been constructed by `builder`.
        /// 
        /// Note that this function does not increment the reference
        /// counts of the returned objects.
        get {
            let rv = GLib.SListRef(gtk_builder_get_objects(builder_ptr))
            return rv
        }
    }

    /// The scope the builder is operating in
    @inlinable var scope: BuilderScopeRef! {
        /// Gets the scope in use that was set via `gtk_builder_set_scope()`.
        get {
            let rv = BuilderScopeRef(gconstpointer: gconstpointer(gtk_builder_get_scope(builder_ptr)))
            return rv
        }
        /// Sets the scope the builder should operate in.
        /// 
        /// If `scope` is `nil` a new [class`Gtk.BuilderCScope`] will be created.
        nonmutating set {
            gtk_builder_set_scope(builder_ptr, UnsafeMutablePointer<GtkBuilderScope>(newValue?.builder_scope_ptr))
        }
    }

    /// Gets the translation domain of `builder`.
    @inlinable var translationDomain: String! {
        /// Gets the translation domain of `builder`.
        get {
            let rv = gtk_builder_get_translation_domain(builder_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the translation domain of `builder`.
        nonmutating set {
            gtk_builder_set_translation_domain(builder_ptr, newValue)
        }
    }


}



// MARK: - BuilderCScope Class

/// The `BuilderCScopeProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderCScope` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderCScope`.
/// Alternatively, use `BuilderCScopeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkBuilderScope` implementation for the C language.
/// 
/// `GtkBuilderCScope` instances use symbols explicitly added to `builder`
/// with prior calls to [method`Gtk.BuilderCScope.add_callback_symbol`].
/// If developers want to do that, they are encouraged to create their
/// own scopes for that purpose.
/// 
/// In the case that symbols are not explicitly added; GTK will uses
/// `GModule`’s introspective features (by opening the module `nil`) to
/// look at the application’s symbol table. From here it tries to match
/// the signal function names given in the interface description with
/// symbols in the application.
/// 
/// Note that unless [method`Gtk.BuilderCScope.add_callback_symbol`] is
/// called for all signal callbacks which are referenced by the loaded XML,
/// this functionality will require that `GModule` be supported on the platform.
public protocol BuilderCScopeProtocol: GLibObject.ObjectProtocol, BuilderScopeProtocol {
        /// Untyped pointer to the underlying `GtkBuilderCScope` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilderCScope` instance.
    var builder_cscope_ptr: UnsafeMutablePointer<GtkBuilderCScope>! { get }

    /// Required Initialiser for types conforming to `BuilderCScopeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuilderCScopeRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderCScope` instance.
/// It exposes methods that can operate on this data type through `BuilderCScopeProtocol` conformance.
/// Use `BuilderCScopeRef` only as an `unowned` reference to an existing `GtkBuilderCScope` instance.
///
/// A `GtkBuilderScope` implementation for the C language.
/// 
/// `GtkBuilderCScope` instances use symbols explicitly added to `builder`
/// with prior calls to [method`Gtk.BuilderCScope.add_callback_symbol`].
/// If developers want to do that, they are encouraged to create their
/// own scopes for that purpose.
/// 
/// In the case that symbols are not explicitly added; GTK will uses
/// `GModule`’s introspective features (by opening the module `nil`) to
/// look at the application’s symbol table. From here it tries to match
/// the signal function names given in the interface description with
/// symbols in the application.
/// 
/// Note that unless [method`Gtk.BuilderCScope.add_callback_symbol`] is
/// called for all signal callbacks which are referenced by the loaded XML,
/// this functionality will require that `GModule` be supported on the platform.
public struct BuilderCScopeRef: BuilderCScopeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBuilderCScope` instance.
    /// For type-safe access, use the generated, typed pointer `builder_cscope_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderCScopeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilderCScope>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilderCScope>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilderCScope>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilderCScope>?) {
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

    /// Reference intialiser for a related type that implements `BuilderCScopeProtocol`
    @inlinable init<T: BuilderCScopeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BuilderCScopeProtocol>(_ other: T) -> BuilderCScopeRef { BuilderCScopeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BuilderCScope` type acts as a reference-counted owner of an underlying `GtkBuilderCScope` instance.
/// It provides the methods that can operate on this data type through `BuilderCScopeProtocol` conformance.
/// Use `BuilderCScope` as a strong reference or owner of a `GtkBuilderCScope` instance.
///
/// A `GtkBuilderScope` implementation for the C language.
/// 
/// `GtkBuilderCScope` instances use symbols explicitly added to `builder`
/// with prior calls to [method`Gtk.BuilderCScope.add_callback_symbol`].
/// If developers want to do that, they are encouraged to create their
/// own scopes for that purpose.
/// 
/// In the case that symbols are not explicitly added; GTK will uses
/// `GModule`’s introspective features (by opening the module `nil`) to
/// look at the application’s symbol table. From here it tries to match
/// the signal function names given in the interface description with
/// symbols in the application.
/// 
/// Note that unless [method`Gtk.BuilderCScope.add_callback_symbol`] is
/// called for all signal callbacks which are referenced by the loaded XML,
/// this functionality will require that `GModule` be supported on the platform.
open class BuilderCScope: GLibObject.Object, BuilderCScopeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderCScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuilderCScope>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderCScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuilderCScope>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderCScope` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderCScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderCScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuilderCScope>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderCScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuilderCScope>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBuilderCScope`.
    /// i.e., ownership is transferred to the `BuilderCScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuilderCScope>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BuilderCScopeProtocol`
    /// Will retain `GtkBuilderCScope`.
    /// - Parameter other: an instance of a related type that implements `BuilderCScopeProtocol`
    @inlinable public init<T: BuilderCScopeProtocol>(builderCScope other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no BuilderCScope properties

public enum BuilderCScopeSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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

// MARK: BuilderCScope has no signals
// MARK: BuilderCScope Class: BuilderCScopeProtocol extension (methods and fields)
public extension BuilderCScopeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderCScope` instance.
    @inlinable var builder_cscope_ptr: UnsafeMutablePointer<GtkBuilderCScope>! { return ptr?.assumingMemoryBound(to: GtkBuilderCScope.self) }

    /// Adds the `callback_symbol` to the scope of `builder` under the
    /// given `callback_name`.
    /// 
    /// Using this function overrides the behavior of
    /// [method`Gtk.Builder.create_closure`] for any callback symbols that
    /// are added. Using this method allows for better encapsulation as it
    /// does not require that callback symbols be declared in the global
    /// namespace.
    @inlinable func addCallbackSymbol(callbackName: UnsafePointer<CChar>!, callbackSymbol: GCallback?) {
        gtk_builder_cscope_add_callback_symbol(builder_cscope_ptr, callbackName, callbackSymbol)
    
    }


    // *** addCallbackSymbols() is not available because it has a varargs (...) parameter!


    /// Fetches a symbol previously added with
    /// `gtk_builder_cscope_add_callback_symbol()`.
    @inlinable func lookupCallbackSymbol(callbackName: UnsafePointer<CChar>!) -> GCallback! {
        let rv = gtk_builder_cscope_lookup_callback_symbol(builder_cscope_ptr, callbackName)
        return rv
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = builder_cscope_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - BuilderListItemFactory Class

/// The `BuilderListItemFactoryProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderListItemFactory` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderListItemFactory`.
/// Alternatively, use `BuilderListItemFactoryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkBuilderListItemFactory` is a `GtkListItemFactory` that creates
/// widgets by instantiating `GtkBuilder` UI templates.
/// 
/// The templates must be extending `GtkListItem`, and typically use
/// `GtkExpression`s to obtain data from the items in the model.
/// 
/// Example:
/// ```xml
///   &lt;interface&gt;
///     &lt;template class="GtkListItem"&gt;
///       &lt;property name="child"&gt;
///         &lt;object class="GtkLabel"&gt;
///           &lt;property name="xalign"&gt;0&lt;/property&gt;
///           &lt;binding name="label"&gt;
///             &lt;lookup name="name" type="SettingsKey"&gt;
///               &lt;lookup name="item"&gt;GtkListItem&lt;/lookup&gt;
///             &lt;/lookup&gt;
///           &lt;/binding&gt;
///         &lt;/object&gt;
///       &lt;/property&gt;
///     &lt;/template&gt;
///   &lt;/interface&gt;
/// ```
public protocol BuilderListItemFactoryProtocol: ListItemFactoryProtocol {
        /// Untyped pointer to the underlying `GtkBuilderListItemFactory` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilderListItemFactory` instance.
    var builder_list_item_factory_ptr: UnsafeMutablePointer<GtkBuilderListItemFactory>! { get }

    /// Required Initialiser for types conforming to `BuilderListItemFactoryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuilderListItemFactoryRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderListItemFactory` instance.
/// It exposes methods that can operate on this data type through `BuilderListItemFactoryProtocol` conformance.
/// Use `BuilderListItemFactoryRef` only as an `unowned` reference to an existing `GtkBuilderListItemFactory` instance.
///
/// `GtkBuilderListItemFactory` is a `GtkListItemFactory` that creates
/// widgets by instantiating `GtkBuilder` UI templates.
/// 
/// The templates must be extending `GtkListItem`, and typically use
/// `GtkExpression`s to obtain data from the items in the model.
/// 
/// Example:
/// ```xml
///   &lt;interface&gt;
///     &lt;template class="GtkListItem"&gt;
///       &lt;property name="child"&gt;
///         &lt;object class="GtkLabel"&gt;
///           &lt;property name="xalign"&gt;0&lt;/property&gt;
///           &lt;binding name="label"&gt;
///             &lt;lookup name="name" type="SettingsKey"&gt;
///               &lt;lookup name="item"&gt;GtkListItem&lt;/lookup&gt;
///             &lt;/lookup&gt;
///           &lt;/binding&gt;
///         &lt;/object&gt;
///       &lt;/property&gt;
///     &lt;/template&gt;
///   &lt;/interface&gt;
/// ```
public struct BuilderListItemFactoryRef: BuilderListItemFactoryProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBuilderListItemFactory` instance.
    /// For type-safe access, use the generated, typed pointer `builder_list_item_factory_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderListItemFactoryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilderListItemFactory>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilderListItemFactory>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilderListItemFactory>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilderListItemFactory>?) {
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

    /// Reference intialiser for a related type that implements `BuilderListItemFactoryProtocol`
    @inlinable init<T: BuilderListItemFactoryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BuilderListItemFactoryProtocol>(_ other: T) -> BuilderListItemFactoryRef { BuilderListItemFactoryRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using `bytes` as the data to pass to `GtkBuilder`.
    @inlinable init<BuilderScopeT: BuilderScopeProtocol, BytesT: GLib.BytesProtocol>(bytes scope: BuilderScopeT?, bytes: BytesT) {
        let rv = gtk_builder_list_item_factory_new_from_bytes(scope?.builder_scope_ptr, bytes.bytes_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using data read from the given `resource_path` to pass to `GtkBuilder`.
    @inlinable init<BuilderScopeT: BuilderScopeProtocol>(resource scope: BuilderScopeT?, resourcePath: UnsafePointer<CChar>!) {
        let rv = gtk_builder_list_item_factory_new_from_resource(scope?.builder_scope_ptr, resourcePath)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using `bytes` as the data to pass to `GtkBuilder`.
    @inlinable static func newFrom<BuilderScopeT: BuilderScopeProtocol, BytesT: GLib.BytesProtocol>(bytes scope: BuilderScopeT?, bytes: BytesT) -> ListItemFactoryRef! {
        guard let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_builder_list_item_factory_new_from_bytes(scope?.builder_scope_ptr, bytes.bytes_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using data read from the given `resource_path` to pass to `GtkBuilder`.
    @inlinable static func newFrom<BuilderScopeT: BuilderScopeProtocol>(resource scope: BuilderScopeT?, resourcePath: UnsafePointer<CChar>!) -> ListItemFactoryRef! {
        guard let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_builder_list_item_factory_new_from_resource(scope?.builder_scope_ptr, resourcePath))) else { return nil }
        return rv
    }
}

/// The `BuilderListItemFactory` type acts as a reference-counted owner of an underlying `GtkBuilderListItemFactory` instance.
/// It provides the methods that can operate on this data type through `BuilderListItemFactoryProtocol` conformance.
/// Use `BuilderListItemFactory` as a strong reference or owner of a `GtkBuilderListItemFactory` instance.
///
/// `GtkBuilderListItemFactory` is a `GtkListItemFactory` that creates
/// widgets by instantiating `GtkBuilder` UI templates.
/// 
/// The templates must be extending `GtkListItem`, and typically use
/// `GtkExpression`s to obtain data from the items in the model.
/// 
/// Example:
/// ```xml
///   &lt;interface&gt;
///     &lt;template class="GtkListItem"&gt;
///       &lt;property name="child"&gt;
///         &lt;object class="GtkLabel"&gt;
///           &lt;property name="xalign"&gt;0&lt;/property&gt;
///           &lt;binding name="label"&gt;
///             &lt;lookup name="name" type="SettingsKey"&gt;
///               &lt;lookup name="item"&gt;GtkListItem&lt;/lookup&gt;
///             &lt;/lookup&gt;
///           &lt;/binding&gt;
///         &lt;/object&gt;
///       &lt;/property&gt;
///     &lt;/template&gt;
///   &lt;/interface&gt;
/// ```
open class BuilderListItemFactory: ListItemFactory, BuilderListItemFactoryProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuilderListItemFactory>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuilderListItemFactory>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderListItemFactory` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuilderListItemFactory>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuilderListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuilderListItemFactory>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBuilderListItemFactory`.
    /// i.e., ownership is transferred to the `BuilderListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuilderListItemFactory>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BuilderListItemFactoryProtocol`
    /// Will retain `GtkBuilderListItemFactory`.
    /// - Parameter other: an instance of a related type that implements `BuilderListItemFactoryProtocol`
    @inlinable public init<T: BuilderListItemFactoryProtocol>(builderListItemFactory other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using `bytes` as the data to pass to `GtkBuilder`.
    @inlinable public init<BuilderScopeT: BuilderScopeProtocol, BytesT: GLib.BytesProtocol>(bytes scope: BuilderScopeT?, bytes: BytesT) {
        let rv = gtk_builder_list_item_factory_new_from_bytes(scope?.builder_scope_ptr, bytes.bytes_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using data read from the given `resource_path` to pass to `GtkBuilder`.
    @inlinable public init<BuilderScopeT: BuilderScopeProtocol>(resource scope: BuilderScopeT?, resourcePath: UnsafePointer<CChar>!) {
        let rv = gtk_builder_list_item_factory_new_from_resource(scope?.builder_scope_ptr, resourcePath)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using `bytes` as the data to pass to `GtkBuilder`.
    @inlinable public static func newFrom<BuilderScopeT: BuilderScopeProtocol, BytesT: GLib.BytesProtocol>(bytes scope: BuilderScopeT?, bytes: BytesT) -> ListItemFactory! {
        guard let rv = ListItemFactory(gconstpointer: gconstpointer(gtk_builder_list_item_factory_new_from_bytes(scope?.builder_scope_ptr, bytes.bytes_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkBuilderListItemFactory` that instantiates widgets
    /// using data read from the given `resource_path` to pass to `GtkBuilder`.
    @inlinable public static func newFrom<BuilderScopeT: BuilderScopeProtocol>(resource scope: BuilderScopeT?, resourcePath: UnsafePointer<CChar>!) -> ListItemFactory! {
        guard let rv = ListItemFactory(gconstpointer: gconstpointer(gtk_builder_list_item_factory_new_from_resource(scope?.builder_scope_ptr, resourcePath))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum BuilderListItemFactoryPropertyName: String, PropertyNameProtocol {
    /// `GBytes` containing the UI definition.
    case bytes = "bytes"
    /// Path of the resource containing the UI definition.
    case resource = "resource"
    /// `GtkBuilderScope` to use when instantiating listitems
    case scope = "scope"
}

public extension BuilderListItemFactoryProtocol {
    /// Bind a `BuilderListItemFactoryPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BuilderListItemFactoryPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a BuilderListItemFactory property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BuilderListItemFactoryPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a BuilderListItemFactory property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BuilderListItemFactoryPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BuilderListItemFactorySignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// `GBytes` containing the UI definition.
    case notifyBytes = "notify::bytes"
    /// Path of the resource containing the UI definition.
    case notifyResource = "notify::resource"
    /// `GtkBuilderScope` to use when instantiating listitems
    case notifyScope = "notify::scope"
}

// MARK: BuilderListItemFactory has no signals
// MARK: BuilderListItemFactory Class: BuilderListItemFactoryProtocol extension (methods and fields)
public extension BuilderListItemFactoryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderListItemFactory` instance.
    @inlinable var builder_list_item_factory_ptr: UnsafeMutablePointer<GtkBuilderListItemFactory>! { return ptr?.assumingMemoryBound(to: GtkBuilderListItemFactory.self) }

    /// Gets the data used as the `GtkBuilder` UI template for constructing
    /// listitems.
    @inlinable func getBytes() -> GLib.BytesRef! {
        let rv = GLib.BytesRef(gtk_builder_list_item_factory_get_bytes(builder_list_item_factory_ptr))
        return rv
    }

    /// If the data references a resource, gets the path of that resource.
    @inlinable func getResource() -> String! {
        let rv = gtk_builder_list_item_factory_get_resource(builder_list_item_factory_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the scope used when constructing listitems.
    @inlinable func getScope() -> BuilderScopeRef! {
        let rv = BuilderScopeRef(gconstpointer: gconstpointer(gtk_builder_list_item_factory_get_scope(builder_list_item_factory_ptr)))
        return rv
    }
    /// `GBytes` containing the UI definition.
    @inlinable var bytes: GLib.BytesRef! {
        /// Gets the data used as the `GtkBuilder` UI template for constructing
        /// listitems.
        get {
            let rv = GLib.BytesRef(gtk_builder_list_item_factory_get_bytes(builder_list_item_factory_ptr))
            return rv
        }
    }

    /// Path of the resource containing the UI definition.
    @inlinable var resource: String! {
        /// If the data references a resource, gets the path of that resource.
        get {
            let rv = gtk_builder_list_item_factory_get_resource(builder_list_item_factory_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// `GtkBuilderScope` to use when instantiating listitems
    @inlinable var scope: BuilderScopeRef! {
        /// Gets the scope used when constructing listitems.
        get {
            let rv = BuilderScopeRef(gconstpointer: gconstpointer(gtk_builder_list_item_factory_get_scope(builder_list_item_factory_ptr)))
            return rv
        }
    }


}



// MARK: - Button Class

/// The `ButtonProtocol` protocol exposes the methods and properties of an underlying `GtkButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Button`.
/// Alternatively, use `ButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkButton` widget is generally used to trigger a callback function that is
/// called when the button is pressed.
/// 
/// ![An example GtkButton](button.png)
/// 
/// The `GtkButton` widget can hold any valid child widget. That is, it can hold
/// almost any other standard `GtkWidget`. The most commonly used child is the
/// `GtkLabel`.
/// 
/// # CSS nodes
/// 
/// `GtkButton` has a single CSS node with name button. The node will get the
/// style classes .image-button or .text-button, if the content is just an
/// image or label, respectively. It may also receive the .flat style class.
/// When activating a button via the keyboard, the button will temporarily
/// gain the .keyboard-activating style class.
/// 
/// Other style classes that are commonly used with `GtkButton` include
/// .suggested-action and .destructive-action. In special cases, buttons
/// can be made round by adding the .circular style class.
/// 
/// Button-like widgets like [class`Gtk.ToggleButton`], [class`Gtk.MenuButton`],
/// [class`Gtk.VolumeButton`], [class`Gtk.LockButton`], [class`Gtk.ColorButton`]
/// or [class`Gtk.FontButton`] use style classes such as .toggle, .popup, .scale,
/// .lock, .color on the button node to differentiate themselves from a plain
/// `GtkButton`.
/// 
/// # Accessibility
/// 
/// `GtkButton` uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
public protocol ButtonProtocol: WidgetProtocol, ActionableProtocol {
        /// Untyped pointer to the underlying `GtkButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButton` instance.
    var button_ptr: UnsafeMutablePointer<GtkButton>! { get }

    /// Required Initialiser for types conforming to `ButtonProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ButtonRef` type acts as a lightweight Swift reference to an underlying `GtkButton` instance.
/// It exposes methods that can operate on this data type through `ButtonProtocol` conformance.
/// Use `ButtonRef` only as an `unowned` reference to an existing `GtkButton` instance.
///
/// The `GtkButton` widget is generally used to trigger a callback function that is
/// called when the button is pressed.
/// 
/// ![An example GtkButton](button.png)
/// 
/// The `GtkButton` widget can hold any valid child widget. That is, it can hold
/// almost any other standard `GtkWidget`. The most commonly used child is the
/// `GtkLabel`.
/// 
/// # CSS nodes
/// 
/// `GtkButton` has a single CSS node with name button. The node will get the
/// style classes .image-button or .text-button, if the content is just an
/// image or label, respectively. It may also receive the .flat style class.
/// When activating a button via the keyboard, the button will temporarily
/// gain the .keyboard-activating style class.
/// 
/// Other style classes that are commonly used with `GtkButton` include
/// .suggested-action and .destructive-action. In special cases, buttons
/// can be made round by adding the .circular style class.
/// 
/// Button-like widgets like [class`Gtk.ToggleButton`], [class`Gtk.MenuButton`],
/// [class`Gtk.VolumeButton`], [class`Gtk.LockButton`], [class`Gtk.ColorButton`]
/// or [class`Gtk.FontButton`] use style classes such as .toggle, .popup, .scale,
/// .lock, .color on the button node to differentiate themselves from a plain
/// `GtkButton`.
/// 
/// # Accessibility
/// 
/// `GtkButton` uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
public struct ButtonRef: ButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkButton` instance.
    /// For type-safe access, use the generated, typed pointer `button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButton>?) {
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

    /// Reference intialiser for a related type that implements `ButtonProtocol`
    @inlinable init<T: ButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ButtonProtocol>(_ other: T) -> ButtonRef { ButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkButton` widget.
    /// 
    /// To add a child widget to the button, use [method`Gtk.Button.set_child`].
    @inlinable init() {
        let rv = gtk_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable init(iconName iconName: UnsafePointer<CChar>? = nil) {
        let rv = gtk_button_new_from_icon_name(iconName)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child.
    @inlinable init(label: UnsafePointer<CChar>!) {
        let rv = gtk_button_new_with_label(label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkButton` containing a label.
    /// 
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic. Pressing Alt and that key activates the button.
    @inlinable init(mnemonic label: UnsafePointer<CChar>!) {
        let rv = gtk_button_new_with_mnemonic(label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable static func newFrom(iconName iconName: UnsafePointer<CChar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_new_from_icon_name(iconName))) else { return nil }
        return rv
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child.
    @inlinable static func newWith(label: UnsafePointer<CChar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_new_with_label(label))) else { return nil }
        return rv
    }

    /// Creates a new `GtkButton` containing a label.
    /// 
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic. Pressing Alt and that key activates the button.
    @inlinable static func newWith(mnemonic label: UnsafePointer<CChar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_new_with_mnemonic(label))) else { return nil }
        return rv
    }
}

/// The `Button` type acts as a reference-counted owner of an underlying `GtkButton` instance.
/// It provides the methods that can operate on this data type through `ButtonProtocol` conformance.
/// Use `Button` as a strong reference or owner of a `GtkButton` instance.
///
/// The `GtkButton` widget is generally used to trigger a callback function that is
/// called when the button is pressed.
/// 
/// ![An example GtkButton](button.png)
/// 
/// The `GtkButton` widget can hold any valid child widget. That is, it can hold
/// almost any other standard `GtkWidget`. The most commonly used child is the
/// `GtkLabel`.
/// 
/// # CSS nodes
/// 
/// `GtkButton` has a single CSS node with name button. The node will get the
/// style classes .image-button or .text-button, if the content is just an
/// image or label, respectively. It may also receive the .flat style class.
/// When activating a button via the keyboard, the button will temporarily
/// gain the .keyboard-activating style class.
/// 
/// Other style classes that are commonly used with `GtkButton` include
/// .suggested-action and .destructive-action. In special cases, buttons
/// can be made round by adding the .circular style class.
/// 
/// Button-like widgets like [class`Gtk.ToggleButton`], [class`Gtk.MenuButton`],
/// [class`Gtk.VolumeButton`], [class`Gtk.LockButton`], [class`Gtk.ColorButton`]
/// or [class`Gtk.FontButton`] use style classes such as .toggle, .popup, .scale,
/// .lock, .color on the button node to differentiate themselves from a plain
/// `GtkButton`.
/// 
/// # Accessibility
/// 
/// `GtkButton` uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
open class Button: Widget, ButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkButton`.
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ButtonProtocol`
    /// Will retain `GtkButton`.
    /// - Parameter other: an instance of a related type that implements `ButtonProtocol`
    @inlinable public init<T: ButtonProtocol>(button other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkButton` widget.
    /// 
    /// To add a child widget to the button, use [method`Gtk.Button.set_child`].
    @inlinable public init() {
        let rv = gtk_button_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public init(iconName iconName: UnsafePointer<CChar>? = nil) {
        let rv = gtk_button_new_from_icon_name(iconName)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child.
    @inlinable public init(label: UnsafePointer<CChar>!) {
        let rv = gtk_button_new_with_label(label)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkButton` containing a label.
    /// 
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic. Pressing Alt and that key activates the button.
    @inlinable public init(mnemonic label: UnsafePointer<CChar>!) {
        let rv = gtk_button_new_with_mnemonic(label)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public static func newFrom(iconName iconName: UnsafePointer<CChar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_button_new_from_icon_name(iconName))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child.
    @inlinable public static func newWith(label: UnsafePointer<CChar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_button_new_with_label(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkButton` containing a label.
    /// 
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic. Pressing Alt and that key activates the button.
    @inlinable public static func newWith(mnemonic label: UnsafePointer<CChar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_button_new_with_mnemonic(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ButtonPropertyName: String, PropertyNameProtocol {
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

public extension ButtonProtocol {
    /// Bind a `ButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Button property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Button property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ButtonSignalName: String, SignalNameProtocol {
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

// MARK: Button signals
public extension ButtonProtocol {
    /// Connect a Swift signal handler to the given, typed `ButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted to animate press then release.
    /// 
    /// This is an action signal. Applications should never connect
    /// to this signal, but use the [signal`Gtk.Button::clicked`] signal.
    /// - Note: This represents the underlying `activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activate` signal is emitted
    @discardableResult @inlinable func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
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
    static var activateSignal: ButtonSignalName { .activate }
    
    /// Emitted when the button has been activated (pressed and released).
    /// - Note: This represents the underlying `clicked` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `clicked` signal is emitted
    @discardableResult @inlinable func onClicked(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .clicked,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `clicked` signal for using the `connect(signal:)` methods
    static var clickedSignal: ButtonSignalName { .clicked }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    @discardableResult @inlinable func onNotifyChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyChildSignal: ButtonSignalName { .notifyChild }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::has-frame` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHasFrame` signal is emitted
    @discardableResult @inlinable func onNotifyHasFrame(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHasFrame,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::has-frame` signal for using the `connect(signal:)` methods
    static var notifyHasFrameSignal: ButtonSignalName { .notifyHasFrame }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    /// - Note: This represents the underlying `notify::icon-name` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIconName` signal is emitted
    @discardableResult @inlinable func onNotifyIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIconName,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::icon-name` signal for using the `connect(signal:)` methods
    static var notifyIconNameSignal: ButtonSignalName { .notifyIconName }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    @discardableResult @inlinable func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyLabelSignal: ButtonSignalName { .notifyLabel }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
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
    @discardableResult @inlinable func onNotifyUseUnderline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyUseUnderlineSignal: ButtonSignalName { .notifyUseUnderline }
    
}

// MARK: Button Class: ButtonProtocol extension (methods and fields)
public extension ButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButton` instance.
    @inlinable var button_ptr: UnsafeMutablePointer<GtkButton>! { return ptr?.assumingMemoryBound(to: GtkButton.self) }

    /// Gets the child widget of `button`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_get_child(button_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the button has a frame.
    @inlinable func getHasFrame() -> Bool {
        let rv = ((gtk_button_get_has_frame(button_ptr)) != 0)
        return rv
    }

    /// Returns the icon name of the button.
    /// 
    /// If the icon name has not been set with [method`Gtk.Button.set_icon_name`]
    /// the return value will be `nil`. This will be the case if you create
    /// an empty button with [ctor`Gtk.Button.new`] to use as a container.
    @inlinable func getIconName() -> String! {
        let rv = gtk_button_get_icon_name(button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Fetches the text from the label of the button.
    /// 
    /// If the label text has not been set with [method`Gtk.Button.set_label`]
    /// the return value will be `nil`. This will be the case if you create
    /// an empty button with [ctor`Gtk.Button.new`] to use as a container.
    @inlinable func getLabel() -> String! {
        let rv = gtk_button_get_label(button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// gets whether underlines are interpreted as mnemonics.
    /// 
    /// See [method`Gtk.Button.set_use_underline`].
    @inlinable func getUseUnderline() -> Bool {
        let rv = ((gtk_button_get_use_underline(button_ptr)) != 0)
        return rv
    }

    /// Sets the child widget of `button`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_button_set_child(button_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `button`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_button_set_child(button_ptr, child?.widget_ptr)
    
    }

    /// Sets the style of the button.
    /// 
    /// Buttons can has a flat appearance or have a frame drawn around them.
    @inlinable func set(hasFrame: Bool) {
        gtk_button_set_has_frame(button_ptr, gboolean((hasFrame) ? 1 : 0))
    
    }

    /// Adds a `GtkImage` with the given icon name as a child.
    /// 
    /// If `button` already contains a child widget, that child widget will
    /// be removed and replaced with the image.
    @inlinable func set(iconName: UnsafePointer<CChar>!) {
        gtk_button_set_icon_name(button_ptr, iconName)
    
    }

    /// Sets the text of the label of the button to `label`.
    /// 
    /// This will also clear any previously set labels.
    @inlinable func set(label: UnsafePointer<CChar>!) {
        gtk_button_set_label(button_ptr, label)
    
    }

    /// Sets whether to use underlines as mnemonics.
    /// 
    /// If true, an underline in the text of the button label indicates
    /// the next character should be used for the mnemonic accelerator key.
    @inlinable func set(useUnderline: Bool) {
        gtk_button_set_use_underline(button_ptr, gboolean((useUnderline) ? 1 : 0))
    
    }
    /// The child widget.
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `button`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_get_child(button_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `button`.
        nonmutating set {
            gtk_button_set_child(button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Returns whether the button has a frame.
    @inlinable var hasFrame: Bool {
        /// Returns whether the button has a frame.
        get {
            let rv = ((gtk_button_get_has_frame(button_ptr)) != 0)
            return rv
        }
        /// Sets the style of the button.
        /// 
        /// Buttons can has a flat appearance or have a frame drawn around them.
        nonmutating set {
            gtk_button_set_has_frame(button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the icon name of the button.
    /// 
    /// If the icon name has not been set with [method`Gtk.Button.set_icon_name`]
    /// the return value will be `nil`. This will be the case if you create
    /// an empty button with [ctor`Gtk.Button.new`] to use as a container.
    @inlinable var iconName: String! {
        /// Returns the icon name of the button.
        /// 
        /// If the icon name has not been set with [method`Gtk.Button.set_icon_name`]
        /// the return value will be `nil`. This will be the case if you create
        /// an empty button with [ctor`Gtk.Button.new`] to use as a container.
        get {
            let rv = gtk_button_get_icon_name(button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Adds a `GtkImage` with the given icon name as a child.
        /// 
        /// If `button` already contains a child widget, that child widget will
        /// be removed and replaced with the image.
        nonmutating set {
            gtk_button_set_icon_name(button_ptr, newValue)
        }
    }

    /// Text of the label inside the button, if the button contains a label widget.
    @inlinable var label: String! {
        /// Fetches the text from the label of the button.
        /// 
        /// If the label text has not been set with [method`Gtk.Button.set_label`]
        /// the return value will be `nil`. This will be the case if you create
        /// an empty button with [ctor`Gtk.Button.new`] to use as a container.
        get {
            let rv = gtk_button_get_label(button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text of the label of the button to `label`.
        /// 
        /// This will also clear any previously set labels.
        nonmutating set {
            gtk_button_set_label(button_ptr, newValue)
        }
    }

    /// gets whether underlines are interpreted as mnemonics.
    /// 
    /// See [method`Gtk.Button.set_use_underline`].
    @inlinable var useUnderline: Bool {
        /// gets whether underlines are interpreted as mnemonics.
        /// 
        /// See [method`Gtk.Button.set_use_underline`].
        get {
            let rv = ((gtk_button_get_use_underline(button_ptr)) != 0)
            return rv
        }
        /// Sets whether to use underlines as mnemonics.
        /// 
        /// If true, an underline in the text of the button label indicates
        /// the next character should be used for the mnemonic accelerator key.
        nonmutating set {
            gtk_button_set_use_underline(button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

}



// MARK: - CClosureExpression Class

/// The `CClosureExpressionProtocol` protocol exposes the methods and properties of an underlying `GtkCClosureExpression` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CClosureExpression`.
/// Alternatively, use `CClosureExpressionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A variant of `GtkClosureExpression` using a C closure.
public protocol CClosureExpressionProtocol: ExpressionProtocol {
        /// Untyped pointer to the underlying `GtkCClosureExpression` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCClosureExpression` instance.
    var cclosure_expression_ptr: UnsafeMutablePointer<GtkCClosureExpression>! { get }

    /// Required Initialiser for types conforming to `CClosureExpressionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `CClosureExpressionRef` type acts as a lightweight Swift reference to an underlying `GtkCClosureExpression` instance.
/// It exposes methods that can operate on this data type through `CClosureExpressionProtocol` conformance.
/// Use `CClosureExpressionRef` only as an `unowned` reference to an existing `GtkCClosureExpression` instance.
///
/// A variant of `GtkClosureExpression` using a C closure.
public struct CClosureExpressionRef: CClosureExpressionProtocol {
        /// Untyped pointer to the underlying `GtkCClosureExpression` instance.
    /// For type-safe access, use the generated, typed pointer `cclosure_expression_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CClosureExpressionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCClosureExpression>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCClosureExpression>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCClosureExpression>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCClosureExpression>?) {
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

    /// Reference intialiser for a related type that implements `CClosureExpressionProtocol`
    @inlinable init<T: CClosureExpressionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CClosureExpression` type acts as a reference-counted owner of an underlying `GtkCClosureExpression` instance.
/// It provides the methods that can operate on this data type through `CClosureExpressionProtocol` conformance.
/// Use `CClosureExpression` as a strong reference or owner of a `GtkCClosureExpression` instance.
///
/// A variant of `GtkClosureExpression` using a C closure.
open class CClosureExpression: Expression, CClosureExpressionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosureExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCClosureExpression>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosureExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCClosureExpression>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosureExpression` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosureExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosureExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCClosureExpression>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosureExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCClosureExpression>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkCClosureExpression`.
    /// i.e., ownership is transferred to the `CClosureExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCClosureExpression>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CClosureExpressionProtocol`
    /// Will retain `GtkCClosureExpression`.
    /// - Parameter other: an instance of a related type that implements `CClosureExpressionProtocol`
    @inlinable public init<T: CClosureExpressionProtocol>(cClosureExpression other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no CClosureExpression properties

// MARK: no CClosureExpression signals

// MARK: CClosureExpression has no signals
// MARK: CClosureExpression Class: CClosureExpressionProtocol extension (methods and fields)
public extension CClosureExpressionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCClosureExpression` instance.
    @inlinable var cclosure_expression_ptr: UnsafeMutablePointer<GtkCClosureExpression>! { return ptr?.assumingMemoryBound(to: GtkCClosureExpression.self) }



}



