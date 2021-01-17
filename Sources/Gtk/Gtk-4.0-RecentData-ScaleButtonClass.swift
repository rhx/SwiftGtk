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

// MARK: - RecentData Record

/// The `RecentDataProtocol` protocol exposes the methods and properties of an underlying `GtkRecentData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentData`.
/// Alternatively, use `RecentDataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Meta-data to be passed to `gtk_recent_manager_add_full()` when
/// registering a recently used resource.
public protocol RecentDataProtocol {
        /// Untyped pointer to the underlying `GtkRecentData` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentData` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentData>! { get }

}

/// The `RecentDataRef` type acts as a lightweight Swift reference to an underlying `GtkRecentData` instance.
/// It exposes methods that can operate on this data type through `RecentDataProtocol` conformance.
/// Use `RecentDataRef` only as an `unowned` reference to an existing `GtkRecentData` instance.
///
/// Meta-data to be passed to `gtk_recent_manager_add_full()` when
/// registering a recently used resource.
public struct RecentDataRef: RecentDataProtocol {
        /// Untyped pointer to the underlying `GtkRecentData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentDataRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentData>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentData>?) {
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

    /// Reference intialiser for a related type that implements `RecentDataProtocol`
    @inlinable init<T: RecentDataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentData` type acts as an owner of an underlying `GtkRecentData` instance.
/// It provides the methods that can operate on this data type through `RecentDataProtocol` conformance.
/// Use `RecentData` as a strong reference or owner of a `GtkRecentData` instance.
///
/// Meta-data to be passed to `gtk_recent_manager_add_full()` when
/// registering a recently used resource.
open class RecentData: RecentDataProtocol {
        /// Untyped pointer to the underlying `GtkRecentData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentData>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentData>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRecentData` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RecentDataProtocol`
    /// `GtkRecentData` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RecentDataProtocol`
    @inlinable public init<T: RecentDataProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRecentData`.
    deinit {
        // no reference counting for GtkRecentData, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }



}

// MARK: no RecentData properties

// MARK: no RecentData signals

// MARK: RecentData has no signals
// MARK: RecentData Record: RecentDataProtocol extension (methods and fields)
public extension RecentDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentData` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentData>! { return ptr?.assumingMemoryBound(to: GtkRecentData.self) }


    /// a UTF-8 encoded string, containing the name of the recently
    ///   used resource to be displayed, or `nil`;
    @inlinable var displayName: UnsafeMutablePointer<CChar>! {
        /// a UTF-8 encoded string, containing the name of the recently
        ///   used resource to be displayed, or `nil`;
        get {
            let rv = _ptr.pointee.display_name
            return rv
        }
        /// a UTF-8 encoded string, containing the name of the recently
        ///   used resource to be displayed, or `nil`;
         set {
            _ptr.pointee.display_name = newValue
        }
    }

    /// a UTF-8 encoded string, containing a short description of
    ///   the resource, or `nil`;
    @inlinable var description: UnsafeMutablePointer<CChar>! {
        /// a UTF-8 encoded string, containing a short description of
        ///   the resource, or `nil`;
        get {
            let rv = _ptr.pointee.description
            return rv
        }
        /// a UTF-8 encoded string, containing a short description of
        ///   the resource, or `nil`;
         set {
            _ptr.pointee.description = newValue
        }
    }

    /// the MIME type of the resource;
    @inlinable var mimeType: UnsafeMutablePointer<CChar>! {
        /// the MIME type of the resource;
        get {
            let rv = _ptr.pointee.mime_type
            return rv
        }
        /// the MIME type of the resource;
         set {
            _ptr.pointee.mime_type = newValue
        }
    }

    /// the name of the application that is registering this recently
    ///   used resource;
    @inlinable var appName: UnsafeMutablePointer<CChar>! {
        /// the name of the application that is registering this recently
        ///   used resource;
        get {
            let rv = _ptr.pointee.app_name
            return rv
        }
        /// the name of the application that is registering this recently
        ///   used resource;
         set {
            _ptr.pointee.app_name = newValue
        }
    }

