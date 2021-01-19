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

// MARK: - _MountOperationHandlerIface Record

/// The `_MountOperationHandlerIfaceProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerIface`.
/// Alternatively, use `_MountOperationHandlerIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Virtual table for the D-Bus interface &lt;link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page"&gt;org.Gtk.MountOperationHandler&lt;/link&gt;.
public protocol _MountOperationHandlerIfaceProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerIface>! { get }

    /// Required Initialiser for types conforming to `_MountOperationHandlerIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `_MountOperationHandlerIfaceRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerIface` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerIfaceProtocol` conformance.
/// Use `_MountOperationHandlerIfaceRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerIface` instance.
///
/// Virtual table for the D-Bus interface &lt;link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page"&gt;org.Gtk.MountOperationHandler&lt;/link&gt;.
public struct _MountOperationHandlerIfaceRef: _MountOperationHandlerIfaceProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandlerIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandlerIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandlerIface>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerIfaceProtocol`
    @inlinable init<T: _MountOperationHandlerIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerIface` type acts as an owner of an underlying `_GtkMountOperationHandlerIface` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerIfaceProtocol` conformance.
/// Use `_MountOperationHandlerIface` as a strong reference or owner of a `_GtkMountOperationHandlerIface` instance.
///
/// Virtual table for the D-Bus interface &lt;link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page"&gt;org.Gtk.MountOperationHandler&lt;/link&gt;.
open class _MountOperationHandlerIface: _MountOperationHandlerIfaceProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandlerIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerIface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandlerIface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerIface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandlerIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandlerIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandlerIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandlerIface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerIfaceProtocol`
    /// `_GtkMountOperationHandlerIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerIfaceProtocol`
    @inlinable public init<T: _MountOperationHandlerIfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandlerIface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandlerIface`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerIface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandlerIface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandlerIface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandlerIface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandlerIface, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandlerIface properties

// MARK: no _MountOperationHandlerIface signals

// MARK: _MountOperationHandlerIface has no signals
// MARK: _MountOperationHandlerIface Record: _MountOperationHandlerIfaceProtocol extension (methods and fields)
public extension _MountOperationHandlerIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerIface>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandlerIface.self) }


    /// The parent interface.
#if false
    @inlinable var parentIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.parent_iface
            return rv
        }
        /// The parent interface.
         set {
            _ptr.pointee.parent_iface = newValue
        }
    }
#endif

    // var handleAskPassword is unavailable because handle_ask_password is void

    // var handleAskQuestion is unavailable because handle_ask_question is void

    // var handleClose is unavailable because handle_close is void

    // var handleShowProcesses is unavailable because handle_show_processes is void

}



// MARK: - _MountOperationHandlerProxy Record

/// The `_MountOperationHandlerProxyProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerProxy` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerProxy`.
/// Alternatively, use `_MountOperationHandlerProxyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `_GtkMountOperationHandlerProxy` structure contains only private data and should only be accessed using the provided API.
public protocol _MountOperationHandlerProxyProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>! { get }

    /// Required Initialiser for types conforming to `_MountOperationHandlerProxyProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `_MountOperationHandlerProxyRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerProxy` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProxyProtocol` conformance.
/// Use `_MountOperationHandlerProxyRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerProxy` instance.
///
/// The `_GtkMountOperationHandlerProxy` structure contains only private data and should only be accessed using the provided API.
public struct _MountOperationHandlerProxyRef: _MountOperationHandlerProxyProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerProxyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandlerProxy>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandlerProxy>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyProtocol`
    @inlinable init<T: _MountOperationHandlerProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerProxy` type acts as an owner of an underlying `_GtkMountOperationHandlerProxy` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerProxyProtocol` conformance.
/// Use `_MountOperationHandlerProxy` as a strong reference or owner of a `_GtkMountOperationHandlerProxy` instance.
///
/// The `_GtkMountOperationHandlerProxy` structure contains only private data and should only be accessed using the provided API.
open class _MountOperationHandlerProxy: _MountOperationHandlerProxyProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandlerProxy>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxy` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandlerProxy>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandlerProxy` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandlerProxy, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyProtocol`
    /// `_GtkMountOperationHandlerProxy` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerProxyProtocol`
    @inlinable public init<T: _MountOperationHandlerProxyProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandlerProxy, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandlerProxy`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerProxy, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandlerProxy, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandlerProxy, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandlerProxy, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandlerProxy, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandlerProxy properties

// MARK: no _MountOperationHandlerProxy signals

// MARK: _MountOperationHandlerProxy has no signals
// MARK: _MountOperationHandlerProxy Record: _MountOperationHandlerProxyProtocol extension (methods and fields)
public extension _MountOperationHandlerProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerProxy` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandlerProxy.self) }


    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - _MountOperationHandlerProxyClass Record

/// The `_MountOperationHandlerProxyClassProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerProxyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerProxyClass`.
/// Alternatively, use `_MountOperationHandlerProxyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `_GtkMountOperationHandlerProxy`.
public protocol _MountOperationHandlerProxyClassProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>! { get }

    /// Required Initialiser for types conforming to `_MountOperationHandlerProxyClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `_MountOperationHandlerProxyClassRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerProxyClass` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProxyClassProtocol` conformance.
/// Use `_MountOperationHandlerProxyClassRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerProxyClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerProxy`.
public struct _MountOperationHandlerProxyClassRef: _MountOperationHandlerProxyClassProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerProxyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandlerProxyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandlerProxyClass>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyClassProtocol`
    @inlinable init<T: _MountOperationHandlerProxyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerProxyClass` type acts as an owner of an underlying `_GtkMountOperationHandlerProxyClass` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerProxyClassProtocol` conformance.
/// Use `_MountOperationHandlerProxyClass` as a strong reference or owner of a `_GtkMountOperationHandlerProxyClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerProxy`.
open class _MountOperationHandlerProxyClass: _MountOperationHandlerProxyClassProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandlerProxyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandlerProxyClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandlerProxyClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyClassProtocol`
    /// `_GtkMountOperationHandlerProxyClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerProxyClassProtocol`
    @inlinable public init<T: _MountOperationHandlerProxyClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandlerProxyClass`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandlerProxyClass properties

// MARK: no _MountOperationHandlerProxyClass signals

// MARK: _MountOperationHandlerProxyClass has no signals
// MARK: _MountOperationHandlerProxyClass Record: _MountOperationHandlerProxyClassProtocol extension (methods and fields)
public extension _MountOperationHandlerProxyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerProxyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandlerProxyClass.self) }


    /// The parent class.
#if false
    @inlinable var parentClass: GDBusProxyClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
        /// The parent class.
         set {
            _ptr.pointee.parent_class = newValue
        }
    }
#endif

}



// MARK: - _MountOperationHandlerProxyPrivate Record

/// The `_MountOperationHandlerProxyPrivateProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerProxyPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerProxyPrivate`.
/// Alternatively, use `_MountOperationHandlerProxyPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol _MountOperationHandlerProxyPrivateProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>! { get }

    /// Required Initialiser for types conforming to `_MountOperationHandlerProxyPrivateProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `_MountOperationHandlerProxyPrivateRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerProxyPrivate` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProxyPrivateProtocol` conformance.
/// Use `_MountOperationHandlerProxyPrivateRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerProxyPrivate` instance.
///

public struct _MountOperationHandlerProxyPrivateRef: _MountOperationHandlerProxyPrivateProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerProxyPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandlerProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandlerProxyPrivate>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyPrivateProtocol`
    @inlinable init<T: _MountOperationHandlerProxyPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerProxyPrivate` type acts as an owner of an underlying `_GtkMountOperationHandlerProxyPrivate` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerProxyPrivateProtocol` conformance.
/// Use `_MountOperationHandlerProxyPrivate` as a strong reference or owner of a `_GtkMountOperationHandlerProxyPrivate` instance.
///

open class _MountOperationHandlerProxyPrivate: _MountOperationHandlerProxyPrivateProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandlerProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandlerProxyPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandlerProxyPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyPrivateProtocol`
    /// `_GtkMountOperationHandlerProxyPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerProxyPrivateProtocol`
    @inlinable public init<T: _MountOperationHandlerProxyPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandlerProxyPrivate`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandlerProxyPrivate properties

// MARK: no _MountOperationHandlerProxyPrivate signals

// MARK: _MountOperationHandlerProxyPrivate has no signals
// MARK: _MountOperationHandlerProxyPrivate Record: _MountOperationHandlerProxyPrivateProtocol extension (methods and fields)
public extension _MountOperationHandlerProxyPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerProxyPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandlerProxyPrivate.self) }



}



// MARK: - _MountOperationHandlerSkeleton Record

/// The `_MountOperationHandlerSkeletonProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerSkeleton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerSkeleton`.
/// Alternatively, use `_MountOperationHandlerSkeletonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `_GtkMountOperationHandlerSkeleton` structure contains only private data and should only be accessed using the provided API.
public protocol _MountOperationHandlerSkeletonProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>! { get }

    /// Required Initialiser for types conforming to `_MountOperationHandlerSkeletonProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `_MountOperationHandlerSkeletonRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerSkeleton` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerSkeletonProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerSkeleton` instance.
