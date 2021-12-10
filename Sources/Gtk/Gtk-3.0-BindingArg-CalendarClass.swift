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

// MARK: - BindingArg Record

/// A `GtkBindingArg` holds the data associated with
/// an argument for a key binding signal emission as
/// stored in `GtkBindingSignal`.
///
/// The `BindingArgProtocol` protocol exposes the methods and properties of an underlying `GtkBindingArg` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingArg`.
/// Alternatively, use `BindingArgRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BindingArgProtocol {
        /// Untyped pointer to the underlying `GtkBindingArg` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBindingArg` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingArg>! { get }

    /// Required Initialiser for types conforming to `BindingArgProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkBindingArg` holds the data associated with
/// an argument for a key binding signal emission as
/// stored in `GtkBindingSignal`.
///
/// The `BindingArgRef` type acts as a lightweight Swift reference to an underlying `GtkBindingArg` instance.
/// It exposes methods that can operate on this data type through `BindingArgProtocol` conformance.
/// Use `BindingArgRef` only as an `unowned` reference to an existing `GtkBindingArg` instance.
///
public struct BindingArgRef: BindingArgProtocol {
        /// Untyped pointer to the underlying `GtkBindingArg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BindingArgRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBindingArg>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBindingArg>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBindingArg>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBindingArg>?) {
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

    /// Reference intialiser for a related type that implements `BindingArgProtocol`
    @inlinable init<T: BindingArgProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GtkBindingArg` holds the data associated with
/// an argument for a key binding signal emission as
/// stored in `GtkBindingSignal`.
///
/// The `BindingArg` type acts as an owner of an underlying `GtkBindingArg` instance.
/// It provides the methods that can operate on this data type through `BindingArgProtocol` conformance.
/// Use `BindingArg` as a strong reference or owner of a `GtkBindingArg` instance.
///
open class BindingArg: BindingArgProtocol {
        /// Untyped pointer to the underlying `GtkBindingArg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingArg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBindingArg>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingArg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBindingArg>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingArg` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingArg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingArg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBindingArg>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingArg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBindingArg>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBindingArg` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BindingArg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBindingArg>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBindingArg, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BindingArgProtocol`
    /// `GtkBindingArg` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BindingArgProtocol`
    @inlinable public init<T: BindingArgProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBindingArg, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkBindingArg`.
    deinit {
        // no reference counting for GtkBindingArg, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBindingArg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBindingArg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBindingArg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBindingArg, cannot ref(_ptr)
    }



}

// MARK: no BindingArg properties

// MARK: no BindingArg signals

// MARK: BindingArg has no signals
// MARK: BindingArg Record: BindingArgProtocol extension (methods and fields)
public extension BindingArgProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingArg` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBindingArg>! { return ptr?.assumingMemoryBound(to: GtkBindingArg.self) }


    /// implementation detail
    @inlinable var argType: GType {
        /// implementation detail
        get {
            let rv = _ptr.pointee.arg_type
            return rv
        }
        /// implementation detail
         set {
            _ptr.pointee.arg_type = newValue
        }
    }

}



// MARK: - BindingEntry Record

/// Each key binding element of a binding sets binding list is
/// represented by a GtkBindingEntry.
///
/// The `BindingEntryProtocol` protocol exposes the methods and properties of an underlying `GtkBindingEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingEntry`.
/// Alternatively, use `BindingEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BindingEntryProtocol {
        /// Untyped pointer to the underlying `GtkBindingEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBindingEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingEntry>! { get }

    /// Required Initialiser for types conforming to `BindingEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Each key binding element of a binding sets binding list is
/// represented by a GtkBindingEntry.
///
/// The `BindingEntryRef` type acts as a lightweight Swift reference to an underlying `GtkBindingEntry` instance.
/// It exposes methods that can operate on this data type through `BindingEntryProtocol` conformance.
/// Use `BindingEntryRef` only as an `unowned` reference to an existing `GtkBindingEntry` instance.
///
public struct BindingEntryRef: BindingEntryProtocol {
        /// Untyped pointer to the underlying `GtkBindingEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BindingEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBindingEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBindingEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBindingEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBindingEntry>?) {
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