    /// command line used to launch this resource; may contain the
    ///   “\`f`” and “\`u`” escape characters which will be expanded
    ///   to the resource file path and URI respectively when the command line
    ///   is retrieved;
    @inlinable var appExec: UnsafeMutablePointer<CChar>! {
        /// command line used to launch this resource; may contain the
        ///   “\`f`” and “\`u`” escape characters which will be expanded
        ///   to the resource file path and URI respectively when the command line
        ///   is retrieved;
        get {
            let rv = _ptr.pointee.app_exec
            return rv
        }
        /// command line used to launch this resource; may contain the
        ///   “\`f`” and “\`u`” escape characters which will be expanded
        ///   to the resource file path and URI respectively when the command line
        ///   is retrieved;
         set {
            _ptr.pointee.app_exec = newValue
        }
    }

    /// a vector of strings containing
    ///   groups names;
    @inlinable var groups: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        /// a vector of strings containing
        ///   groups names;
        get {
            let rv = _ptr.pointee.groups
            return rv
        }
        /// a vector of strings containing
        ///   groups names;
         set {
            _ptr.pointee.groups = newValue
        }
    }

    /// whether this resource should be displayed only by the
    ///   applications that have registered it or not.
    @inlinable var isPrivate: gboolean {
        /// whether this resource should be displayed only by the
        ///   applications that have registered it or not.
        get {
            let rv = _ptr.pointee.is_private
            return rv
        }
        /// whether this resource should be displayed only by the
        ///   applications that have registered it or not.
         set {
            _ptr.pointee.is_private = newValue
        }
    }

}



// MARK: - RecentInfo Record

/// The `RecentInfoProtocol` protocol exposes the methods and properties of an underlying `GtkRecentInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentInfo`.
/// Alternatively, use `RecentInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentInfo` contains private data only, and should be accessed using the
/// provided API.
/// 
/// `GtkRecentInfo` contains all the meta-data
/// associated with an entry in the recently used files list.
public protocol RecentInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentInfo` instance.
    var recent_info_ptr: UnsafeMutablePointer<GtkRecentInfo>! { get }

}

/// The `RecentInfoRef` type acts as a lightweight Swift reference to an underlying `GtkRecentInfo` instance.
/// It exposes methods that can operate on this data type through `RecentInfoProtocol` conformance.
/// Use `RecentInfoRef` only as an `unowned` reference to an existing `GtkRecentInfo` instance.
///
/// `GtkRecentInfo` contains private data only, and should be accessed using the
/// provided API.
/// 
/// `GtkRecentInfo` contains all the meta-data
/// associated with an entry in the recently used files list.
public struct RecentInfoRef: RecentInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    /// For type-safe access, use the generated, typed pointer `recent_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentInfo>?) {
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

    /// Reference intialiser for a related type that implements `RecentInfoProtocol`
    @inlinable init<T: RecentInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentInfo` type acts as a reference-counted owner of an underlying `GtkRecentInfo` instance.
/// It provides the methods that can operate on this data type through `RecentInfoProtocol` conformance.
/// Use `RecentInfo` as a strong reference or owner of a `GtkRecentInfo` instance.
///
/// `GtkRecentInfo` contains private data only, and should be accessed using the
/// provided API.
/// 
/// `GtkRecentInfo` contains all the meta-data
/// associated with an entry in the recently used files list.
open class RecentInfo: RecentInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    /// For type-safe access, use the generated, typed pointer `recent_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentInfo`.
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Reference intialiser for a related type that implements `RecentInfoProtocol`
    /// Will retain `GtkRecentInfo`.
    /// - Parameter other: an instance of a related type that implements `RecentInfoProtocol`
    @inlinable public init<T: RecentInfoProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Releases the underlying `GtkRecentInfo` instance using `gtk_recent_info_unref`.
    deinit {
        gtk_recent_info_unref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }



}

// MARK: no RecentInfo properties

// MARK: no RecentInfo signals

// MARK: RecentInfo has no signals
// MARK: RecentInfo Record: RecentInfoProtocol extension (methods and fields)
public extension RecentInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentInfo` instance.
    @inlinable var recent_info_ptr: UnsafeMutablePointer<GtkRecentInfo>! { return ptr?.assumingMemoryBound(to: GtkRecentInfo.self) }