///
/// The `_GtkMountOperationHandlerSkeleton` structure contains only private data and should only be accessed using the provided API.
public struct _MountOperationHandlerSkeletonRef: _MountOperationHandlerSkeletonProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerSkeletonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandlerSkeleton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandlerSkeleton>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonProtocol`
    @inlinable init<T: _MountOperationHandlerSkeletonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerSkeleton` type acts as an owner of an underlying `_GtkMountOperationHandlerSkeleton` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerSkeletonProtocol` conformance.
/// Use `_MountOperationHandlerSkeleton` as a strong reference or owner of a `_GtkMountOperationHandlerSkeleton` instance.
///
/// The `_GtkMountOperationHandlerSkeleton` structure contains only private data and should only be accessed using the provided API.
open class _MountOperationHandlerSkeleton: _MountOperationHandlerSkeletonProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandlerSkeleton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandlerSkeleton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandlerSkeleton` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonProtocol`
    /// `_GtkMountOperationHandlerSkeleton` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerSkeletonProtocol`
    @inlinable public init<T: _MountOperationHandlerSkeletonProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandlerSkeleton`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandlerSkeleton properties

// MARK: no _MountOperationHandlerSkeleton signals

// MARK: _MountOperationHandlerSkeleton has no signals
// MARK: _MountOperationHandlerSkeleton Record: _MountOperationHandlerSkeletonProtocol extension (methods and fields)
public extension _MountOperationHandlerSkeletonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerSkeleton` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandlerSkeleton.self) }


    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - _MountOperationHandlerSkeletonClass Record

/// The `_MountOperationHandlerSkeletonClassProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerSkeletonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerSkeletonClass`.
/// Alternatively, use `_MountOperationHandlerSkeletonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `_GtkMountOperationHandlerSkeleton`.
public protocol _MountOperationHandlerSkeletonClassProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>! { get }

    /// Required Initialiser for types conforming to `_MountOperationHandlerSkeletonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `_MountOperationHandlerSkeletonClassRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerSkeletonClass` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerSkeletonClassProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonClassRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerSkeletonClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerSkeleton`.
public struct _MountOperationHandlerSkeletonClassRef: _MountOperationHandlerSkeletonClassProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerSkeletonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandlerSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandlerSkeletonClass>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonClassProtocol`
    @inlinable init<T: _MountOperationHandlerSkeletonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerSkeletonClass` type acts as an owner of an underlying `_GtkMountOperationHandlerSkeletonClass` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerSkeletonClassProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonClass` as a strong reference or owner of a `_GtkMountOperationHandlerSkeletonClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerSkeleton`.
open class _MountOperationHandlerSkeletonClass: _MountOperationHandlerSkeletonClassProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandlerSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandlerSkeletonClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandlerSkeletonClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonClassProtocol`
    /// `_GtkMountOperationHandlerSkeletonClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerSkeletonClassProtocol`
    @inlinable public init<T: _MountOperationHandlerSkeletonClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandlerSkeletonClass`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandlerSkeletonClass properties

// MARK: no _MountOperationHandlerSkeletonClass signals

// MARK: _MountOperationHandlerSkeletonClass has no signals
// MARK: _MountOperationHandlerSkeletonClass Record: _MountOperationHandlerSkeletonClassProtocol extension (methods and fields)
public extension _MountOperationHandlerSkeletonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerSkeletonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonClass.self) }


    /// The parent class.
#if false
    @inlinable var parentClass: GDBusInterfaceSkeletonClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
        /// The parent class.
         set {
            _ptr.pointee.parent_class = newValue
        }
    }
#endif

}



// MARK: - _MountOperationHandlerSkeletonPrivate Record

/// The `_MountOperationHandlerSkeletonPrivateProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerSkeletonPrivate`.
/// Alternatively, use `_MountOperationHandlerSkeletonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol _MountOperationHandlerSkeletonPrivateProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>! { get }

    /// Required Initialiser for types conforming to `_MountOperationHandlerSkeletonPrivateProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `_MountOperationHandlerSkeletonPrivateRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerSkeletonPrivateProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonPrivateRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerSkeletonPrivate` instance.
///

public struct _MountOperationHandlerSkeletonPrivateRef: _MountOperationHandlerSkeletonPrivateProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerSkeletonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandlerSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandlerSkeletonPrivate>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonPrivateProtocol`
    @inlinable init<T: _MountOperationHandlerSkeletonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerSkeletonPrivate` type acts as an owner of an underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerSkeletonPrivateProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonPrivate` as a strong reference or owner of a `_GtkMountOperationHandlerSkeletonPrivate` instance.
///

open class _MountOperationHandlerSkeletonPrivate: _MountOperationHandlerSkeletonPrivateProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandlerSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandlerSkeletonPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandlerSkeletonPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonPrivateProtocol`
    /// `_GtkMountOperationHandlerSkeletonPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerSkeletonPrivateProtocol`
    @inlinable public init<T: _MountOperationHandlerSkeletonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandlerSkeletonPrivate`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandlerSkeletonPrivate properties

// MARK: no _MountOperationHandlerSkeletonPrivate signals

// MARK: _MountOperationHandlerSkeletonPrivate has no signals
// MARK: _MountOperationHandlerSkeletonPrivate Record: _MountOperationHandlerSkeletonPrivateProtocol extension (methods and fields)
public extension _MountOperationHandlerSkeletonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerSkeletonPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonPrivate.self) }



}