    /// Reference intialiser for a related type that implements `BindingEntryProtocol`
    @inlinable init<T: BindingEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Each key binding element of a binding sets binding list is
/// represented by a GtkBindingEntry.
///
/// The `BindingEntry` type acts as an owner of an underlying `GtkBindingEntry` instance.
/// It provides the methods that can operate on this data type through `BindingEntryProtocol` conformance.
/// Use `BindingEntry` as a strong reference or owner of a `GtkBindingEntry` instance.
///
open class BindingEntry: BindingEntryProtocol {
        /// Untyped pointer to the underlying `GtkBindingEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBindingEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBindingEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBindingEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBindingEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBindingEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BindingEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBindingEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBindingEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BindingEntryProtocol`
    /// `GtkBindingEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BindingEntryProtocol`
    @inlinable public init<T: BindingEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBindingEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkBindingEntry`.
    deinit {
        // no reference counting for GtkBindingEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBindingEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBindingEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBindingEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBindingEntry, cannot ref(_ptr)
    }



}

// MARK: no BindingEntry properties

// MARK: no BindingEntry signals

// MARK: BindingEntry has no signals
// MARK: BindingEntry Record: BindingEntryProtocol extension (methods and fields)
public extension BindingEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBindingEntry>! { return ptr?.assumingMemoryBound(to: GtkBindingEntry.self) }


    /// key value to match
    @inlinable var keyval: guint {
        /// key value to match
        get {
            let rv = _ptr.pointee.keyval
            return rv
        }
        /// key value to match
         set {
            _ptr.pointee.keyval = newValue
        }
    }

    /// key modifiers to match
    @inlinable var modifiers: Gdk.ModifierType {
        /// key modifiers to match
        get {
            let rv = Gdk.ModifierType(_ptr.pointee.modifiers)
            return rv
        }
        /// key modifiers to match
         set {
            _ptr.pointee.modifiers = newValue.value
        }
    }

    /// binding set this entry belongs to
    @inlinable var bindingSet: BindingSetRef! {
        /// binding set this entry belongs to
        get {
            let rv = BindingSetRef(gconstpointer: gconstpointer(_ptr.pointee.binding_set))
            return rv
        }
        /// binding set this entry belongs to
         set {
            _ptr.pointee.binding_set = UnsafeMutablePointer<GtkBindingSet>(newValue._ptr)
        }
    }

    /// implementation detail
    @inlinable var destroyed: guint {
        /// implementation detail
        get {
            let rv = _ptr.pointee.destroyed
            return rv
        }
        /// implementation detail
         set {
            _ptr.pointee.destroyed = newValue
        }
    }

    /// implementation detail
    @inlinable var inEmission: guint {
        /// implementation detail
        get {
            let rv = _ptr.pointee.in_emission
            return rv
        }
        /// implementation detail
         set {
            _ptr.pointee.in_emission = newValue
        }
    }

    /// implementation detail
    @inlinable var marksUnbound: guint {
        /// implementation detail
        get {
            let rv = _ptr.pointee.marks_unbound
            return rv
        }
        /// implementation detail
         set {
            _ptr.pointee.marks_unbound = newValue
        }
    }

    /// linked list of entries maintained by binding set
    @inlinable var setNext: BindingEntryRef! {
        /// linked list of entries maintained by binding set
        get {
            let rv = BindingEntryRef(gconstpointer: gconstpointer(_ptr.pointee.set_next))
            return rv
        }
        /// linked list of entries maintained by binding set
         set {
            _ptr.pointee.set_next = UnsafeMutablePointer<GtkBindingEntry>(newValue._ptr)
        }
    }

    /// implementation detail
    @inlinable var hashNext: BindingEntryRef! {
        /// implementation detail
        get {
            let rv = BindingEntryRef(gconstpointer: gconstpointer(_ptr.pointee.hash_next))
            return rv
        }
        /// implementation detail
         set {
            _ptr.pointee.hash_next = UnsafeMutablePointer<GtkBindingEntry>(newValue._ptr)
        }
    }

    /// action signals of this entry
    @inlinable var signals: BindingSignalRef! {
        /// action signals of this entry
        get {
            let rv = BindingSignalRef(gconstpointer: gconstpointer(_ptr.pointee.signals))
            return rv
        }
        /// action signals of this entry
         set {
            _ptr.pointee.signals = UnsafeMutablePointer<GtkBindingSignal>(newValue._ptr)
        }
    }

}



// MARK: - BindingSet Record

/// A binding set maintains a list of activatable key bindings.
/// A single binding set can match multiple types of widgets.
/// Similar to style contexts, can be matched by any information contained
/// in a widgets `GtkWidgetPath`. When a binding within a set is matched upon
/// activation, an action signal is emitted on the target widget to carry out
/// the actual activation.
///
/// The `BindingSetProtocol` protocol exposes the methods and properties of an underlying `GtkBindingSet` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingSet`.
/// Alternatively, use `BindingSetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BindingSetProtocol {
        /// Untyped pointer to the underlying `GtkBindingSet` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBindingSet` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingSet>! { get }