    /// Creates a `GAppInfo` for the specified `GtkRecentInfo`
    @inlinable func createAppInfo(appName: UnsafePointer<CChar>? = nil) throws -> GIO.AppInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GIO.AppInfoRef(gtk_recent_info_create_app_info(recent_info_ptr, appName, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks whether the resource pointed by `info` still exists.
    /// At the moment this check is done only on resources pointing
    /// to local files.
    @inlinable func exists() -> Bool {
        let rv = ((gtk_recent_info_exists(recent_info_ptr)) != 0)
        return rv
    }

    /// Gets the the time when the resource
    /// was added to the recently used resources list.
    @inlinable func getAdded() -> GLib.DateTimeRef! {
        let rv = GLib.DateTimeRef(gtk_recent_info_get_added(recent_info_ptr))
        return rv
    }

    /// Gets the number of days elapsed since the last update
    /// of the resource pointed by `info`.
    @inlinable func getAge() -> Int {
        let rv = Int(gtk_recent_info_get_age(recent_info_ptr))
        return rv
    }

    /// Gets the data regarding the application that has registered the resource
    /// pointed by `info`.
    /// 
    /// If the command line contains any escape characters defined inside the
    /// storage specification, they will be expanded.
    @inlinable func getApplicationInfo(appName: UnsafePointer<CChar>!, appExec: UnsafeMutablePointer<UnsafePointer<CChar>?>!, count: UnsafeMutablePointer<guint>!, stamp: UnsafeMutablePointer<UnsafeMutablePointer<GDateTime>?>!) -> Bool {
        let rv = ((gtk_recent_info_get_application_info(recent_info_ptr, appName, appExec, count, stamp)) != 0)
        return rv
    }

    /// Retrieves the list of applications that have registered this resource.
    @inlinable func getApplications(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = gtk_recent_info_get_applications(recent_info_ptr, length)
        return rv
    }

    /// Gets the (short) description of the resource.
    @inlinable func getDescription() -> String! {
        let rv = gtk_recent_info_get_description(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the name of the resource. If none has been defined, the basename
    /// of the resource is obtained.
    @inlinable func getDisplayName() -> String! {
        let rv = gtk_recent_info_get_display_name(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the icon associated to the resource MIME type.
    @inlinable func getGicon() -> GIO.IconRef! {
        let rv = GIO.IconRef(gtk_recent_info_get_gicon(recent_info_ptr))
        return rv
    }

    /// Returns all groups registered for the recently used item `info`.
    /// The array of returned group names will be `nil` terminated, so
    /// length might optionally be `nil`.
    @inlinable func getGroups(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = gtk_recent_info_get_groups(recent_info_ptr, length)
        return rv
    }

    /// Gets the MIME type of the resource.
    @inlinable func getMimeType() -> String! {
        let rv = gtk_recent_info_get_mime_type(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the time when the meta-data
    /// for the resource was last modified.
    @inlinable func getModified() -> GLib.DateTimeRef! {
        let rv = GLib.DateTimeRef(gtk_recent_info_get_modified(recent_info_ptr))
        return rv
    }

    /// Gets the value of the “private” flag. Resources in the recently used
    /// list that have this flag set to `true` should only be displayed by the
    /// applications that have registered them.
    @inlinable func getPrivateHint() -> Bool {
        let rv = ((gtk_recent_info_get_private_hint(recent_info_ptr)) != 0)
        return rv
    }

    /// Computes a valid UTF-8 string that can be used as the
    /// name of the item in a menu or list. For example, calling
    /// this function on an item that refers to
    /// “file:///foo/bar.txt” will yield “bar.txt”.
    @inlinable func getShortName() -> String! {
        let rv = gtk_recent_info_get_short_name(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the URI of the resource.
    @inlinable func getUri() -> String! {
        let rv = gtk_recent_info_get_uri(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a displayable version of the resource’s URI. If the resource
    /// is local, it returns a local path; if the resource is not local,
    /// it returns the UTF-8 encoded content of `gtk_recent_info_get_uri()`.
    @inlinable func getUriDisplay() -> String! {
        let rv = gtk_recent_info_get_uri_display(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the time when the meta-data
    /// for the resource was last visited.
    @inlinable func getVisited() -> GLib.DateTimeRef! {
        let rv = GLib.DateTimeRef(gtk_recent_info_get_visited(recent_info_ptr))
        return rv
    }

    /// Checks whether an application registered this resource using `app_name`.
    @inlinable func hasApplication(appName: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_recent_info_has_application(recent_info_ptr, appName)) != 0)
        return rv
    }

    /// Checks whether `group_name` appears inside the groups
    /// registered for the recently used item `info`.
    @inlinable func hasGroup(groupName: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_recent_info_has_group(recent_info_ptr, groupName)) != 0)
        return rv
    }

    /// Gets the name of the last application that have registered the
    /// recently used resource represented by `info`.
    @inlinable func lastApplication() -> String! {
        let rv = gtk_recent_info_last_application(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks whether two `GtkRecentInfo` point to the same resource.
    @inlinable func match<RecentInfoT: RecentInfoProtocol>(infoB: RecentInfoT) -> Bool {
        let rv = ((gtk_recent_info_match(recent_info_ptr, infoB.recent_info_ptr)) != 0)
        return rv
    }

    /// Increases the reference count of `recent_info` by one.
    @discardableResult @inlinable func ref() -> RecentInfoRef! {
        guard let rv = RecentInfoRef(gconstpointer: gconstpointer(gtk_recent_info_ref(recent_info_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count of `info` by one. If the reference
    /// count reaches zero, `info` is deallocated, and the memory freed.
    @inlinable func unref() {
        gtk_recent_info_unref(recent_info_ptr)
    
    }
    /// Gets the the time when the resource
    /// was added to the recently used resources list.
    @inlinable var added: GLib.DateTimeRef! {
        /// Gets the the time when the resource
        /// was added to the recently used resources list.
        get {
            let rv = GLib.DateTimeRef(gtk_recent_info_get_added(recent_info_ptr))
            return rv
        }
    }

    /// Gets the number of days elapsed since the last update
    /// of the resource pointed by `info`.
    @inlinable var age: Int {
        /// Gets the number of days elapsed since the last update
        /// of the resource pointed by `info`.
        get {
            let rv = Int(gtk_recent_info_get_age(recent_info_ptr))
            return rv
        }
    }

    /// Gets the (short) description of the resource.
    @inlinable var description: String! {
        /// Gets the (short) description of the resource.
        get {
            let rv = gtk_recent_info_get_description(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the name of the resource. If none has been defined, the basename
    /// of the resource is obtained.
    @inlinable var displayName: String! {
        /// Gets the name of the resource. If none has been defined, the basename
        /// of the resource is obtained.
        get {
            let rv = gtk_recent_info_get_display_name(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves the icon associated to the resource MIME type.
    @inlinable var gicon: GIO.IconRef! {
        /// Retrieves the icon associated to the resource MIME type.
        get {
            let rv = GIO.IconRef(gtk_recent_info_get_gicon(recent_info_ptr))
            return rv
        }
    }

    /// Checks whether the resource is local or not by looking at the
    /// scheme of its URI.
    @inlinable var isLocal: Bool {
        /// Checks whether the resource is local or not by looking at the
        /// scheme of its URI.
        get {
            let rv = ((gtk_recent_info_is_local(recent_info_ptr)) != 0)
            return rv
        }
    }

    /// Gets the MIME type of the resource.
    @inlinable var mimeType: String! {
        /// Gets the MIME type of the resource.
        get {
            let rv = gtk_recent_info_get_mime_type(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the time when the meta-data
    /// for the resource was last modified.
    @inlinable var modified: GLib.DateTimeRef! {
        /// Gets the time when the meta-data
        /// for the resource was last modified.
        get {
            let rv = GLib.DateTimeRef(gtk_recent_info_get_modified(recent_info_ptr))
            return rv
        }
    }

    /// Gets the value of the “private” flag. Resources in the recently used
    /// list that have this flag set to `true` should only be displayed by the
    /// applications that have registered them.
    @inlinable var privateHint: Bool {
        /// Gets the value of the “private” flag. Resources in the recently used
        /// list that have this flag set to `true` should only be displayed by the
        /// applications that have registered them.
        get {
            let rv = ((gtk_recent_info_get_private_hint(recent_info_ptr)) != 0)
            return rv
        }
    }

    /// Computes a valid UTF-8 string that can be used as the
    /// name of the item in a menu or list. For example, calling
    /// this function on an item that refers to
    /// “file:///foo/bar.txt” will yield “bar.txt”.
    @inlinable var shortName: String! {
        /// Computes a valid UTF-8 string that can be used as the
        /// name of the item in a menu or list. For example, calling
        /// this function on an item that refers to
        /// “file:///foo/bar.txt” will yield “bar.txt”.
        get {
            let rv = gtk_recent_info_get_short_name(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the URI of the resource.
    @inlinable var uri: String! {
        /// Gets the URI of the resource.
        get {
            let rv = gtk_recent_info_get_uri(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets a displayable version of the resource’s URI. If the resource
    /// is local, it returns a local path; if the resource is not local,
    /// it returns the UTF-8 encoded content of `gtk_recent_info_get_uri()`.
    @inlinable var uriDisplay: String! {
        /// Gets a displayable version of the resource’s URI. If the resource
        /// is local, it returns a local path; if the resource is not local,
        /// it returns the UTF-8 encoded content of `gtk_recent_info_get_uri()`.
        get {
            let rv = gtk_recent_info_get_uri_display(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the time when the meta-data
    /// for the resource was last visited.
    @inlinable var visited: GLib.DateTimeRef! {
        /// Gets the time when the meta-data
        /// for the resource was last visited.
        get {
            let rv = GLib.DateTimeRef(gtk_recent_info_get_visited(recent_info_ptr))
            return rv
        }
    }


}



/// Metatype/GType declaration for RecentManager
public extension RecentManagerClassRef {
    
    /// This getter returns the GLib type identifier registered for `RecentManager`
    static var metatypeReference: GType { gtk_recent_manager_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRecentManagerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRecentManagerClass.self) }
    
    static var metatype: GtkRecentManagerClass? { metatypePointer?.pointee } 
    
    static var wrapper: RecentManagerClassRef? { RecentManagerClassRef(metatypePointer) }
    
    
}

// MARK: - RecentManagerClass Record

/// The `RecentManagerClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentManagerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentManagerClass`.
/// Alternatively, use `RecentManagerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentManagerClass` contains only private data.
public protocol RecentManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentManagerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentManagerClass>! { get }

}

/// The `RecentManagerClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentManagerClass` instance.
/// It exposes methods that can operate on this data type through `RecentManagerClassProtocol` conformance.
/// Use `RecentManagerClassRef` only as an `unowned` reference to an existing `GtkRecentManagerClass` instance.
///
/// `GtkRecentManagerClass` contains only private data.
public struct RecentManagerClassRef: RecentManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentManagerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentManagerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentManagerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentManagerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentManagerClass>?) {
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

    /// Reference intialiser for a related type that implements `RecentManagerClassProtocol`
    @inlinable init<T: RecentManagerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RecentManagerClass Record: RecentManagerClassProtocol extension (methods and fields)
public extension RecentManagerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentManagerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentManagerClass>! { return ptr?.assumingMemoryBound(to: GtkRecentManagerClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var changed is unavailable because changed is void

    // var GtkRecent1 is unavailable because _gtk_recent1 is void

    // var GtkRecent2 is unavailable because _gtk_recent2 is void

    // var GtkRecent3 is unavailable because _gtk_recent3 is void

    // var GtkRecent4 is unavailable because _gtk_recent4 is void

}



// MARK: - RequestedSize Record

/// The `RequestedSizeProtocol` protocol exposes the methods and properties of an underlying `GtkRequestedSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RequestedSize`.
/// Alternatively, use `RequestedSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See `gtk_distribute_natural_allocation()`.
public protocol RequestedSizeProtocol {
        /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRequestedSize` instance.
    var _ptr: UnsafeMutablePointer<GtkRequestedSize>! { get }

}

/// The `RequestedSizeRef` type acts as a lightweight Swift reference to an underlying `GtkRequestedSize` instance.
/// It exposes methods that can operate on this data type through `RequestedSizeProtocol` conformance.
/// Use `RequestedSizeRef` only as an `unowned` reference to an existing `GtkRequestedSize` instance.
///
/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See `gtk_distribute_natural_allocation()`.
public struct RequestedSizeRef: RequestedSizeProtocol {
        /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RequestedSizeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRequestedSize>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRequestedSize>?) {
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

    /// Reference intialiser for a related type that implements `RequestedSizeProtocol`
    @inlinable init<T: RequestedSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RequestedSize` type acts as an owner of an underlying `GtkRequestedSize` instance.
/// It provides the methods that can operate on this data type through `RequestedSizeProtocol` conformance.
/// Use `RequestedSize` as a strong reference or owner of a `GtkRequestedSize` instance.
///
/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See `gtk_distribute_natural_allocation()`.
open class RequestedSize: RequestedSizeProtocol {
        /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRequestedSize>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRequestedSize>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRequestedSize` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RequestedSizeProtocol`
    /// `GtkRequestedSize` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RequestedSizeProtocol`
    @inlinable public init<T: RequestedSizeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRequestedSize`.
    deinit {
        // no reference counting for GtkRequestedSize, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }



}

// MARK: no RequestedSize properties

// MARK: no RequestedSize signals

// MARK: RequestedSize has no signals
// MARK: RequestedSize Record: RequestedSizeProtocol extension (methods and fields)
public extension RequestedSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRequestedSize` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRequestedSize>! { return ptr?.assumingMemoryBound(to: GtkRequestedSize.self) }

    /// Distributes `extra_space` to child `sizes` by bringing smaller
    /// children up to natural size first.
    /// 
    /// The remaining space will be added to the `minimum_size` member of the
    /// GtkRequestedSize struct. If all sizes reach their natural size then
    /// the remaining space is returned.
    @inlinable func distributeNaturalAllocation(extraSpace: Int, nRequestedSizes: Int) -> Int {
        let rv = Int(gtk_distribute_natural_allocation(gint(extraSpace), guint(nRequestedSizes), _ptr))
        return rv
    }

    /// A client pointer
    @inlinable var data: gpointer! {
        /// A client pointer
        get {
            let rv = _ptr.pointee.data
            return rv
        }
        /// A client pointer
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// The minimum size needed for allocation in a given orientation
    @inlinable var minimumSize: gint {
        /// The minimum size needed for allocation in a given orientation
        get {
            let rv = _ptr.pointee.minimum_size
            return rv
        }
        /// The minimum size needed for allocation in a given orientation
         set {
            _ptr.pointee.minimum_size = newValue
        }
    }

    /// The natural size for allocation in a given orientation
    @inlinable var naturalSize: gint {
        /// The natural size for allocation in a given orientation
        get {
            let rv = _ptr.pointee.natural_size
            return rv
        }
        /// The natural size for allocation in a given orientation
         set {
            _ptr.pointee.natural_size = newValue
        }
    }

}



// MARK: - Requisition Record

/// The `RequisitionProtocol` protocol exposes the methods and properties of an underlying `GtkRequisition` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Requisition`.
/// Alternatively, use `RequisitionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkRequisition`-struct represents the desired size of a widget. See
/// [GtkWidget’s geometry management section](#geometry-management) for
/// more information.
public protocol RequisitionProtocol {
        /// Untyped pointer to the underlying `GtkRequisition` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRequisition` instance.
    var requisition_ptr: UnsafeMutablePointer<GtkRequisition>! { get }

}

/// The `RequisitionRef` type acts as a lightweight Swift reference to an underlying `GtkRequisition` instance.
/// It exposes methods that can operate on this data type through `RequisitionProtocol` conformance.
/// Use `RequisitionRef` only as an `unowned` reference to an existing `GtkRequisition` instance.
///
/// A `GtkRequisition`-struct represents the desired size of a widget. See
/// [GtkWidget’s geometry management section](#geometry-management) for
/// more information.
public struct RequisitionRef: RequisitionProtocol {
        /// Untyped pointer to the underlying `GtkRequisition` instance.
    /// For type-safe access, use the generated, typed pointer `requisition_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RequisitionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRequisition>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRequisition>?) {
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

    /// Reference intialiser for a related type that implements `RequisitionProtocol`
    @inlinable init<T: RequisitionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a new `GtkRequisition`-struct and initializes its elements to zero.
    @inlinable init() {
        let rv = gtk_requisition_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Requisition` type acts as an owner of an underlying `GtkRequisition` instance.
/// It provides the methods that can operate on this data type through `RequisitionProtocol` conformance.
/// Use `Requisition` as a strong reference or owner of a `GtkRequisition` instance.
///
/// A `GtkRequisition`-struct represents the desired size of a widget. See
/// [GtkWidget’s geometry management section](#geometry-management) for
/// more information.
open class Requisition: RequisitionProtocol {
        /// Untyped pointer to the underlying `GtkRequisition` instance.
    /// For type-safe access, use the generated, typed pointer `requisition_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRequisition>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRequisition>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRequisition` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Reference intialiser for a related type that implements `RequisitionProtocol`
    /// `GtkRequisition` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RequisitionProtocol`
    @inlinable public init<T: RequisitionProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Do-nothing destructor for `GtkRequisition`.
    deinit {
        // no reference counting for GtkRequisition, cannot unref(requisition_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Allocates a new `GtkRequisition`-struct and initializes its elements to zero.
    @inlinable public init() {
        let rv = gtk_requisition_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Requisition properties

// MARK: no Requisition signals

// MARK: Requisition has no signals
// MARK: Requisition Record: RequisitionProtocol extension (methods and fields)
public extension RequisitionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRequisition` instance.
    @inlinable var requisition_ptr: UnsafeMutablePointer<GtkRequisition>! { return ptr?.assumingMemoryBound(to: GtkRequisition.self) }

    /// Copies a `GtkRequisition`.
    @inlinable func copy() -> RequisitionRef! {
        guard let rv = RequisitionRef(gconstpointer: gconstpointer(gtk_requisition_copy(requisition_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GtkRequisition`.
    @inlinable func free() {
        gtk_requisition_free(requisition_ptr)
    
    }

    /// the widget’s desired width
    @inlinable var width: gint {
        /// the widget’s desired width
        get {
            let rv = requisition_ptr.pointee.width
            return rv
        }
        /// the widget’s desired width
         set {
            requisition_ptr.pointee.width = newValue
        }
    }

    /// the widget’s desired height
    @inlinable var height: gint {
        /// the widget’s desired height
        get {
            let rv = requisition_ptr.pointee.height
            return rv
        }
        /// the widget’s desired height
         set {
            requisition_ptr.pointee.height = newValue
        }
    }

}



/// Metatype/GType declaration for Root
public extension RootInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Root`
    static var metatypeReference: GType { gtk_root_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRootInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRootInterface.self) }
    
    static var metatype: GtkRootInterface? { metatypePointer?.pointee } 
    
    static var wrapper: RootInterfaceRef? { RootInterfaceRef(metatypePointer) }
    
    
}

// MARK: - RootInterface Record

/// The `RootInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkRootInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RootInterface`.
/// Alternatively, use `RootInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RootInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkRootInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRootInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkRootInterface>! { get }

}

/// The `RootInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkRootInterface` instance.
/// It exposes methods that can operate on this data type through `RootInterfaceProtocol` conformance.
/// Use `RootInterfaceRef` only as an `unowned` reference to an existing `GtkRootInterface` instance.
///

public struct RootInterfaceRef: RootInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkRootInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RootInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRootInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRootInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRootInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRootInterface>?) {
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

    /// Reference intialiser for a related type that implements `RootInterfaceProtocol`
    @inlinable init<T: RootInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RootInterface Record: RootInterfaceProtocol extension (methods and fields)
public extension RootInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRootInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRootInterface>! { return ptr?.assumingMemoryBound(to: GtkRootInterface.self) }



}



/// Metatype/GType declaration for ScaleButton
public extension ScaleButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `ScaleButton`
    static var metatypeReference: GType { gtk_scale_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScaleButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScaleButtonClass.self) }
    
    static var metatype: GtkScaleButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScaleButtonClassRef? { ScaleButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ScaleButtonClass Record

/// The `ScaleButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleButtonClass`.
/// Alternatively, use `ScaleButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScaleButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonClass>! { get }

}

/// The `ScaleButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleButtonClass` instance.
/// It exposes methods that can operate on this data type through `ScaleButtonClassProtocol` conformance.
/// Use `ScaleButtonClassRef` only as an `unowned` reference to an existing `GtkScaleButtonClass` instance.
///

public struct ScaleButtonClassRef: ScaleButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScaleButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScaleButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScaleButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScaleButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScaleButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ScaleButtonClassProtocol`
    @inlinable init<T: ScaleButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScaleButtonClass Record: ScaleButtonClassProtocol extension (methods and fields)
public extension ScaleButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScaleButtonClass>! { return ptr?.assumingMemoryBound(to: GtkScaleButtonClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var valueChanged is unavailable because value_changed is void

    // var padding is unavailable because padding is private

}