    /// Required Initialiser for types conforming to `BindingSetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A binding set maintains a list of activatable key bindings.
/// A single binding set can match multiple types of widgets.
/// Similar to style contexts, can be matched by any information contained
/// in a widgets `GtkWidgetPath`. When a binding within a set is matched upon
/// activation, an action signal is emitted on the target widget to carry out
/// the actual activation.
///
/// The `BindingSetRef` type acts as a lightweight Swift reference to an underlying `GtkBindingSet` instance.
/// It exposes methods that can operate on this data type through `BindingSetProtocol` conformance.
/// Use `BindingSetRef` only as an `unowned` reference to an existing `GtkBindingSet` instance.
///
public struct BindingSetRef: BindingSetProtocol {
        /// Untyped pointer to the underlying `GtkBindingSet` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BindingSetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBindingSet>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBindingSet>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBindingSet>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBindingSet>?) {
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

    /// Reference intialiser for a related type that implements `BindingSetProtocol`
    @inlinable init<T: BindingSetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This function returns the binding set named after the type name of
    /// the passed in class structure. New binding sets are created on
    /// demand by this function.
    @inlinable static func byClass(objectClass: gpointer! = nil) -> BindingSetRef! {
        guard let rv = BindingSetRef(gconstpointer: gconstpointer(gtk_binding_set_by_class(objectClass))) else { return nil }
        return rv
    }

    /// Find a binding set by its globally unique name.
    /// 
    /// The `set_name` can either be a name used for `gtk_binding_set_new()`
    /// or the type name of a class used in `gtk_binding_set_by_class()`.
    @inlinable static func find(setName: UnsafePointer<gchar>!) -> BindingSetRef! {
        guard let rv = BindingSetRef(gconstpointer: gconstpointer(gtk_binding_set_find(setName))) else { return nil }
        return rv
    }
}

/// A binding set maintains a list of activatable key bindings.
/// A single binding set can match multiple types of widgets.
/// Similar to style contexts, can be matched by any information contained
/// in a widgets `GtkWidgetPath`. When a binding within a set is matched upon
/// activation, an action signal is emitted on the target widget to carry out
/// the actual activation.
///
/// The `BindingSet` type acts as an owner of an underlying `GtkBindingSet` instance.
/// It provides the methods that can operate on this data type through `BindingSetProtocol` conformance.
/// Use `BindingSet` as a strong reference or owner of a `GtkBindingSet` instance.
///
open class BindingSet: BindingSetProtocol {
        /// Untyped pointer to the underlying `GtkBindingSet` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBindingSet>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBindingSet>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSet` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBindingSet>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBindingSet>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBindingSet` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BindingSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBindingSet>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBindingSet, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BindingSetProtocol`
    /// `GtkBindingSet` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BindingSetProtocol`
    @inlinable public init<T: BindingSetProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBindingSet, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkBindingSet`.
    deinit {
        // no reference counting for GtkBindingSet, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBindingSet, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBindingSet, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBindingSet, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBindingSet, cannot ref(_ptr)
    }


    /// This function returns the binding set named after the type name of
    /// the passed in class structure. New binding sets are created on
    /// demand by this function.
    @inlinable public static func byClass(objectClass: gpointer! = nil) -> BindingSet! {
        guard let rv = BindingSet(gconstpointer: gconstpointer(gtk_binding_set_by_class(objectClass))) else { return nil }
        return rv
    }

    /// Find a binding set by its globally unique name.
    /// 
    /// The `set_name` can either be a name used for `gtk_binding_set_new()`
    /// or the type name of a class used in `gtk_binding_set_by_class()`.
    @inlinable public static func find(setName: UnsafePointer<gchar>!) -> BindingSet! {
        guard let rv = BindingSet(gconstpointer: gconstpointer(gtk_binding_set_find(setName))) else { return nil }
        return rv
    }

}

// MARK: no BindingSet properties

// MARK: no BindingSet signals

// MARK: BindingSet has no signals
// MARK: BindingSet Record: BindingSetProtocol extension (methods and fields)
public extension BindingSetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingSet` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBindingSet>! { return ptr?.assumingMemoryBound(to: GtkBindingSet.self) }

    /// Find a key binding matching `keyval` and `modifiers` within
    /// `binding_set` and activate the binding on `object`.
    @inlinable func activate<ObjectT: GLibObject.ObjectProtocol>(keyval: Int, modifiers: Gdk.ModifierType, object: ObjectT) -> Bool {
        let rv = ((gtk_binding_set_activate(_ptr, guint(keyval), modifiers.value, object.object_ptr)) != 0)
        return rv
    }

    /// This function was used internally by the GtkRC parsing mechanism
    /// to assign match patterns to `GtkBindingSet` structures.
    /// 
    /// In GTK+ 3, these match patterns are unused.
    ///
    /// **add_path is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addPath(pathType: GtkPathType, pathPattern: UnsafePointer<gchar>!, priority: GtkPathPriorityType) {
        gtk_binding_set_add_path(_ptr, pathType, pathPattern, priority)
    
    }

    /// Parses a signal description from `signal_desc` and incorporates
    /// it into `binding_set`.
    /// 
    /// Signal descriptions may either bind a key combination to
    /// one or more signals:
    /// ```
    ///   bind "key" {
    ///     "signalname" (param, ...)
    ///     ...
    ///   }
    /// ```
    /// 
    /// Or they may also unbind a key combination:
    /// ```
    ///   unbind "key"
    /// ```
    /// 
    /// Key combinations must be in a format that can be parsed by
    /// `gtk_accelerator_parse()`.
    @inlinable func bindingEntryAddSignalFromString(signalDesc: UnsafePointer<gchar>!) -> GTokenType {
        let rv = gtk_binding_entry_add_signal_from_string(_ptr, signalDesc)
        return rv
    }

    /// Override or install a new key binding for `keyval` with `modifiers` on
    /// `binding_set`.
    @inlinable func bindingEntryAddSignall<SListT: GLib.SListProtocol>(keyval: Int, modifiers: Gdk.ModifierType, signalName: UnsafePointer<gchar>!, bindingArgs: SListT) {
        gtk_binding_entry_add_signall(_ptr, guint(keyval), modifiers.value, signalName, bindingArgs._ptr)
    
    }

    /// Remove a binding previously installed via
    /// `gtk_binding_entry_add_signal()` on `binding_set`.
    @inlinable func bindingEntryRemove(keyval: Int, modifiers: Gdk.ModifierType) {
        gtk_binding_entry_remove(_ptr, guint(keyval), modifiers.value)
    
    }

    /// Install a binding on `binding_set` which causes key lookups
    /// to be aborted, to prevent bindings from lower priority sets
    /// to be activated.
    @inlinable func bindingEntrySkip(keyval: Int, modifiers: Gdk.ModifierType) {
        gtk_binding_entry_skip(_ptr, guint(keyval), modifiers.value)
    
    }

    /// unique name of this binding set
    @inlinable var setName: UnsafeMutablePointer<gchar>! {
        /// unique name of this binding set
        get {
            let rv = _ptr.pointee.set_name
            return rv
        }
        /// unique name of this binding set
         set {
            _ptr.pointee.set_name = newValue
        }
    }

    /// unused
    @inlinable var priority: gint {
        /// unused
        get {
            let rv = _ptr.pointee.priority
            return rv
        }
        /// unused
         set {
            _ptr.pointee.priority = newValue
        }
    }

    /// unused
    @inlinable var widgetPathPspecs: SListRef! {
        /// unused
        get {
            let rv = SListRef(gconstpointer: gconstpointer(_ptr.pointee.widget_path_pspecs))
            return rv
        }
        /// unused
         set {
            _ptr.pointee.widget_path_pspecs = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

    /// unused
    @inlinable var widgetClassPspecs: SListRef! {
        /// unused
        get {
            let rv = SListRef(gconstpointer: gconstpointer(_ptr.pointee.widget_class_pspecs))
            return rv
        }
        /// unused
         set {
            _ptr.pointee.widget_class_pspecs = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

    /// unused
    @inlinable var classBranchPspecs: SListRef! {
        /// unused
        get {
            let rv = SListRef(gconstpointer: gconstpointer(_ptr.pointee.class_branch_pspecs))
            return rv
        }
        /// unused
         set {
            _ptr.pointee.class_branch_pspecs = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

    /// the key binding entries in this binding set
    @inlinable var entries: BindingEntryRef! {
        /// the key binding entries in this binding set
        get {
            let rv = BindingEntryRef(gconstpointer: gconstpointer(_ptr.pointee.entries))
            return rv
        }
        /// the key binding entries in this binding set
         set {
            _ptr.pointee.entries = UnsafeMutablePointer<GtkBindingEntry>(newValue._ptr)
        }
    }

    /// implementation detail
    @inlinable var current: BindingEntryRef! {
        /// implementation detail
        get {
            let rv = BindingEntryRef(gconstpointer: gconstpointer(_ptr.pointee.current))
            return rv
        }
        /// implementation detail
         set {
            _ptr.pointee.current = UnsafeMutablePointer<GtkBindingEntry>(newValue._ptr)
        }
    }

    /// whether this binding set stems from a CSS file and is reset upon theme changes
    @inlinable var parsed: guint {
        /// whether this binding set stems from a CSS file and is reset upon theme changes
        get {
            let rv = _ptr.pointee.parsed
            return rv
        }
        /// whether this binding set stems from a CSS file and is reset upon theme changes
         set {
            _ptr.pointee.parsed = newValue
        }
    }

}



// MARK: - BindingSignal Record

/// A GtkBindingSignal stores the necessary information to
/// activate a widget in response to a key press via a signal
/// emission.
///
/// The `BindingSignalProtocol` protocol exposes the methods and properties of an underlying `GtkBindingSignal` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingSignal`.
/// Alternatively, use `BindingSignalRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BindingSignalProtocol {
        /// Untyped pointer to the underlying `GtkBindingSignal` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBindingSignal` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingSignal>! { get }

    /// Required Initialiser for types conforming to `BindingSignalProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GtkBindingSignal stores the necessary information to
/// activate a widget in response to a key press via a signal
/// emission.
///
/// The `BindingSignalRef` type acts as a lightweight Swift reference to an underlying `GtkBindingSignal` instance.
/// It exposes methods that can operate on this data type through `BindingSignalProtocol` conformance.
/// Use `BindingSignalRef` only as an `unowned` reference to an existing `GtkBindingSignal` instance.
///
public struct BindingSignalRef: BindingSignalProtocol {
        /// Untyped pointer to the underlying `GtkBindingSignal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BindingSignalRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBindingSignal>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBindingSignal>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBindingSignal>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBindingSignal>?) {
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

    /// Reference intialiser for a related type that implements `BindingSignalProtocol`
    @inlinable init<T: BindingSignalProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A GtkBindingSignal stores the necessary information to
/// activate a widget in response to a key press via a signal
/// emission.
///
/// The `BindingSignal` type acts as an owner of an underlying `GtkBindingSignal` instance.
/// It provides the methods that can operate on this data type through `BindingSignalProtocol` conformance.
/// Use `BindingSignal` as a strong reference or owner of a `GtkBindingSignal` instance.
///
open class BindingSignal: BindingSignalProtocol {
        /// Untyped pointer to the underlying `GtkBindingSignal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSignal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBindingSignal>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSignal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBindingSignal>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSignal` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSignal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSignal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBindingSignal>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BindingSignal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBindingSignal>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBindingSignal` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BindingSignal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBindingSignal>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBindingSignal, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BindingSignalProtocol`
    /// `GtkBindingSignal` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BindingSignalProtocol`
    @inlinable public init<T: BindingSignalProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBindingSignal, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkBindingSignal`.
    deinit {
        // no reference counting for GtkBindingSignal, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBindingSignal, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBindingSignal, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBindingSignal, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBindingSignal, cannot ref(_ptr)
    }



}

// MARK: no BindingSignal properties

// MARK: no BindingSignal signals

// MARK: BindingSignal has no signals
// MARK: BindingSignal Record: BindingSignalProtocol extension (methods and fields)
public extension BindingSignalProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingSignal` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBindingSignal>! { return ptr?.assumingMemoryBound(to: GtkBindingSignal.self) }


    /// implementation detail
    @inlinable var next: BindingSignalRef! {
        /// implementation detail
        get {
            let rv = BindingSignalRef(gconstpointer: gconstpointer(_ptr.pointee.next))
            return rv
        }
        /// implementation detail
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GtkBindingSignal>(newValue._ptr)
        }
    }

    /// the action signal to be emitted
    @inlinable var signalName: UnsafeMutablePointer<gchar>! {
        /// the action signal to be emitted
        get {
            let rv = _ptr.pointee.signal_name
            return rv
        }
        /// the action signal to be emitted
         set {
            _ptr.pointee.signal_name = newValue
        }
    }

    /// number of arguments specified for the signal
    @inlinable var nArgs: guint {
        /// number of arguments specified for the signal
        get {
            let rv = _ptr.pointee.n_args
            return rv
        }
        /// number of arguments specified for the signal
         set {
            _ptr.pointee.n_args = newValue
        }
    }

    /// the arguments specified for the signal
    @inlinable var args: UnsafeMutablePointer<GtkBindingArg>! {
        /// the arguments specified for the signal
        get {
            let rv = _ptr.pointee.args
            return rv
        }
        /// the arguments specified for the signal
         set {
            _ptr.pointee.args = newValue
        }
    }

}



/// Metatype/GType declaration for BooleanCellAccessible
public extension BooleanCellAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `BooleanCellAccessible`
    static var metatypeReference: GType { gtk_boolean_cell_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBooleanCellAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBooleanCellAccessibleClass.self) }
    
    static var metatype: GtkBooleanCellAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: BooleanCellAccessibleClassRef? { BooleanCellAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - BooleanCellAccessibleClass Record


///
/// The `BooleanCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkBooleanCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BooleanCellAccessibleClass`.
/// Alternatively, use `BooleanCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BooleanCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkBooleanCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBooleanCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBooleanCellAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `BooleanCellAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `BooleanCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkBooleanCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `BooleanCellAccessibleClassProtocol` conformance.
/// Use `BooleanCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkBooleanCellAccessibleClass` instance.
///
public struct BooleanCellAccessibleClassRef: BooleanCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkBooleanCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BooleanCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBooleanCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBooleanCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBooleanCellAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBooleanCellAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `BooleanCellAccessibleClassProtocol`
    @inlinable init<T: BooleanCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BooleanCellAccessibleClass Record: BooleanCellAccessibleClassProtocol extension (methods and fields)
public extension BooleanCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBooleanCellAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBooleanCellAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkBooleanCellAccessibleClass.self) }


    @inlinable var parentClass: GtkRendererCellAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - Border Record

/// A struct that specifies a border around a rectangular area
/// that can be of different width on each side.
///
/// The `BorderProtocol` protocol exposes the methods and properties of an underlying `GtkBorder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Border`.
/// Alternatively, use `BorderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BorderProtocol {
        /// Untyped pointer to the underlying `GtkBorder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBorder` instance.
    var border_ptr: UnsafeMutablePointer<GtkBorder>! { get }

    /// Required Initialiser for types conforming to `BorderProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A struct that specifies a border around a rectangular area
/// that can be of different width on each side.
///
/// The `BorderRef` type acts as a lightweight Swift reference to an underlying `GtkBorder` instance.
/// It exposes methods that can operate on this data type through `BorderProtocol` conformance.
/// Use `BorderRef` only as an `unowned` reference to an existing `GtkBorder` instance.
///
public struct BorderRef: BorderProtocol {
        /// Untyped pointer to the underlying `GtkBorder` instance.
    /// For type-safe access, use the generated, typed pointer `border_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BorderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBorder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBorder>?) {
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

    /// Reference intialiser for a related type that implements `BorderProtocol`
    @inlinable init<T: BorderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a new `GtkBorder-struct` and initializes its elements to zero.
    @inlinable init() {
        let rv = gtk_border_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A struct that specifies a border around a rectangular area
/// that can be of different width on each side.
///
/// The `Border` type acts as an owner of an underlying `GtkBorder` instance.
/// It provides the methods that can operate on this data type through `BorderProtocol` conformance.
/// Use `Border` as a strong reference or owner of a `GtkBorder` instance.
///
open class Border: BorderProtocol {
        /// Untyped pointer to the underlying `GtkBorder` instance.
    /// For type-safe access, use the generated, typed pointer `border_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBorder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBorder>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBorder` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Reference intialiser for a related type that implements `BorderProtocol`
    /// `GtkBorder` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BorderProtocol`
    @inlinable public init<T: BorderProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Do-nothing destructor for `GtkBorder`.
    deinit {
        // no reference counting for GtkBorder, cannot unref(border_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Allocates a new `GtkBorder-struct` and initializes its elements to zero.
    @inlinable public init() {
        let rv = gtk_border_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Border properties

// MARK: no Border signals

// MARK: Border has no signals
// MARK: Border Record: BorderProtocol extension (methods and fields)
public extension BorderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBorder` instance.
    @inlinable var border_ptr: UnsafeMutablePointer<GtkBorder>! { return ptr?.assumingMemoryBound(to: GtkBorder.self) }

    /// Copies a `GtkBorder-struct`.
    @inlinable func copy() -> BorderRef! {
        guard let rv = BorderRef(gconstpointer: gconstpointer(gtk_border_copy(border_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GtkBorder-struct`.
    @inlinable func free() {
        gtk_border_free(border_ptr)
    
    }

    /// The width of the left border
    @inlinable var `left`: gint16 {
        /// The width of the left border
        get {
            let rv = border_ptr.pointee.left
            return rv
        }
        /// The width of the left border
         set {
            border_ptr.pointee.left = newValue
        }
    }

    /// The width of the right border
    @inlinable var `right`: gint16 {
        /// The width of the right border
        get {
            let rv = border_ptr.pointee.right
            return rv
        }
        /// The width of the right border
         set {
            border_ptr.pointee.right = newValue
        }
    }

    /// The width of the top border
    @inlinable var top: gint16 {
        /// The width of the top border
        get {
            let rv = border_ptr.pointee.top
            return rv
        }
        /// The width of the top border
         set {
            border_ptr.pointee.top = newValue
        }
    }

    /// The width of the bottom border
    @inlinable var bottom: gint16 {
        /// The width of the bottom border
        get {
            let rv = border_ptr.pointee.bottom
            return rv
        }
        /// The width of the bottom border
         set {
            border_ptr.pointee.bottom = newValue
        }
    }

}



/// Metatype/GType declaration for Box
public extension BoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `Box`
    static var metatypeReference: GType { gtk_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBoxClass.self) }
    
    static var metatype: GtkBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: BoxClassRef? { BoxClassRef(metatypePointer) }
    
    
}

// MARK: - BoxClass Record


///
/// The `BoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoxClass`.
/// Alternatively, use `BoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BoxClassProtocol {
        /// Untyped pointer to the underlying `GtkBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBoxClass>! { get }

    /// Required Initialiser for types conforming to `BoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `BoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkBoxClass` instance.
/// It exposes methods that can operate on this data type through `BoxClassProtocol` conformance.
/// Use `BoxClassRef` only as an `unowned` reference to an existing `GtkBoxClass` instance.
///
public struct BoxClassRef: BoxClassProtocol {
        /// Untyped pointer to the underlying `GtkBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `BoxClassProtocol`
    @inlinable init<T: BoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BoxClass Record: BoxClassProtocol extension (methods and fields)
public extension BoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBoxClass>! { return ptr?.assumingMemoryBound(to: GtkBoxClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkContainerClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Buildable
public extension BuildableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Buildable`
    static var metatypeReference: GType { gtk_buildable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBuildableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBuildableIface.self) }
    
    static var metatype: GtkBuildableIface? { metatypePointer?.pointee } 
    
    static var wrapper: BuildableIfaceRef? { BuildableIfaceRef(metatypePointer) }
    
    
}

// MARK: - BuildableIface Record

/// The `GtkBuildableIface` interface contains method that are
/// necessary to allow `GtkBuilder` to construct an object from
/// a `GtkBuilder` UI definition.
///
/// The `BuildableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkBuildableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuildableIface`.
/// Alternatively, use `BuildableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BuildableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkBuildableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuildableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkBuildableIface>! { get }

    /// Required Initialiser for types conforming to `BuildableIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GtkBuildableIface` interface contains method that are
/// necessary to allow `GtkBuilder` to construct an object from
/// a `GtkBuilder` UI definition.
///
/// The `BuildableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkBuildableIface` instance.
/// It exposes methods that can operate on this data type through `BuildableIfaceProtocol` conformance.
/// Use `BuildableIfaceRef` only as an `unowned` reference to an existing `GtkBuildableIface` instance.
///
public struct BuildableIfaceRef: BuildableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkBuildableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuildableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuildableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuildableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuildableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuildableIface>?) {
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

    /// Reference intialiser for a related type that implements `BuildableIfaceProtocol`
    @inlinable init<T: BuildableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BuildableIface Record: BuildableIfaceProtocol extension (methods and fields)
public extension BuildableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuildableIface>! { return ptr?.assumingMemoryBound(to: GtkBuildableIface.self) }


    /// the parent class
    @inlinable var gIface: GTypeInterface {
        /// the parent class
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var setName is unavailable because set_name is void

    // var getName is unavailable because get_name is void

    // var addChild is unavailable because add_child is void

    // var setBuildableProperty is unavailable because set_buildable_property is void

    // var constructChild is unavailable because construct_child is void

    // var customTagStart is unavailable because custom_tag_start is void

    // var customTagEnd is unavailable because custom_tag_end is void

    // var customFinished is unavailable because custom_finished is void

    // var parserFinished is unavailable because parser_finished is void

    // var getInternalChild is unavailable because get_internal_child is void

}



/// Metatype/GType declaration for Builder
public extension BuilderClassRef {
    
    /// This getter returns the GLib type identifier registered for `Builder`
    static var metatypeReference: GType { gtk_builder_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBuilderClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBuilderClass.self) }
    
    static var metatype: GtkBuilderClass? { metatypePointer?.pointee } 
    
    static var wrapper: BuilderClassRef? { BuilderClassRef(metatypePointer) }
    
    
}

// MARK: - BuilderClass Record


///
/// The `BuilderClassProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderClass`.
/// Alternatively, use `BuilderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BuilderClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderClass>! { get }

    /// Required Initialiser for types conforming to `BuilderClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `BuilderClassRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderClass` instance.
/// It exposes methods that can operate on this data type through `BuilderClassProtocol` conformance.
/// Use `BuilderClassRef` only as an `unowned` reference to an existing `GtkBuilderClass` instance.
///
public struct BuilderClassRef: BuilderClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilderClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilderClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilderClass>?) {
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

    /// Reference intialiser for a related type that implements `BuilderClassProtocol`
    @inlinable init<T: BuilderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BuilderClass Record: BuilderClassProtocol extension (methods and fields)
public extension BuilderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuilderClass>! { return ptr?.assumingMemoryBound(to: GtkBuilderClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getTypeFromName is unavailable because get_type_from_name is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for ButtonAccessible
public extension ButtonAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ButtonAccessible`
    static var metatypeReference: GType { gtk_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkButtonAccessibleClass.self) }
    
    static var metatype: GtkButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ButtonAccessibleClassRef? { ButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ButtonAccessibleClass Record


///
/// The `ButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonAccessibleClass`.
/// Alternatively, use `ButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ButtonAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ButtonAccessibleClassProtocol` conformance.
/// Use `ButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkButtonAccessibleClass` instance.
///
public struct ButtonAccessibleClassRef: ButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ButtonAccessibleClassProtocol`
    @inlinable init<T: ButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ButtonAccessibleClass Record: ButtonAccessibleClassProtocol extension (methods and fields)
public extension ButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ButtonBox
public extension ButtonBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `ButtonBox`
    static var metatypeReference: GType { gtk_button_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkButtonBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkButtonBoxClass.self) }
    
    static var metatype: GtkButtonBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: ButtonBoxClassRef? { ButtonBoxClassRef(metatypePointer) }
    
    
}

// MARK: - ButtonBoxClass Record


///
/// The `ButtonBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkButtonBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonBoxClass`.
/// Alternatively, use `ButtonBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ButtonBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonBoxClass>! { get }

    /// Required Initialiser for types conforming to `ButtonBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ButtonBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkButtonBoxClass` instance.
/// It exposes methods that can operate on this data type through `ButtonBoxClassProtocol` conformance.
/// Use `ButtonBoxClassRef` only as an `unowned` reference to an existing `GtkButtonBoxClass` instance.
///
public struct ButtonBoxClassRef: ButtonBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButtonBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButtonBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `ButtonBoxClassProtocol`
    @inlinable init<T: ButtonBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ButtonBoxClass Record: ButtonBoxClassProtocol extension (methods and fields)
public extension ButtonBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkButtonBoxClass>! { return ptr?.assumingMemoryBound(to: GtkButtonBoxClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Button
public extension ButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `Button`
    static var metatypeReference: GType { gtk_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkButtonClass.self) }
    
    static var metatype: GtkButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ButtonClassRef? { ButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ButtonClass Record


///
/// The `ButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonClass`.
/// Alternatively, use `ButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonClass>! { get }

    /// Required Initialiser for types conforming to `ButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkButtonClass` instance.
/// It exposes methods that can operate on this data type through `ButtonClassProtocol` conformance.
/// Use `ButtonClassRef` only as an `unowned` reference to an existing `GtkButtonClass` instance.
///
public struct ButtonClassRef: ButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ButtonClassProtocol`
    @inlinable init<T: ButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ButtonClass Record: ButtonClassProtocol extension (methods and fields)
public extension ButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkButtonClass>! { return ptr?.assumingMemoryBound(to: GtkButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var pressed is unavailable because pressed is void

    // var released is unavailable because released is void

    // var clicked is unavailable because clicked is void

    // var enter is unavailable because enter is void

    // var leave is unavailable because leave is void

    // var activate is unavailable because activate is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Calendar
public extension CalendarClassRef {
    
    /// This getter returns the GLib type identifier registered for `Calendar`
    static var metatypeReference: GType { gtk_calendar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCalendarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCalendarClass.self) }
    
    static var metatype: GtkCalendarClass? { metatypePointer?.pointee } 
    
    static var wrapper: CalendarClassRef? { CalendarClassRef(metatypePointer) }
    
    
}

// MARK: - CalendarClass Record


///
/// The `CalendarClassProtocol` protocol exposes the methods and properties of an underlying `GtkCalendarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CalendarClass`.
/// Alternatively, use `CalendarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CalendarClassProtocol {
        /// Untyped pointer to the underlying `GtkCalendarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCalendarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCalendarClass>! { get }

    /// Required Initialiser for types conforming to `CalendarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CalendarClassRef` type acts as a lightweight Swift reference to an underlying `GtkCalendarClass` instance.
/// It exposes methods that can operate on this data type through `CalendarClassProtocol` conformance.
/// Use `CalendarClassRef` only as an `unowned` reference to an existing `GtkCalendarClass` instance.
///
public struct CalendarClassRef: CalendarClassProtocol {
        /// Untyped pointer to the underlying `GtkCalendarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CalendarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCalendarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCalendarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCalendarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCalendarClass>?) {
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

    /// Reference intialiser for a related type that implements `CalendarClassProtocol`
    @inlinable init<T: CalendarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CalendarClass Record: CalendarClassProtocol extension (methods and fields)
public extension CalendarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCalendarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCalendarClass>! { return ptr?.assumingMemoryBound(to: GtkCalendarClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var monthChanged is unavailable because month_changed is void

    // var daySelected is unavailable because day_selected is void

    // var daySelectedDoubleClick is unavailable because day_selected_double_click is void

    // var prevMonth is unavailable because prev_month is void

    // var nextMonth is unavailable because next_month is void

    // var prevYear is unavailable because prev_year is void

    // var nextYear is unavailable because next_year is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



