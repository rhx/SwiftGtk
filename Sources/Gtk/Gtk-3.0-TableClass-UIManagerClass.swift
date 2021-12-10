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

/// Metatype/GType declaration for Table
public extension TableClassRef {
    
    /// This getter returns the GLib type identifier registered for `Table`
    static var metatypeReference: GType { gtk_table_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTableClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTableClass.self) }
    
    static var metatype: GtkTableClass? { metatypePointer?.pointee } 
    
    static var wrapper: TableClassRef? { TableClassRef(metatypePointer) }
    
    
}

// MARK: - TableClass Record


///
/// The `TableClassProtocol` protocol exposes the methods and properties of an underlying `GtkTableClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TableClass`.
/// Alternatively, use `TableClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TableClassProtocol {
        /// Untyped pointer to the underlying `GtkTableClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTableClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTableClass>! { get }

    /// Required Initialiser for types conforming to `TableClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TableClassRef` type acts as a lightweight Swift reference to an underlying `GtkTableClass` instance.
/// It exposes methods that can operate on this data type through `TableClassProtocol` conformance.
/// Use `TableClassRef` only as an `unowned` reference to an existing `GtkTableClass` instance.
///
public struct TableClassRef: TableClassProtocol {
        /// Untyped pointer to the underlying `GtkTableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TableClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTableClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTableClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTableClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTableClass>?) {
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

    /// Reference intialiser for a related type that implements `TableClassProtocol`
    @inlinable init<T: TableClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TableClass Record: TableClassProtocol extension (methods and fields)
public extension TableClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTableClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTableClass>! { return ptr?.assumingMemoryBound(to: GtkTableClass.self) }


    @inlinable var parentClass: GtkContainerClass {
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



// MARK: - TableRowCol Record


///
/// The `TableRowColProtocol` protocol exposes the methods and properties of an underlying `GtkTableRowCol` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TableRowCol`.
/// Alternatively, use `TableRowColRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TableRowColProtocol {
        /// Untyped pointer to the underlying `GtkTableRowCol` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTableRowCol` instance.
    var _ptr: UnsafeMutablePointer<GtkTableRowCol>! { get }

    /// Required Initialiser for types conforming to `TableRowColProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TableRowColRef` type acts as a lightweight Swift reference to an underlying `GtkTableRowCol` instance.
/// It exposes methods that can operate on this data type through `TableRowColProtocol` conformance.
/// Use `TableRowColRef` only as an `unowned` reference to an existing `GtkTableRowCol` instance.
///
public struct TableRowColRef: TableRowColProtocol {
        /// Untyped pointer to the underlying `GtkTableRowCol` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TableRowColRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTableRowCol>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTableRowCol>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTableRowCol>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTableRowCol>?) {
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

    /// Reference intialiser for a related type that implements `TableRowColProtocol`
    @inlinable init<T: TableRowColProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `TableRowCol` type acts as an owner of an underlying `GtkTableRowCol` instance.
/// It provides the methods that can operate on this data type through `TableRowColProtocol` conformance.
/// Use `TableRowCol` as a strong reference or owner of a `GtkTableRowCol` instance.
///
open class TableRowCol: TableRowColProtocol {
        /// Untyped pointer to the underlying `GtkTableRowCol` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableRowCol` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTableRowCol>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableRowCol` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTableRowCol>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableRowCol` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableRowCol` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableRowCol` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTableRowCol>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableRowCol` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTableRowCol>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTableRowCol` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TableRowCol` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTableRowCol>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTableRowCol, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TableRowColProtocol`
    /// `GtkTableRowCol` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TableRowColProtocol`
    @inlinable public init<T: TableRowColProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTableRowCol, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkTableRowCol`.
    deinit {
        // no reference counting for GtkTableRowCol, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTableRowCol, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTableRowCol, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTableRowCol, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTableRowCol, cannot ref(_ptr)
    }



}

// MARK: no TableRowCol properties

// MARK: no TableRowCol signals

// MARK: TableRowCol has no signals
// MARK: TableRowCol Record: TableRowColProtocol extension (methods and fields)
public extension TableRowColProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTableRowCol` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTableRowCol>! { return ptr?.assumingMemoryBound(to: GtkTableRowCol.self) }


    @inlinable var requisition: guint16 {
        get {
            let rv = _ptr.pointee.requisition
            return rv
        }
         set {
            _ptr.pointee.requisition = newValue
        }
    }

    @inlinable var allocation: guint16 {
        get {
            let rv = _ptr.pointee.allocation
            return rv
        }
         set {
            _ptr.pointee.allocation = newValue
        }
    }

    @inlinable var spacing: guint16 {
        get {
            let rv = _ptr.pointee.spacing
            return rv
        }
         set {
            _ptr.pointee.spacing = newValue
        }
    }

    @inlinable var needExpand: guint {
        get {
            let rv = _ptr.pointee.need_expand
            return rv
        }
         set {
            _ptr.pointee.need_expand = newValue
        }
    }

    @inlinable var needShrink: guint {
        get {
            let rv = _ptr.pointee.need_shrink
            return rv
        }
         set {
            _ptr.pointee.need_shrink = newValue
        }
    }

    @inlinable var expand: guint {
        get {
            let rv = _ptr.pointee.expand
            return rv
        }
         set {
            _ptr.pointee.expand = newValue
        }
    }

    @inlinable var shrink: guint {
        get {
            let rv = _ptr.pointee.shrink
            return rv
        }
         set {
            _ptr.pointee.shrink = newValue
        }
    }

    @inlinable var empty: guint {
        get {
            let rv = _ptr.pointee.empty
            return rv
        }
         set {
            _ptr.pointee.empty = newValue
        }
    }

}



// MARK: - TargetEntry Record

/// A `GtkTargetEntry` represents a single type of
/// data than can be supplied for by a widget for a selection
/// or for supplied or received during drag-and-drop.
///
/// The `TargetEntryProtocol` protocol exposes the methods and properties of an underlying `GtkTargetEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TargetEntry`.
/// Alternatively, use `TargetEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TargetEntryProtocol {
        /// Untyped pointer to the underlying `GtkTargetEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTargetEntry` instance.
    var target_entry_ptr: UnsafeMutablePointer<GtkTargetEntry>! { get }

    /// Required Initialiser for types conforming to `TargetEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkTargetEntry` represents a single type of
/// data than can be supplied for by a widget for a selection
/// or for supplied or received during drag-and-drop.
///
/// The `TargetEntryRef` type acts as a lightweight Swift reference to an underlying `GtkTargetEntry` instance.
/// It exposes methods that can operate on this data type through `TargetEntryProtocol` conformance.
/// Use `TargetEntryRef` only as an `unowned` reference to an existing `GtkTargetEntry` instance.
///
public struct TargetEntryRef: TargetEntryProtocol {
        /// Untyped pointer to the underlying `GtkTargetEntry` instance.
    /// For type-safe access, use the generated, typed pointer `target_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TargetEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTargetEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTargetEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTargetEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTargetEntry>?) {
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

    /// Reference intialiser for a related type that implements `TargetEntryProtocol`
    @inlinable init<T: TargetEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Makes a new `GtkTargetEntry`.
    @inlinable init( target: UnsafePointer<gchar>!, flags: Int, info: Int) {
        let rv = gtk_target_entry_new(target, guint(flags), guint(info))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `GtkTargetEntry` represents a single type of
/// data than can be supplied for by a widget for a selection
/// or for supplied or received during drag-and-drop.
///
/// The `TargetEntry` type acts as an owner of an underlying `GtkTargetEntry` instance.
/// It provides the methods that can operate on this data type through `TargetEntryProtocol` conformance.
/// Use `TargetEntry` as a strong reference or owner of a `GtkTargetEntry` instance.
///
open class TargetEntry: TargetEntryProtocol {
        /// Untyped pointer to the underlying `GtkTargetEntry` instance.
    /// For type-safe access, use the generated, typed pointer `target_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTargetEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTargetEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTargetEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTargetEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTargetEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TargetEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTargetEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTargetEntry, cannot ref(target_entry_ptr)
    }

    /// Reference intialiser for a related type that implements `TargetEntryProtocol`
    /// `GtkTargetEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TargetEntryProtocol`
    @inlinable public init<T: TargetEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTargetEntry, cannot ref(target_entry_ptr)
    }

    /// Do-nothing destructor for `GtkTargetEntry`.
    deinit {
        // no reference counting for GtkTargetEntry, cannot unref(target_entry_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTargetEntry, cannot ref(target_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTargetEntry, cannot ref(target_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTargetEntry, cannot ref(target_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTargetEntry, cannot ref(target_entry_ptr)
    }

    /// Makes a new `GtkTargetEntry`.
    @inlinable public init( target: UnsafePointer<gchar>!, flags: Int, info: Int) {
        let rv = gtk_target_entry_new(target, guint(flags), guint(info))
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no TargetEntry properties

// MARK: no TargetEntry signals

// MARK: TargetEntry has no signals
// MARK: TargetEntry Record: TargetEntryProtocol extension (methods and fields)
public extension TargetEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTargetEntry` instance.
    @inlinable var target_entry_ptr: UnsafeMutablePointer<GtkTargetEntry>! { return ptr?.assumingMemoryBound(to: GtkTargetEntry.self) }

    /// Makes a copy of a `GtkTargetEntry` and its data.
    @inlinable func copy() -> TargetEntryRef! {
        guard let rv = TargetEntryRef(gconstpointer: gconstpointer(gtk_target_entry_copy(target_entry_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GtkTargetEntry` returned from
    /// `gtk_target_entry_new()` or `gtk_target_entry_copy()`.
    @inlinable func free() {
        gtk_target_entry_free(target_entry_ptr)
    
    }

    /// a string representation of the target type
    @inlinable var target: UnsafeMutablePointer<gchar>! {
        /// a string representation of the target type
        get {
            let rv = target_entry_ptr.pointee.target
            return rv
        }
        /// a string representation of the target type
         set {
            target_entry_ptr.pointee.target = newValue
        }
    }

    /// `GtkTargetFlags` for DND
    @inlinable var flags: guint {
        /// `GtkTargetFlags` for DND
        get {
            let rv = target_entry_ptr.pointee.flags
            return rv
        }
        /// `GtkTargetFlags` for DND
         set {
            target_entry_ptr.pointee.flags = newValue
        }
    }

    /// an application-assigned integer ID which will
    ///     get passed as a parameter to e.g the `GtkWidget::selection-get`
    ///     signal. It allows the application to identify the target
    ///     type without extensive string compares.
    @inlinable var info: guint {
        /// an application-assigned integer ID which will
        ///     get passed as a parameter to e.g the `GtkWidget::selection-get`
        ///     signal. It allows the application to identify the target
        ///     type without extensive string compares.
        get {
            let rv = target_entry_ptr.pointee.info
            return rv
        }
        /// an application-assigned integer ID which will
        ///     get passed as a parameter to e.g the `GtkWidget::selection-get`
        ///     signal. It allows the application to identify the target
        ///     type without extensive string compares.
         set {
            target_entry_ptr.pointee.info = newValue
        }
    }

}



// MARK: - TargetList Record

/// A `GtkTargetList-struct` is a reference counted list
/// of `GtkTargetPair` and should be treated as
/// opaque.
///
/// The `TargetListProtocol` protocol exposes the methods and properties of an underlying `GtkTargetList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TargetList`.
/// Alternatively, use `TargetListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TargetListProtocol {
        /// Untyped pointer to the underlying `GtkTargetList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTargetList` instance.
    var target_list_ptr: UnsafeMutablePointer<GtkTargetList>! { get }

    /// Required Initialiser for types conforming to `TargetListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkTargetList-struct` is a reference counted list
/// of `GtkTargetPair` and should be treated as
/// opaque.
///
/// The `TargetListRef` type acts as a lightweight Swift reference to an underlying `GtkTargetList` instance.
/// It exposes methods that can operate on this data type through `TargetListProtocol` conformance.
/// Use `TargetListRef` only as an `unowned` reference to an existing `GtkTargetList` instance.
///
public struct TargetListRef: TargetListProtocol {
        /// Untyped pointer to the underlying `GtkTargetList` instance.
    /// For type-safe access, use the generated, typed pointer `target_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TargetListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTargetList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTargetList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTargetList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTargetList>?) {
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

    /// Reference intialiser for a related type that implements `TargetListProtocol`
    @inlinable init<T: TargetListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkTargetList` from an array of `GtkTargetEntry`.
    @inlinable init( targets: UnsafePointer<GtkTargetEntry>! = nil, ntargets: Int) {
        let rv = gtk_target_list_new(targets, guint(ntargets))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `GtkTargetList-struct` is a reference counted list
/// of `GtkTargetPair` and should be treated as
/// opaque.
///
/// The `TargetList` type acts as a reference-counted owner of an underlying `GtkTargetList` instance.
/// It provides the methods that can operate on this data type through `TargetListProtocol` conformance.
/// Use `TargetList` as a strong reference or owner of a `GtkTargetList` instance.
///
open class TargetList: TargetListProtocol {
        /// Untyped pointer to the underlying `GtkTargetList` instance.
    /// For type-safe access, use the generated, typed pointer `target_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTargetList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTargetList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTargetList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTargetList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkTargetList`.
    /// i.e., ownership is transferred to the `TargetList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTargetList>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_target_list_ref(ptr.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Reference intialiser for a related type that implements `TargetListProtocol`
    /// Will retain `GtkTargetList`.
    /// - Parameter other: an instance of a related type that implements `TargetListProtocol`
    @inlinable public init<T: TargetListProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_target_list_ref(ptr.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Releases the underlying `GtkTargetList` instance using `gtk_target_list_unref`.
    deinit {
        gtk_target_list_unref(ptr.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_target_list_ref(ptr.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_target_list_ref(ptr.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_target_list_ref(ptr.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_target_list_ref(ptr.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Creates a new `GtkTargetList` from an array of `GtkTargetEntry`.
    @inlinable public init( targets: UnsafePointer<GtkTargetEntry>! = nil, ntargets: Int) {
        let rv = gtk_target_list_new(targets, guint(ntargets))
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no TargetList properties

// MARK: no TargetList signals

// MARK: TargetList has no signals
// MARK: TargetList Record: TargetListProtocol extension (methods and fields)
public extension TargetListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTargetList` instance.
    @inlinable var target_list_ptr: UnsafeMutablePointer<GtkTargetList>! { return ptr?.assumingMemoryBound(to: GtkTargetList.self) }

    /// Appends another target to a `GtkTargetList`.
    @inlinable func add(target: GdkAtom, flags: Int, info: Int) {
        gtk_target_list_add(target_list_ptr, target, guint(flags), guint(info))
    
    }

    /// Appends the image targets supported by `GtkSelectionData` to
    /// the target list. All targets are added with the same `info`.
    @inlinable func addImageTargets(info: Int, writable: Bool) {
        gtk_target_list_add_image_targets(target_list_ptr, guint(info), gboolean((writable) ? 1 : 0))
    
    }

    /// Appends the rich text targets registered with
    /// `gtk_text_buffer_register_serialize_format()` or
    /// `gtk_text_buffer_register_deserialize_format()` to the target list. All
    /// targets are added with the same `info`.
    @inlinable func addRichTextTargets<TextBufferT: TextBufferProtocol>(info: Int, deserializable: Bool, buffer: TextBufferT) {
        gtk_target_list_add_rich_text_targets(target_list_ptr, guint(info), gboolean((deserializable) ? 1 : 0), buffer.text_buffer_ptr)
    
    }

    /// Prepends a table of `GtkTargetEntry` to a target list.
    @inlinable func addTable(targets: UnsafePointer<GtkTargetEntry>!, ntargets: Int) {
        gtk_target_list_add_table(target_list_ptr, targets, guint(ntargets))
    
    }

    /// Appends the text targets supported by `GtkSelectionData` to
    /// the target list. All targets are added with the same `info`.
    @inlinable func addTextTargets(info: Int) {
        gtk_target_list_add_text_targets(target_list_ptr, guint(info))
    
    }

    /// Appends the URI targets supported by `GtkSelectionData` to
    /// the target list. All targets are added with the same `info`.
    @inlinable func addURITargets(info: Int) {
        gtk_target_list_add_uri_targets(target_list_ptr, guint(info))
    
    }

    /// Looks up a given target in a `GtkTargetList`.
    @inlinable func find(target: GdkAtom, info: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_target_list_find(target_list_ptr, target, info)) != 0)
        return rv
    }

    /// Increases the reference count of a `GtkTargetList` by one.
    @discardableResult @inlinable func ref() -> TargetListRef! {
        guard let rv = TargetListRef(gconstpointer: gconstpointer(gtk_target_list_ref(target_list_ptr))) else { return nil }
        return rv
    }

    /// Removes a target from a target list.
    @inlinable func remove(target: GdkAtom) {
        gtk_target_list_remove(target_list_ptr, target)
    
    }

    /// Decreases the reference count of a `GtkTargetList` by one.
    /// If the resulting reference count is zero, frees the list.
    @inlinable func unref() {
        gtk_target_list_unref(target_list_ptr)
    
    }

    /// This function creates an `GtkTargetEntry` array that contains the
    /// same targets as the passed `list`. The returned table is newly
    /// allocated and should be freed using `gtk_target_table_free()` when no
    /// longer needed.
    @inlinable func targetTableNewFromList(nTargets: UnsafeMutablePointer<gint>!) -> UnsafeMutablePointer<GtkTargetEntry>! {
        let rv = gtk_target_table_new_from_list(target_list_ptr, nTargets)
        return rv
    }


}



// MARK: - TargetPair Record

/// A `GtkTargetPair` is used to represent the same
/// information as a table of `GtkTargetEntry`, but in
/// an efficient form.
///
/// The `TargetPairProtocol` protocol exposes the methods and properties of an underlying `GtkTargetPair` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TargetPair`.
/// Alternatively, use `TargetPairRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TargetPairProtocol {
        /// Untyped pointer to the underlying `GtkTargetPair` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTargetPair` instance.
    var _ptr: UnsafeMutablePointer<GtkTargetPair>! { get }

    /// Required Initialiser for types conforming to `TargetPairProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkTargetPair` is used to represent the same
/// information as a table of `GtkTargetEntry`, but in
/// an efficient form.
///
/// The `TargetPairRef` type acts as a lightweight Swift reference to an underlying `GtkTargetPair` instance.
/// It exposes methods that can operate on this data type through `TargetPairProtocol` conformance.
/// Use `TargetPairRef` only as an `unowned` reference to an existing `GtkTargetPair` instance.
///
public struct TargetPairRef: TargetPairProtocol {
        /// Untyped pointer to the underlying `GtkTargetPair` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TargetPairRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTargetPair>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTargetPair>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTargetPair>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTargetPair>?) {
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

    /// Reference intialiser for a related type that implements `TargetPairProtocol`
    @inlinable init<T: TargetPairProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GtkTargetPair` is used to represent the same
/// information as a table of `GtkTargetEntry`, but in
/// an efficient form.
///
/// The `TargetPair` type acts as an owner of an underlying `GtkTargetPair` instance.
/// It provides the methods that can operate on this data type through `TargetPairProtocol` conformance.
/// Use `TargetPair` as a strong reference or owner of a `GtkTargetPair` instance.
///
open class TargetPair: TargetPairProtocol {
        /// Untyped pointer to the underlying `GtkTargetPair` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetPair` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTargetPair>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetPair` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTargetPair>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetPair` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetPair` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetPair` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTargetPair>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TargetPair` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTargetPair>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTargetPair` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TargetPair` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTargetPair>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTargetPair, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TargetPairProtocol`
    /// `GtkTargetPair` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TargetPairProtocol`
    @inlinable public init<T: TargetPairProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTargetPair, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkTargetPair`.
    deinit {
        // no reference counting for GtkTargetPair, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTargetPair, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTargetPair, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTargetPair, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTargetPair, cannot ref(_ptr)
    }



}

// MARK: no TargetPair properties

// MARK: no TargetPair signals

// MARK: TargetPair has no signals
// MARK: TargetPair Record: TargetPairProtocol extension (methods and fields)
public extension TargetPairProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTargetPair` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTargetPair>! { return ptr?.assumingMemoryBound(to: GtkTargetPair.self) }


    /// `GdkAtom` representation of the target type
    @inlinable var target: GdkAtom! {
        /// `GdkAtom` representation of the target type
        get {
            let rv = _ptr.pointee.target
            return rv
        }
        /// `GdkAtom` representation of the target type
         set {
            _ptr.pointee.target = newValue
        }
    }

    /// `GtkTargetFlags` for DND
    @inlinable var flags: guint {
        /// `GtkTargetFlags` for DND
        get {
            let rv = _ptr.pointee.flags
            return rv
        }
        /// `GtkTargetFlags` for DND
         set {
            _ptr.pointee.flags = newValue
        }
    }

    /// an application-assigned integer ID which will
    ///     get passed as a parameter to e.g the `GtkWidget::selection-get`
    ///     signal. It allows the application to identify the target
    ///     type without extensive string compares.
    @inlinable var info: guint {
        /// an application-assigned integer ID which will
        ///     get passed as a parameter to e.g the `GtkWidget::selection-get`
        ///     signal. It allows the application to identify the target
        ///     type without extensive string compares.
        get {
            let rv = _ptr.pointee.info
            return rv
        }
        /// an application-assigned integer ID which will
        ///     get passed as a parameter to e.g the `GtkWidget::selection-get`
        ///     signal. It allows the application to identify the target
        ///     type without extensive string compares.
         set {
            _ptr.pointee.info = newValue
        }
    }

}



/// Metatype/GType declaration for TearoffMenuItem
public extension TearoffMenuItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `TearoffMenuItem`
    static var metatypeReference: GType { gtk_tearoff_menu_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTearoffMenuItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTearoffMenuItemClass.self) }
    
    static var metatype: GtkTearoffMenuItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: TearoffMenuItemClassRef? { TearoffMenuItemClassRef(metatypePointer) }
    
    
}

// MARK: - TearoffMenuItemClass Record


///
/// The `TearoffMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkTearoffMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TearoffMenuItemClass`.
/// Alternatively, use `TearoffMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TearoffMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkTearoffMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTearoffMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTearoffMenuItemClass>! { get }

    /// Required Initialiser for types conforming to `TearoffMenuItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TearoffMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkTearoffMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `TearoffMenuItemClassProtocol` conformance.
/// Use `TearoffMenuItemClassRef` only as an `unowned` reference to an existing `GtkTearoffMenuItemClass` instance.
///
public struct TearoffMenuItemClassRef: TearoffMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkTearoffMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TearoffMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTearoffMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTearoffMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTearoffMenuItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTearoffMenuItemClass>?) {
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

    /// Reference intialiser for a related type that implements `TearoffMenuItemClassProtocol`
    @inlinable init<T: TearoffMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TearoffMenuItemClass Record: TearoffMenuItemClassProtocol extension (methods and fields)
public extension TearoffMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTearoffMenuItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTearoffMenuItemClass>! { return ptr?.assumingMemoryBound(to: GtkTearoffMenuItemClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkMenuItemClass {
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



// MARK: - TextAppearance Record


///
/// The `TextAppearanceProtocol` protocol exposes the methods and properties of an underlying `GtkTextAppearance` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextAppearance`.
/// Alternatively, use `TextAppearanceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextAppearanceProtocol {
        /// Untyped pointer to the underlying `GtkTextAppearance` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextAppearance` instance.
    var _ptr: UnsafeMutablePointer<GtkTextAppearance>! { get }

    /// Required Initialiser for types conforming to `TextAppearanceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextAppearanceRef` type acts as a lightweight Swift reference to an underlying `GtkTextAppearance` instance.
/// It exposes methods that can operate on this data type through `TextAppearanceProtocol` conformance.
/// Use `TextAppearanceRef` only as an `unowned` reference to an existing `GtkTextAppearance` instance.
///
public struct TextAppearanceRef: TextAppearanceProtocol {
        /// Untyped pointer to the underlying `GtkTextAppearance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextAppearanceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextAppearance>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextAppearance>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextAppearance>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextAppearance>?) {
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

    /// Reference intialiser for a related type that implements `TextAppearanceProtocol`
    @inlinable init<T: TextAppearanceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `TextAppearance` type acts as an owner of an underlying `GtkTextAppearance` instance.
/// It provides the methods that can operate on this data type through `TextAppearanceProtocol` conformance.
/// Use `TextAppearance` as a strong reference or owner of a `GtkTextAppearance` instance.
///
open class TextAppearance: TextAppearanceProtocol {
        /// Untyped pointer to the underlying `GtkTextAppearance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAppearance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTextAppearance>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAppearance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTextAppearance>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAppearance` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAppearance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAppearance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTextAppearance>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAppearance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTextAppearance>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTextAppearance` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TextAppearance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTextAppearance>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTextAppearance, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TextAppearanceProtocol`
    /// `GtkTextAppearance` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextAppearanceProtocol`
    @inlinable public init<T: TextAppearanceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTextAppearance, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkTextAppearance`.
    deinit {
        // no reference counting for GtkTextAppearance, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTextAppearance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTextAppearance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTextAppearance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTextAppearance, cannot ref(_ptr)
    }



}

// MARK: no TextAppearance properties

// MARK: no TextAppearance signals

// MARK: TextAppearance has no signals
// MARK: TextAppearance Record: TextAppearanceProtocol extension (methods and fields)
public extension TextAppearanceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextAppearance` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextAppearance>! { return ptr?.assumingMemoryBound(to: GtkTextAppearance.self) }


    /// Background `GdkColor`.
    @inlinable var bgColor: GdkColor {
        /// Background `GdkColor`.
        get {
            let rv = _ptr.pointee.bg_color
            return rv
        }
        /// Background `GdkColor`.
         set {
            _ptr.pointee.bg_color = newValue
        }
    }

    /// Foreground `GdkColor`.
    @inlinable var fgColor: GdkColor {
        /// Foreground `GdkColor`.
        get {
            let rv = _ptr.pointee.fg_color
            return rv
        }
        /// Foreground `GdkColor`.
         set {
            _ptr.pointee.fg_color = newValue
        }
    }

    /// Super/subscript rise, can be negative.
    @inlinable var rise: gint {
        /// Super/subscript rise, can be negative.
        get {
            let rv = _ptr.pointee.rise
            return rv
        }
        /// Super/subscript rise, can be negative.
         set {
            _ptr.pointee.rise = newValue
        }
    }

    /// `PangoUnderline`
    @inlinable var underline: guint {
        /// `PangoUnderline`
        get {
            let rv = _ptr.pointee.underline
            return rv
        }
        /// `PangoUnderline`
         set {
            _ptr.pointee.underline = newValue
        }
    }

    /// Strikethrough style
    @inlinable var strikethrough: guint {
        /// Strikethrough style
        get {
            let rv = _ptr.pointee.strikethrough
            return rv
        }
        /// Strikethrough style
         set {
            _ptr.pointee.strikethrough = newValue
        }
    }

    /// Whether to use background-related values; this is
    ///   irrelevant for the values struct when in a tag, but is used for
    ///   the composite values struct; it’s true if any of the tags being
    ///   composited had background stuff set.
    @inlinable var drawBg: guint {
        /// Whether to use background-related values; this is
        ///   irrelevant for the values struct when in a tag, but is used for
        ///   the composite values struct; it’s true if any of the tags being
        ///   composited had background stuff set.
        get {
            let rv = _ptr.pointee.draw_bg
            return rv
        }
        /// Whether to use background-related values; this is
        ///   irrelevant for the values struct when in a tag, but is used for
        ///   the composite values struct; it’s true if any of the tags being
        ///   composited had background stuff set.
         set {
            _ptr.pointee.draw_bg = newValue
        }
    }

    /// This are only used when we are actually laying
    ///   out and rendering a paragraph; not when a `GtkTextAppearance` is
    ///   part of a `GtkTextAttributes`.
    @inlinable var insideSelection: guint {
        /// This are only used when we are actually laying
        ///   out and rendering a paragraph; not when a `GtkTextAppearance` is
        ///   part of a `GtkTextAttributes`.
        get {
            let rv = _ptr.pointee.inside_selection
            return rv
        }
        /// This are only used when we are actually laying
        ///   out and rendering a paragraph; not when a `GtkTextAppearance` is
        ///   part of a `GtkTextAttributes`.
         set {
            _ptr.pointee.inside_selection = newValue
        }
    }

    /// This are only used when we are actually laying
    ///   out and rendering a paragraph; not when a `GtkTextAppearance` is
    ///   part of a `GtkTextAttributes`.
    @inlinable var isText: guint {
        /// This are only used when we are actually laying
        ///   out and rendering a paragraph; not when a `GtkTextAppearance` is
        ///   part of a `GtkTextAttributes`.
        get {
            let rv = _ptr.pointee.is_text
            return rv
        }
        /// This are only used when we are actually laying
        ///   out and rendering a paragraph; not when a `GtkTextAppearance` is
        ///   part of a `GtkTextAttributes`.
         set {
            _ptr.pointee.is_text = newValue
        }
    }

}



// MARK: - TextAttributes Record

/// Using `GtkTextAttributes` directly should rarely be necessary.
/// It’s primarily useful with `gtk_text_iter_get_attributes()`.
/// As with most GTK+ structs, the fields in this struct should only
/// be read, never modified directly.
///
/// The `TextAttributesProtocol` protocol exposes the methods and properties of an underlying `GtkTextAttributes` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextAttributes`.
/// Alternatively, use `TextAttributesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextAttributesProtocol {
        /// Untyped pointer to the underlying `GtkTextAttributes` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextAttributes` instance.
    var text_attributes_ptr: UnsafeMutablePointer<GtkTextAttributes>! { get }

    /// Required Initialiser for types conforming to `TextAttributesProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Using `GtkTextAttributes` directly should rarely be necessary.
/// It’s primarily useful with `gtk_text_iter_get_attributes()`.
/// As with most GTK+ structs, the fields in this struct should only
/// be read, never modified directly.
///
/// The `TextAttributesRef` type acts as a lightweight Swift reference to an underlying `GtkTextAttributes` instance.
/// It exposes methods that can operate on this data type through `TextAttributesProtocol` conformance.
/// Use `TextAttributesRef` only as an `unowned` reference to an existing `GtkTextAttributes` instance.
///
public struct TextAttributesRef: TextAttributesProtocol {
        /// Untyped pointer to the underlying `GtkTextAttributes` instance.
    /// For type-safe access, use the generated, typed pointer `text_attributes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextAttributesRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextAttributes>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextAttributes>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextAttributes>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextAttributes>?) {
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

    /// Reference intialiser for a related type that implements `TextAttributesProtocol`
    @inlinable init<T: TextAttributesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkTextAttributes`, which describes
    /// a set of properties on some text.
    @inlinable init() {
        let rv = gtk_text_attributes_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// Using `GtkTextAttributes` directly should rarely be necessary.
/// It’s primarily useful with `gtk_text_iter_get_attributes()`.
/// As with most GTK+ structs, the fields in this struct should only
/// be read, never modified directly.
///
/// The `TextAttributes` type acts as a reference-counted owner of an underlying `GtkTextAttributes` instance.
/// It provides the methods that can operate on this data type through `TextAttributesProtocol` conformance.
/// Use `TextAttributes` as a strong reference or owner of a `GtkTextAttributes` instance.
///
open class TextAttributes: TextAttributesProtocol {
        /// Untyped pointer to the underlying `GtkTextAttributes` instance.
    /// For type-safe access, use the generated, typed pointer `text_attributes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAttributes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTextAttributes>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAttributes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTextAttributes>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAttributes` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAttributes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAttributes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTextAttributes>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextAttributes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTextAttributes>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkTextAttributes`.
    /// i.e., ownership is transferred to the `TextAttributes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTextAttributes>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_text_attributes_ref(ptr.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Reference intialiser for a related type that implements `TextAttributesProtocol`
    /// Will retain `GtkTextAttributes`.
    /// - Parameter other: an instance of a related type that implements `TextAttributesProtocol`
    @inlinable public init<T: TextAttributesProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_text_attributes_ref(ptr.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Releases the underlying `GtkTextAttributes` instance using `gtk_text_attributes_unref`.
    deinit {
        gtk_text_attributes_unref(ptr.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_text_attributes_ref(ptr.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_text_attributes_ref(ptr.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_text_attributes_ref(ptr.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_text_attributes_ref(ptr.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Creates a `GtkTextAttributes`, which describes
    /// a set of properties on some text.
    @inlinable public init() {
        let rv = gtk_text_attributes_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no TextAttributes properties

// MARK: no TextAttributes signals

// MARK: TextAttributes has no signals
// MARK: TextAttributes Record: TextAttributesProtocol extension (methods and fields)
public extension TextAttributesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextAttributes` instance.
    @inlinable var text_attributes_ptr: UnsafeMutablePointer<GtkTextAttributes>! { return ptr?.assumingMemoryBound(to: GtkTextAttributes.self) }

    /// Copies `src` and returns a new `GtkTextAttributes`.
    @inlinable func copy() -> TextAttributesRef! {
        guard let rv = TextAttributesRef(gconstpointer: gconstpointer(gtk_text_attributes_copy(text_attributes_ptr))) else { return nil }
        return rv
    }

    /// Copies the values from `src` to `dest` so that `dest` has
    /// the same values as `src`. Frees existing values in `dest`.
    @inlinable func copyValues<TextAttributesT: TextAttributesProtocol>(dest: TextAttributesT) {
        gtk_text_attributes_copy_values(text_attributes_ptr, dest.text_attributes_ptr)
    
    }

    /// Increments the reference count on `values`.
    @discardableResult @inlinable func ref() -> TextAttributesRef! {
        guard let rv = TextAttributesRef(gconstpointer: gconstpointer(gtk_text_attributes_ref(text_attributes_ptr))) else { return nil }
        return rv
    }

    /// Decrements the reference count on `values`, freeing the structure
    /// if the reference count reaches 0.
    @inlinable func unref() {
        gtk_text_attributes_unref(text_attributes_ptr)
    
    }

    // var refcount is unavailable because refcount is private

    /// `GtkTextAppearance` for text.
    @inlinable var appearance: GtkTextAppearance {
        /// `GtkTextAppearance` for text.
        get {
            let rv = text_attributes_ptr.pointee.appearance
            return rv
        }
        /// `GtkTextAppearance` for text.
         set {
            text_attributes_ptr.pointee.appearance = newValue
        }
    }

    /// `GtkJustification` for text.
    @inlinable var justification: GtkJustification {
        /// `GtkJustification` for text.
        get {
            let rv = text_attributes_ptr.pointee.justification
            return rv
        }
        /// `GtkJustification` for text.
         set {
            text_attributes_ptr.pointee.justification = newValue
        }
    }

    /// `GtkTextDirection` for text.
    @inlinable var direction: GtkTextDirection {
        /// `GtkTextDirection` for text.
        get {
            let rv = text_attributes_ptr.pointee.direction
            return rv
        }
        /// `GtkTextDirection` for text.
         set {
            text_attributes_ptr.pointee.direction = newValue
        }
    }

    /// `PangoFontDescription` for text.
    @inlinable var font: FontDescriptionRef! {
        /// `PangoFontDescription` for text.
        get {
            let rv = FontDescriptionRef(gconstpointer: gconstpointer(text_attributes_ptr.pointee.font))
            return rv
        }
        /// `PangoFontDescription` for text.
         set {
            text_attributes_ptr.pointee.font = UnsafeMutablePointer<PangoFontDescription>(newValue.font_description_ptr)
        }
    }

    /// Font scale factor.
    @inlinable var fontScale: gdouble {
        /// Font scale factor.
        get {
            let rv = text_attributes_ptr.pointee.font_scale
            return rv
        }
        /// Font scale factor.
         set {
            text_attributes_ptr.pointee.font_scale = newValue
        }
    }

    /// Width of the left margin in pixels.
    @inlinable var leftMargin: gint {
        /// Width of the left margin in pixels.
        get {
            let rv = text_attributes_ptr.pointee.left_margin
            return rv
        }
        /// Width of the left margin in pixels.
         set {
            text_attributes_ptr.pointee.left_margin = newValue
        }
    }

    /// Width of the right margin in pixels.
    @inlinable var rightMargin: gint {
        /// Width of the right margin in pixels.
        get {
            let rv = text_attributes_ptr.pointee.right_margin
            return rv
        }
        /// Width of the right margin in pixels.
         set {
            text_attributes_ptr.pointee.right_margin = newValue
        }
    }

    /// Amount to indent the paragraph, in pixels.
    @inlinable var indent: gint {
        /// Amount to indent the paragraph, in pixels.
        get {
            let rv = text_attributes_ptr.pointee.indent
            return rv
        }
        /// Amount to indent the paragraph, in pixels.
         set {
            text_attributes_ptr.pointee.indent = newValue
        }
    }

    /// Pixels of blank space above paragraphs.
    @inlinable var pixelsAboveLines: gint {
        /// Pixels of blank space above paragraphs.
        get {
            let rv = text_attributes_ptr.pointee.pixels_above_lines
            return rv
        }
        /// Pixels of blank space above paragraphs.
         set {
            text_attributes_ptr.pointee.pixels_above_lines = newValue
        }
    }

    /// Pixels of blank space below paragraphs.
    @inlinable var pixelsBelowLines: gint {
        /// Pixels of blank space below paragraphs.
        get {
            let rv = text_attributes_ptr.pointee.pixels_below_lines
            return rv
        }
        /// Pixels of blank space below paragraphs.
         set {
            text_attributes_ptr.pointee.pixels_below_lines = newValue
        }
    }

    /// Pixels of blank space between wrapped lines in
    ///   a paragraph.
    @inlinable var pixelsInsideWrap: gint {
        /// Pixels of blank space between wrapped lines in
        ///   a paragraph.
        get {
            let rv = text_attributes_ptr.pointee.pixels_inside_wrap
            return rv
        }
        /// Pixels of blank space between wrapped lines in
        ///   a paragraph.
         set {
            text_attributes_ptr.pointee.pixels_inside_wrap = newValue
        }
    }

    /// Custom `PangoTabArray` for this text.
    @inlinable var tabs: TabArrayRef! {
        /// Custom `PangoTabArray` for this text.
        get {
            let rv = TabArrayRef(gconstpointer: gconstpointer(text_attributes_ptr.pointee.tabs))
            return rv
        }
        /// Custom `PangoTabArray` for this text.
         set {
            text_attributes_ptr.pointee.tabs = UnsafeMutablePointer<PangoTabArray>(newValue.tab_array_ptr)
        }
    }

    /// `GtkWrapMode` for text.
    @inlinable var wrapMode: GtkWrapMode {
        /// `GtkWrapMode` for text.
        get {
            let rv = text_attributes_ptr.pointee.wrap_mode
            return rv
        }
        /// `GtkWrapMode` for text.
         set {
            text_attributes_ptr.pointee.wrap_mode = newValue
        }
    }

    /// `PangoLanguage` for text.
    @inlinable var language: LanguageRef! {
        /// `PangoLanguage` for text.
        get {
            let rv = LanguageRef(gconstpointer: gconstpointer(text_attributes_ptr.pointee.language))
            return rv
        }
        /// `PangoLanguage` for text.
         set {
            text_attributes_ptr.pointee.language = UnsafeMutablePointer<PangoLanguage>(newValue.language_ptr)
        }
    }

    // var pgBgColor is unavailable because pg_bg_color is private

    /// Hide the text.
    @inlinable var invisible: guint {
        /// Hide the text.
        get {
            let rv = text_attributes_ptr.pointee.invisible
            return rv
        }
        /// Hide the text.
         set {
            text_attributes_ptr.pointee.invisible = newValue
        }
    }

    /// Background is fit to full line height rather than
    ///    baseline +/- ascent/descent (font height).
    @inlinable var bgFullHeight: guint {
        /// Background is fit to full line height rather than
        ///    baseline +/- ascent/descent (font height).
        get {
            let rv = text_attributes_ptr.pointee.bg_full_height
            return rv
        }
        /// Background is fit to full line height rather than
        ///    baseline +/- ascent/descent (font height).
         set {
            text_attributes_ptr.pointee.bg_full_height = newValue
        }
    }

    /// Can edit this text.
    @inlinable var editable: guint {
        /// Can edit this text.
        get {
            let rv = text_attributes_ptr.pointee.editable
            return rv
        }
        /// Can edit this text.
         set {
            text_attributes_ptr.pointee.editable = newValue
        }
    }

    /// Whether to disable font fallback.
    @inlinable var noFallback: guint {
        /// Whether to disable font fallback.
        get {
            let rv = text_attributes_ptr.pointee.no_fallback
            return rv
        }
        /// Whether to disable font fallback.
         set {
            text_attributes_ptr.pointee.no_fallback = newValue
        }
    }

    // var pgBgRGBA is unavailable because pg_bg_rgba is private

    /// Extra space to insert between graphemes, in Pango units
    @inlinable var letterSpacing: gint {
        /// Extra space to insert between graphemes, in Pango units
        get {
            let rv = text_attributes_ptr.pointee.letter_spacing
            return rv
        }
        /// Extra space to insert between graphemes, in Pango units
         set {
            text_attributes_ptr.pointee.letter_spacing = newValue
        }
    }

}



// MARK: - TextBTree Record


///
/// The `TextBTreeProtocol` protocol exposes the methods and properties of an underlying `GtkTextBTree` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextBTree`.
/// Alternatively, use `TextBTreeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextBTreeProtocol {
        /// Untyped pointer to the underlying `GtkTextBTree` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextBTree` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBTree>! { get }

    /// Required Initialiser for types conforming to `TextBTreeProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextBTreeRef` type acts as a lightweight Swift reference to an underlying `GtkTextBTree` instance.
/// It exposes methods that can operate on this data type through `TextBTreeProtocol` conformance.
/// Use `TextBTreeRef` only as an `unowned` reference to an existing `GtkTextBTree` instance.
///
public struct TextBTreeRef: TextBTreeProtocol {
        /// Untyped pointer to the underlying `GtkTextBTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextBTreeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextBTree>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextBTree>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextBTree>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextBTree>?) {
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

    /// Reference intialiser for a related type that implements `TextBTreeProtocol`
    @inlinable init<T: TextBTreeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `TextBTree` type acts as an owner of an underlying `GtkTextBTree` instance.
/// It provides the methods that can operate on this data type through `TextBTreeProtocol` conformance.
/// Use `TextBTree` as a strong reference or owner of a `GtkTextBTree` instance.
///
open class TextBTree: TextBTreeProtocol {
        /// Untyped pointer to the underlying `GtkTextBTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextBTree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTextBTree>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextBTree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTextBTree>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextBTree` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextBTree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextBTree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTextBTree>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextBTree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTextBTree>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTextBTree` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TextBTree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTextBTree>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTextBTree, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TextBTreeProtocol`
    /// `GtkTextBTree` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextBTreeProtocol`
    @inlinable public init<T: TextBTreeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTextBTree, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkTextBTree`.
    deinit {
        // no reference counting for GtkTextBTree, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTextBTree, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTextBTree, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTextBTree, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTextBTree, cannot ref(_ptr)
    }



}

// MARK: no TextBTree properties

// MARK: no TextBTree signals

// MARK: TextBTree has no signals
// MARK: TextBTree Record: TextBTreeProtocol extension (methods and fields)
public extension TextBTreeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextBTree` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextBTree>! { return ptr?.assumingMemoryBound(to: GtkTextBTree.self) }



}



/// Metatype/GType declaration for TextBuffer
public extension TextBufferClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextBuffer`
    static var metatypeReference: GType { gtk_text_buffer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextBufferClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextBufferClass.self) }
    
    static var metatype: GtkTextBufferClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextBufferClassRef? { TextBufferClassRef(metatypePointer) }
    
    
}

// MARK: - TextBufferClass Record


///
/// The `TextBufferClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextBufferClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextBufferClass`.
/// Alternatively, use `TextBufferClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBufferClass>! { get }

    /// Required Initialiser for types conforming to `TextBufferClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextBufferClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextBufferClass` instance.
/// It exposes methods that can operate on this data type through `TextBufferClassProtocol` conformance.
/// Use `TextBufferClassRef` only as an `unowned` reference to an existing `GtkTextBufferClass` instance.
///
public struct TextBufferClassRef: TextBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextBufferClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextBufferClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextBufferClass>?) {
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

    /// Reference intialiser for a related type that implements `TextBufferClassProtocol`
    @inlinable init<T: TextBufferClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextBufferClass Record: TextBufferClassProtocol extension (methods and fields)
public extension TextBufferClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextBufferClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextBufferClass>! { return ptr?.assumingMemoryBound(to: GtkTextBufferClass.self) }


    /// The object class structure needs to be the first.
    @inlinable var parentClass: GObjectClass {
        /// The object class structure needs to be the first.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var insertText is unavailable because insert_text is void

    // var insertPixbuf is unavailable because insert_pixbuf is void

    // var insertChildAnchor is unavailable because insert_child_anchor is void

    // var deleteRange is unavailable because delete_range is void

    // var changed is unavailable because changed is void

    // var modifiedChanged is unavailable because modified_changed is void

    // var markSet is unavailable because mark_set is void

    // var markDeleted is unavailable because mark_deleted is void

    // var applyTag is unavailable because apply_tag is void

    // var removeTag is unavailable because remove_tag is void

    // var beginUserAction is unavailable because begin_user_action is void

    // var endUserAction is unavailable because end_user_action is void

    // var pasteDone is unavailable because paste_done is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for TextCellAccessible
public extension TextCellAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextCellAccessible`
    static var metatypeReference: GType { gtk_text_cell_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextCellAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextCellAccessibleClass.self) }
    
    static var metatype: GtkTextCellAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextCellAccessibleClassRef? { TextCellAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - TextCellAccessibleClass Record


///
/// The `TextCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextCellAccessibleClass`.
/// Alternatively, use `TextCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkTextCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextCellAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `TextCellAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `TextCellAccessibleClassProtocol` conformance.
/// Use `TextCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkTextCellAccessibleClass` instance.
///
public struct TextCellAccessibleClassRef: TextCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkTextCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextCellAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextCellAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `TextCellAccessibleClassProtocol`
    @inlinable init<T: TextCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextCellAccessibleClass Record: TextCellAccessibleClassProtocol extension (methods and fields)
public extension TextCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextCellAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextCellAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkTextCellAccessibleClass.self) }


    @inlinable var parentClass: GtkRendererCellAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TextChildAnchor
public extension TextChildAnchorClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextChildAnchor`
    static var metatypeReference: GType { gtk_text_child_anchor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextChildAnchorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextChildAnchorClass.self) }
    
    static var metatype: GtkTextChildAnchorClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextChildAnchorClassRef? { TextChildAnchorClassRef(metatypePointer) }
    
    
}

// MARK: - TextChildAnchorClass Record


///
/// The `TextChildAnchorClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextChildAnchorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextChildAnchorClass`.
/// Alternatively, use `TextChildAnchorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextChildAnchorClassProtocol {
        /// Untyped pointer to the underlying `GtkTextChildAnchorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextChildAnchorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextChildAnchorClass>! { get }

    /// Required Initialiser for types conforming to `TextChildAnchorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextChildAnchorClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextChildAnchorClass` instance.
/// It exposes methods that can operate on this data type through `TextChildAnchorClassProtocol` conformance.
/// Use `TextChildAnchorClassRef` only as an `unowned` reference to an existing `GtkTextChildAnchorClass` instance.
///
public struct TextChildAnchorClassRef: TextChildAnchorClassProtocol {
        /// Untyped pointer to the underlying `GtkTextChildAnchorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextChildAnchorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextChildAnchorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextChildAnchorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextChildAnchorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextChildAnchorClass>?) {
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

    /// Reference intialiser for a related type that implements `TextChildAnchorClassProtocol`
    @inlinable init<T: TextChildAnchorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextChildAnchorClass Record: TextChildAnchorClassProtocol extension (methods and fields)
public extension TextChildAnchorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextChildAnchorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextChildAnchorClass>! { return ptr?.assumingMemoryBound(to: GtkTextChildAnchorClass.self) }


    @inlinable var parentClass: GObjectClass {
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



// MARK: - TextIter Record

/// You may wish to begin by reading the
/// [text widget conceptual overview](#TextWidget)
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
///
/// The `TextIterProtocol` protocol exposes the methods and properties of an underlying `GtkTextIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextIter`.
/// Alternatively, use `TextIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextIterProtocol {
        /// Untyped pointer to the underlying `GtkTextIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextIter` instance.
    var text_iter_ptr: UnsafeMutablePointer<GtkTextIter>! { get }

    /// Required Initialiser for types conforming to `TextIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// You may wish to begin by reading the
/// [text widget conceptual overview](#TextWidget)
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
///
/// The `TextIterRef` type acts as a lightweight Swift reference to an underlying `GtkTextIter` instance.
/// It exposes methods that can operate on this data type through `TextIterProtocol` conformance.
/// Use `TextIterRef` only as an `unowned` reference to an existing `GtkTextIter` instance.
///
public struct TextIterRef: TextIterProtocol {
        /// Untyped pointer to the underlying `GtkTextIter` instance.
    /// For type-safe access, use the generated, typed pointer `text_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextIter>?) {
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

    /// Reference intialiser for a related type that implements `TextIterProtocol`
    @inlinable init<T: TextIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// You may wish to begin by reading the
/// [text widget conceptual overview](#TextWidget)
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
///
/// The `TextIter` type acts as an owner of an underlying `GtkTextIter` instance.
/// It provides the methods that can operate on this data type through `TextIterProtocol` conformance.
/// Use `TextIter` as a strong reference or owner of a `GtkTextIter` instance.
///
open class TextIter: TextIterProtocol {
        /// Untyped pointer to the underlying `GtkTextIter` instance.
    /// For type-safe access, use the generated, typed pointer `text_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTextIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTextIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTextIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `TextIterProtocol`
    /// `GtkTextIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextIterProtocol`
    @inlinable public init<T: TextIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Do-nothing destructor for `GtkTextIter`.
    deinit {
        // no reference counting for GtkTextIter, cannot unref(text_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }



}

// MARK: no TextIter properties

// MARK: no TextIter signals

// MARK: TextIter has no signals
// MARK: TextIter Record: TextIterProtocol extension (methods and fields)
public extension TextIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextIter` instance.
    @inlinable var text_iter_ptr: UnsafeMutablePointer<GtkTextIter>! { return ptr?.assumingMemoryBound(to: GtkTextIter.self) }

    /// Assigns the value of `other` to `iter`.  This function
    /// is not useful in applications, because iterators can be assigned
    /// with `GtkTextIter i = j;`. The
    /// function is used by language bindings.
    @inlinable func assign<TextIterT: TextIterProtocol>(other: TextIterT) {
        gtk_text_iter_assign(text_iter_ptr, other.text_iter_ptr)
    
    }

    /// Moves backward by one character offset. Returns `true` if movement
    /// was possible; if `iter` was the first in the buffer (character
    /// offset 0), `gtk_text_iter_backward_char()` returns `false` for convenience when
    /// writing loops.
    @inlinable func backwardChar() -> Bool {
        let rv = ((gtk_text_iter_backward_char(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` characters backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`.
    @inlinable func backwardChars(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_chars(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Like `gtk_text_iter_forward_cursor_position()`, but moves backward.
    @inlinable func backwardCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_backward_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` cursor positions. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func backwardCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Same as `gtk_text_iter_forward_find_char()`, but goes backward from `iter`.
    @inlinable func backwardFindChar(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_backward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Same as `gtk_text_iter_forward_find_char()`, but goes backward from `iter`.
    @inlinable func backwardFindChar<TextIterT: TextIterProtocol>(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_backward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` to the start of the previous line. Returns `true` if
    /// `iter` could be moved; i.e. if `iter` was at character offset 0, this
    /// function returns `false`. Therefore if `iter` was already on line 0,
    /// but not at the start of the line, `iter` is snapped to the start of
    /// the line and the function returns `true`. (Note that this implies that
    /// in a loop calling this function, the line number may not change on
    /// every iteration, if your first iteration is on line 0.)
    @inlinable func backwardLine() -> Bool {
        let rv = ((gtk_text_iter_backward_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` lines backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves forward by 0 - `count` lines.
    @inlinable func backwardLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Same as `gtk_text_iter_forward_search()`, but moves backward.
    /// 
    /// `match_end` will never be set to a `GtkTextIter` located after `iter`, even if
    /// there is a possible `match_start` before or at `iter`.
    @inlinable func backwardSearch(_ str: UnsafePointer<gchar>!, flags: TextSearchFlags, matchStart: TextIterRef? = nil, matchEnd: TextIterRef? = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_backward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Same as `gtk_text_iter_forward_search()`, but moves backward.
    /// 
    /// `match_end` will never be set to a `GtkTextIter` located after `iter`, even if
    /// there is a possible `match_start` before or at `iter`.
    @inlinable func backwardSearch<TextIterT: TextIterProtocol>(str: UnsafePointer<gchar>!, flags: TextSearchFlags, matchStart: TextIterT?, matchEnd: TextIterT?, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_backward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves backward to the previous sentence start; if `iter` is already at
    /// the start of a sentence, moves backward to the next one.  Sentence
    /// boundaries are determined by Pango and should be correct for nearly
    /// any language (if not, the correct fix would be to the Pango text
    /// boundary algorithms).
    @inlinable func backwardSentenceStart() -> Bool {
        let rv = ((gtk_text_iter_backward_sentence_start(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_backward_sentence_start()` up to `count` times,
    /// or until it returns `false`. If `count` is negative, moves forward
    /// instead of backward.
    @inlinable func backwardSentenceStarts(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_sentence_starts(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves backward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles before `iter`. Sets `iter`
    /// to the location of the toggle, or the start of the buffer
    /// if no toggle is found.
    @inlinable func backwardToTagToggle(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_backward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Moves backward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles before `iter`. Sets `iter`
    /// to the location of the toggle, or the start of the buffer
    /// if no toggle is found.
    @inlinable func backwardToTagToggle<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_backward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the previous visible cursor position. See
    /// `gtk_text_iter_backward_cursor_position()` for details.
    @inlinable func backwardVisibleCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_backward_visible_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` visible cursor positions. See
    /// `gtk_text_iter_backward_cursor_position()` for details.
    @inlinable func backwardVisibleCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_visible_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves `iter` to the start of the previous visible line. Returns `true` if
    /// `iter` could be moved; i.e. if `iter` was at character offset 0, this
    /// function returns `false`. Therefore if `iter` was already on line 0,
    /// but not at the start of the line, `iter` is snapped to the start of
    /// the line and the function returns `true`. (Note that this implies that
    /// in a loop calling this function, the line number may not change on
    /// every iteration, if your first iteration is on line 0.)
    @inlinable func backwardVisibleLine() -> Bool {
        let rv = ((gtk_text_iter_backward_visible_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` visible lines backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves forward by 0 - `count` lines.
    @inlinable func backwardVisibleLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_visible_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves backward to the previous visible word start. (If `iter` is currently
    /// on a word start, moves backward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func backwardVisibleWordStart() -> Bool {
        let rv = ((gtk_text_iter_backward_visible_word_start(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_backward_visible_word_start()` up to `count` times.
    @inlinable func backwardVisibleWordStarts(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_visible_word_starts(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves backward to the previous word start. (If `iter` is currently on a
    /// word start, moves backward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func backwardWordStart() -> Bool {
        let rv = ((gtk_text_iter_backward_word_start(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_backward_word_start()` up to `count` times.
    @inlinable func backwardWordStarts(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_word_starts(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if `gtk_text_iter_begins_tag()` returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike `gtk_text_iter_ends_tag()`, if `gtk_text_iter_begins_tag()` returns
    /// `true`, `gtk_text_iter_has_tag()` will also return `true` for the same
    /// parameters.
    ///
    /// **begins_tag is deprecated:**
    /// Use gtk_text_iter_starts_tag() instead.
    @available(*, deprecated)
    @inlinable func begins(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_begins_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if `gtk_text_iter_begins_tag()` returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike `gtk_text_iter_ends_tag()`, if `gtk_text_iter_begins_tag()` returns
    /// `true`, `gtk_text_iter_has_tag()` will also return `true` for the same
    /// parameters.
    ///
    /// **begins_tag is deprecated:**
    /// Use gtk_text_iter_starts_tag() instead.
    @available(*, deprecated)
    @inlinable func begins<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_begins_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Considering the default editability of the buffer, and tags that
    /// affect editability, determines whether text inserted at `iter` would
    /// be editable. If text inserted at `iter` would be editable then the
    /// user should be allowed to insert text at `iter`.
    /// `gtk_text_buffer_insert_interactive()` uses this function to decide
    /// whether insertions are allowed at a given position.
    @inlinable func canInsert(defaultEditability: Bool) -> Bool {
        let rv = ((gtk_text_iter_can_insert(text_iter_ptr, gboolean((defaultEditability) ? 1 : 0))) != 0)
        return rv
    }

    /// A `qsort()`-style function that returns negative if `lhs` is less than
    /// `rhs`, positive if `lhs` is greater than `rhs`, and 0 if they’re equal.
    /// Ordering is in character offset order, i.e. the first character in the buffer
    /// is less than the second character in the buffer.
    @inlinable func compare<TextIterT: TextIterProtocol>(rhs: TextIterT) -> Int {
        let rv = Int(gtk_text_iter_compare(text_iter_ptr, rhs.text_iter_ptr))
        return rv
    }

    /// Creates a dynamically-allocated copy of an iterator. This function
    /// is not useful in applications, because iterators can be copied with a
    /// simple assignment (`GtkTextIter i = j;`). The
    /// function is used by language bindings.
    @inlinable func copy() -> TextIterRef! {
        guard let rv = TextIterRef(gconstpointer: gconstpointer(gtk_text_iter_copy(text_iter_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the character at `iter` is within an editable region
    /// of text.  Non-editable text is “locked” and can’t be changed by the
    /// user via `GtkTextView`. This function is simply a convenience
    /// wrapper around `gtk_text_iter_get_attributes()`. If no tags applied
    /// to this text affect editability, `default_setting` will be returned.
    /// 
    /// You don’t want to use this function to decide whether text can be
    /// inserted at `iter`, because for insertion you don’t want to know
    /// whether the char at `iter` is inside an editable range, you want to
    /// know whether a new character inserted at `iter` would be inside an
    /// editable range. Use `gtk_text_iter_can_insert()` to handle this
    /// case.
    @inlinable func editable(defaultSetting: Bool) -> Bool {
        let rv = ((gtk_text_iter_editable(text_iter_ptr, gboolean((defaultSetting) ? 1 : 0))) != 0)
        return rv
    }

    /// Returns `true` if `iter` points to the start of the paragraph
    /// delimiter characters for a line (delimiters will be either a
    /// newline, a carriage return, a carriage return followed by a
    /// newline, or a Unicode paragraph separator character). Note that an
    /// iterator pointing to the \n of a \r\n pair will not be counted as
    /// the end of a line, the line ends before the \r. The end iterator is
    /// considered to be at the end of a line, even though there are no
    /// paragraph delimiter chars there.
    @inlinable func endsLine() -> Bool {
        let rv = ((gtk_text_iter_ends_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` ends a sentence.  Sentence boundaries are
    /// determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango text boundary
    /// algorithms).
    @inlinable func endsSentence() -> Bool {
        let rv = ((gtk_text_iter_ends_sentence(text_iter_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `tag` is toggled off at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled off at this point.
    /// 
    /// Note that if `gtk_text_iter_ends_tag()` returns `true`, it means that `iter` is
    /// at the end of the tagged range, but that the character
    /// at `iter` is outside the tagged range. In other words,
    /// unlike `gtk_text_iter_starts_tag()`, if `gtk_text_iter_ends_tag()` returns `true`,
    /// `gtk_text_iter_has_tag()` will return `false` for the same parameters.
    @inlinable func ends(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_ends_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Returns `true` if `tag` is toggled off at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled off at this point.
    /// 
    /// Note that if `gtk_text_iter_ends_tag()` returns `true`, it means that `iter` is
    /// at the end of the tagged range, but that the character
    /// at `iter` is outside the tagged range. In other words,
    /// unlike `gtk_text_iter_starts_tag()`, if `gtk_text_iter_ends_tag()` returns `true`,
    /// `gtk_text_iter_has_tag()` will return `false` for the same parameters.
    @inlinable func ends<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_ends_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` ends a natural-language word.  Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func endsWord() -> Bool {
        let rv = ((gtk_text_iter_ends_word(text_iter_ptr)) != 0)
        return rv
    }

    /// Tests whether two iterators are equal, using the fastest possible
    /// mechanism. This function is very fast; you can expect it to perform
    /// better than e.g. getting the character offset for each iterator and
    /// comparing the offsets yourself. Also, it’s a bit faster than
    /// `gtk_text_iter_compare()`.
    @inlinable func equal<TextIterT: TextIterProtocol>(rhs: TextIterT) -> Bool {
        let rv = ((gtk_text_iter_equal(text_iter_ptr, rhs.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward by one character offset. Note that images
    /// embedded in the buffer occupy 1 character slot, so
    /// `gtk_text_iter_forward_char()` may actually move onto an image instead
    /// of a character, if you have images in your buffer.  If `iter` is the
    /// end iterator or one character before it, `iter` will now point at
    /// the end iterator, and `gtk_text_iter_forward_char()` returns `false` for
    /// convenience when writing loops.
    @inlinable func forwardChar() -> Bool {
        let rv = ((gtk_text_iter_forward_char(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` characters if possible (if `count` would move past the
    /// start or end of the buffer, moves to the start or end of the
    /// buffer). The return value indicates whether the new position of
    /// `iter` is different from its original position, and dereferenceable
    /// (the last iterator in the buffer is not dereferenceable). If `count`
    /// is 0, the function does nothing and returns `false`.
    @inlinable func forwardChars(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_chars(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves `iter` forward by a single cursor position. Cursor positions
    /// are (unsurprisingly) positions where the cursor can appear. Perhaps
    /// surprisingly, there may not be a cursor position between all
    /// characters. The most common example for European languages would be
    /// a carriage return/newline sequence. For some Unicode characters,
    /// the equivalent of say the letter “a” with an accent mark will be
    /// represented as two characters, first the letter then a "combining
    /// mark" that causes the accent to be rendered; so the cursor can’t go
    /// between those two characters. See also the `PangoLogAttr-struct` and
    /// `pango_break()` function.
    @inlinable func forwardCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_forward_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` cursor positions. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func forwardCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Advances `iter`, calling `pred` on each character. If
    /// `pred` returns `true`, returns `true` and stops scanning.
    /// If `pred` never returns `true`, `iter` is set to `limit` if
    /// `limit` is non-`nil`, otherwise to the end iterator.
    @inlinable func forwardFindChar(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_forward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Advances `iter`, calling `pred` on each character. If
    /// `pred` returns `true`, returns `true` and stops scanning.
    /// If `pred` never returns `true`, `iter` is set to `limit` if
    /// `limit` is non-`nil`, otherwise to the end iterator.
    @inlinable func forwardFindChar<TextIterT: TextIterProtocol>(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_forward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` to the start of the next line. If the iter is already on the
    /// last line of the buffer, moves the iter to the end of the current line.
    /// If after the operation, the iter is at the end of the buffer and not
    /// dereferencable, returns `false`. Otherwise, returns `true`.
    @inlinable func forwardLine() -> Bool {
        let rv = ((gtk_text_iter_forward_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` lines forward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves backward by 0 - `count` lines.
    @inlinable func forwardLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Searches forward for `str`. Any match is returned by setting
    /// `match_start` to the first character of the match and `match_end` to the
    /// first character after the match. The search will not continue past
    /// `limit`. Note that a search is a linear or `O(n)` operation, so you
    /// may wish to use `limit` to avoid locking up your UI on large
    /// buffers.
    /// 
    /// `match_start` will never be set to a `GtkTextIter` located before `iter`, even if
    /// there is a possible `match_end` after or at `iter`.
    @inlinable func forwardSearch(_ str: UnsafePointer<gchar>!, flags: TextSearchFlags, matchStart: TextIterRef? = nil, matchEnd: TextIterRef? = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_forward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Searches forward for `str`. Any match is returned by setting
    /// `match_start` to the first character of the match and `match_end` to the
    /// first character after the match. The search will not continue past
    /// `limit`. Note that a search is a linear or `O(n)` operation, so you
    /// may wish to use `limit` to avoid locking up your UI on large
    /// buffers.
    /// 
    /// `match_start` will never be set to a `GtkTextIter` located before `iter`, even if
    /// there is a possible `match_end` after or at `iter`.
    @inlinable func forwardSearch<TextIterT: TextIterProtocol>(str: UnsafePointer<gchar>!, flags: TextSearchFlags, matchStart: TextIterT?, matchEnd: TextIterT?, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_forward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves forward to the next sentence end. (If `iter` is at the end of
    /// a sentence, moves to the next end of sentence.)  Sentence
    /// boundaries are determined by Pango and should be correct for nearly
    /// any language (if not, the correct fix would be to the Pango text
    /// boundary algorithms).
    @inlinable func forwardSentenceEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_sentence_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_forward_sentence_end()` `count` times (or until
    /// `gtk_text_iter_forward_sentence_end()` returns `false`). If `count` is
    /// negative, moves backward instead of forward.
    @inlinable func forwardSentenceEnds(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_sentence_ends(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves `iter` forward to the “end iterator,” which points one past the last
    /// valid character in the buffer. `gtk_text_iter_get_char()` called on the
    /// end iterator returns 0, which is convenient for writing loops.
    @inlinable func forwardToEnd() {
        gtk_text_iter_forward_to_end(text_iter_ptr)
    
    }

    /// Moves the iterator to point to the paragraph delimiter characters,
    /// which will be either a newline, a carriage return, a carriage
    /// return/newline in sequence, or the Unicode paragraph separator
    /// character. If the iterator is already at the paragraph delimiter
    /// characters, moves to the paragraph delimiter characters for the
    /// next line. If `iter` is on the last line in the buffer, which does
    /// not end in paragraph delimiters, moves to the end iterator (end of
    /// the last line), and returns `false`.
    @inlinable func forwardToLineEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_to_line_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves forward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles after `iter`. Sets `iter` to
    /// the location of the toggle, or to the end of the buffer
    /// if no toggle is found.
    @inlinable func forwardToTagToggle(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_forward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Moves forward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles after `iter`. Sets `iter` to
    /// the location of the toggle, or to the end of the buffer
    /// if no toggle is found.
    @inlinable func forwardToTagToggle<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_forward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the next visible cursor position. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func forwardVisibleCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_forward_visible_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` visible cursor positions. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func forwardVisibleCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_visible_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves `iter` to the start of the next visible line. Returns `true` if there
    /// was a next line to move to, and `false` if `iter` was simply moved to
    /// the end of the buffer and is now not dereferenceable, or if `iter` was
    /// already at the end of the buffer.
    @inlinable func forwardVisibleLine() -> Bool {
        let rv = ((gtk_text_iter_forward_visible_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` visible lines forward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves backward by 0 - `count` lines.
    @inlinable func forwardVisibleLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_visible_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves forward to the next visible word end. (If `iter` is currently on a
    /// word end, moves forward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func forwardVisibleWordEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_visible_word_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_forward_visible_word_end()` up to `count` times.
    @inlinable func forwardVisibleWordEnds(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_visible_word_ends(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves forward to the next word end. (If `iter` is currently on a
    /// word end, moves forward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func forwardWordEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_word_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_forward_word_end()` up to `count` times.
    @inlinable func forwardWordEnds(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_word_ends(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Free an iterator allocated on the heap. This function
    /// is intended for use in language bindings, and is not
    /// especially useful for applications, because iterators can
    /// simply be allocated on the stack.
    @inlinable func free() {
        gtk_text_iter_free(text_iter_ptr)
    
    }

    /// Computes the effect of any tags applied to this spot in the
    /// text. The `values` parameter should be initialized to the default
    /// settings you wish to use if no tags are in effect. You’d typically
    /// obtain the defaults from `gtk_text_view_get_default_attributes()`.
    /// 
    /// `gtk_text_iter_get_attributes()` will modify `values`, applying the
    /// effects of any tags present at `iter`. If any tags affected `values`,
    /// the function returns `true`.
    @inlinable func getAttributes<TextAttributesT: TextAttributesProtocol>(values: TextAttributesT) -> Bool {
        let rv = ((gtk_text_iter_get_attributes(text_iter_ptr, values.text_attributes_ptr)) != 0)
        return rv
    }

    /// Returns the `GtkTextBuffer` this iterator is associated with.
    @inlinable func getBuffer() -> TextBufferRef! {
        let rv = TextBufferRef(gconstpointer: gconstpointer(gtk_text_iter_get_buffer(text_iter_ptr)))
        return rv
    }

    /// Returns the number of bytes in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable func getBytesInLine() -> Int {
        let rv = Int(gtk_text_iter_get_bytes_in_line(text_iter_ptr))
        return rv
    }

    /// The Unicode character at this iterator is returned.  (Equivalent to
    /// operator* on a C++ iterator.)  If the element at this iterator is a
    /// non-character element, such as an image embedded in the buffer, the
    /// Unicode “unknown” character 0xFFFC is returned. If invoked on
    /// the end iterator, zero is returned; zero is not a valid Unicode character.
    /// So you can write a loop which ends when `gtk_text_iter_get_char()`
    /// returns 0.
    @inlinable func getChar() -> gunichar {
        let rv = gtk_text_iter_get_char(text_iter_ptr)
        return rv
    }

    /// Returns the number of characters in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable func getCharsInLine() -> Int {
        let rv = Int(gtk_text_iter_get_chars_in_line(text_iter_ptr))
        return rv
    }

    /// If the location at `iter` contains a child anchor, the
    /// anchor is returned (with no new reference count added). Otherwise,
    /// `nil` is returned.
    @inlinable func getChildAnchor() -> TextChildAnchorRef! {
        let rv = TextChildAnchorRef(gconstpointer: gconstpointer(gtk_text_iter_get_child_anchor(text_iter_ptr)))
        return rv
    }

    /// A convenience wrapper around `gtk_text_iter_get_attributes()`,
    /// which returns the language in effect at `iter`. If no tags affecting
    /// language apply to `iter`, the return value is identical to that of
    /// `gtk_get_default_language()`.
    @inlinable func getLanguage() -> Pango.LanguageRef! {
        let rv = Pango.LanguageRef(gtk_text_iter_get_language(text_iter_ptr))
        return rv
    }

    /// Returns the line number containing the iterator. Lines in
    /// a `GtkTextBuffer` are numbered beginning with 0 for the first
    /// line in the buffer.
    @inlinable func getLine() -> Int {
        let rv = Int(gtk_text_iter_get_line(text_iter_ptr))
        return rv
    }

    /// Returns the byte index of the iterator, counting
    /// from the start of a newline-terminated line.
    /// Remember that `GtkTextBuffer` encodes text in
    /// UTF-8, and that characters can require a variable
    /// number of bytes to represent.
    @inlinable func getLineIndex() -> Int {
        let rv = Int(gtk_text_iter_get_line_index(text_iter_ptr))
        return rv
    }

    /// Returns the character offset of the iterator,
    /// counting from the start of a newline-terminated line.
    /// The first character on the line has offset 0.
    @inlinable func getLineOffset() -> Int {
        let rv = Int(gtk_text_iter_get_line_offset(text_iter_ptr))
        return rv
    }

    /// Returns a list of all `GtkTextMark` at this location. Because marks
    /// are not iterable (they don’t take up any "space" in the buffer,
    /// they are just marks in between iterable locations), multiple marks
    /// can exist in the same place. The returned list is not in any
    /// meaningful order.
    @inlinable func getMarks() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_text_iter_get_marks(text_iter_ptr))
        return rv
    }

    /// Returns the character offset of an iterator.
    /// Each character in a `GtkTextBuffer` has an offset,
    /// starting with 0 for the first character in the buffer.
    /// Use `gtk_text_buffer_get_iter_at_offset()` to convert an
    /// offset back into an iterator.
    @inlinable func getOffset() -> Int {
        let rv = Int(gtk_text_iter_get_offset(text_iter_ptr))
        return rv
    }

    /// If the element at `iter` is a pixbuf, the pixbuf is returned
    /// (with no new reference count added). Otherwise,
    /// `nil` is returned.
    @inlinable func getPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_text_iter_get_pixbuf(text_iter_ptr)))
        return rv
    }

    /// Returns the text in the given range. A “slice” is an array of
    /// characters encoded in UTF-8 format, including the Unicode “unknown”
    /// character 0xFFFC for iterable non-character elements in the buffer,
    /// such as images.  Because images are encoded in the slice, byte and
    /// character offsets in the returned array will correspond to byte
    /// offsets in the text buffer. Note that 0xFFFC can occur in normal
    /// text as well, so it is not a reliable indicator that a pixbuf or
    /// widget is in the buffer.
    @inlinable func getSlice<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_slice(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns a list of tags that apply to `iter`, in ascending order of
    /// priority (highest-priority tags are last). The `GtkTextTag` in the
    /// list don’t have a reference added, but you have to free the list
    /// itself.
    @inlinable func getTags() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_text_iter_get_tags(text_iter_ptr))
        return rv
    }

    /// Returns text in the given range.  If the range
    /// contains non-text elements such as images, the character and byte
    /// offsets in the returned string will not correspond to character and
    /// byte offsets in the buffer. If you want offsets to correspond, see
    /// `gtk_text_iter_get_slice()`.
    @inlinable func getText<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_text(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns a list of `GtkTextTag` that are toggled on or off at this
    /// point.  (If `toggled_on` is `true`, the list contains tags that are
    /// toggled on.) If a tag is toggled on at `iter`, then some non-empty
    /// range of characters following `iter` has that tag applied to it.  If
    /// a tag is toggled off, then some non-empty range following `iter`
    /// does not have the tag applied to it.
    @inlinable func getToggledTags(toggledOn: Bool) -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_text_iter_get_toggled_tags(text_iter_ptr, gboolean((toggledOn) ? 1 : 0)))
        return rv
    }

    /// Returns the number of bytes from the start of the
    /// line to the given `iter`, not counting bytes that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable func getVisibleLineIndex() -> Int {
        let rv = Int(gtk_text_iter_get_visible_line_index(text_iter_ptr))
        return rv
    }

    /// Returns the offset in characters from the start of the
    /// line to the given `iter`, not counting characters that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable func getVisibleLineOffset() -> Int {
        let rv = Int(gtk_text_iter_get_visible_line_offset(text_iter_ptr))
        return rv
    }

    /// Like `gtk_text_iter_get_slice()`, but invisible text is not included.
    /// Invisible text is usually invisible because a `GtkTextTag` with the
    /// “invisible” attribute turned on has been applied to it.
    @inlinable func getVisibleSlice<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_visible_slice(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Like `gtk_text_iter_get_text()`, but invisible text is not included.
    /// Invisible text is usually invisible because a `GtkTextTag` with the
    /// “invisible” attribute turned on has been applied to it.
    @inlinable func getVisibleText<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_visible_text(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns `true` if `iter` points to a character that is part of a range tagged
    /// with `tag`. See also `gtk_text_iter_starts_tag()` and `gtk_text_iter_ends_tag()`.
    @inlinable func has<TextTagT: TextTagProtocol>(tag: TextTagT) -> Bool {
        let rv = ((gtk_text_iter_has_tag(text_iter_ptr, tag.text_tag_ptr)) != 0)
        return rv
    }

    /// Checks whether `iter` falls in the range [`start`, `end`).
    /// `start` and `end` must be in ascending order.
    @inlinable func inRange<TextIterT: TextIterProtocol>(start: TextIterT, end: TextIterT) -> Bool {
        let rv = ((gtk_text_iter_in_range(text_iter_ptr, start.text_iter_ptr, end.text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` is inside a sentence (as opposed to in
    /// between two sentences, e.g. after a period and before the first
    /// letter of the next sentence).  Sentence boundaries are determined
    /// by Pango and should be correct for nearly any language (if not, the
    /// correct fix would be to the Pango text boundary algorithms).
    @inlinable func insideSentence() -> Bool {
        let rv = ((gtk_text_iter_inside_sentence(text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether the character pointed by `iter` is part of a
    /// natural-language word (as opposed to say inside some whitespace).  Word
    /// breaks are determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango word break algorithms).
    /// 
    /// Note that if `gtk_text_iter_starts_word()` returns `true`, then this function
    /// returns `true` too, since `iter` points to the first character of the word.
    @inlinable func insideWord() -> Bool {
        let rv = ((gtk_text_iter_inside_word(text_iter_ptr)) != 0)
        return rv
    }

    /// Swaps the value of `first` and `second` if `second` comes before
    /// `first` in the buffer. That is, ensures that `first` and `second` are
    /// in sequence. Most text buffer functions that take a range call this
    /// automatically on your behalf, so there’s no real reason to call it yourself
    /// in those cases. There are some exceptions, such as `gtk_text_iter_in_range()`,
    /// that expect a pre-sorted range.
    @inlinable func order<TextIterT: TextIterProtocol>(second: TextIterT) {
        gtk_text_iter_order(text_iter_ptr, second.text_iter_ptr)
    
    }

    /// Moves iterator `iter` to the start of the line `line_number`.  If
    /// `line_number` is negative or larger than the number of lines in the
    /// buffer, moves `iter` to the start of the last line in the buffer.
    @inlinable func setLine(lineNumber: Int) {
        gtk_text_iter_set_line(text_iter_ptr, gint(lineNumber))
    
    }

    /// Same as `gtk_text_iter_set_line_offset()`, but works with a
    /// byte index. The given byte index must be at
    /// the start of a character, it can’t be in the middle of a UTF-8
    /// encoded character.
    @inlinable func setLineIndex(byteOnLine: Int) {
        gtk_text_iter_set_line_index(text_iter_ptr, gint(byteOnLine))
    
    }

    /// Moves `iter` within a line, to a new character
    /// (not byte) offset. The given character offset must be less than or
    /// equal to the number of characters in the line; if equal, `iter`
    /// moves to the start of the next line. See
    /// `gtk_text_iter_set_line_index()` if you have a byte index rather than
    /// a character offset.
    @inlinable func setLineOffset(charOnLine: Int) {
        gtk_text_iter_set_line_offset(text_iter_ptr, gint(charOnLine))
    
    }

    /// Sets `iter` to point to `char_offset`. `char_offset` counts from the start
    /// of the entire text buffer, starting with 0.
    @inlinable func setOffset(charOffset: Int) {
        gtk_text_iter_set_offset(text_iter_ptr, gint(charOffset))
    
    }

    /// Like `gtk_text_iter_set_line_index()`, but the index is in visible
    /// bytes, i.e. text with a tag making it invisible is not counted
    /// in the index.
    @inlinable func setVisibleLineIndex(byteOnLine: Int) {
        gtk_text_iter_set_visible_line_index(text_iter_ptr, gint(byteOnLine))
    
    }

    /// Like `gtk_text_iter_set_line_offset()`, but the offset is in visible
    /// characters, i.e. text with a tag making it invisible is not
    /// counted in the offset.
    @inlinable func setVisibleLineOffset(charOnLine: Int) {
        gtk_text_iter_set_visible_line_offset(text_iter_ptr, gint(charOnLine))
    
    }

    /// Returns `true` if `iter` begins a paragraph,
    /// i.e. if `gtk_text_iter_get_line_offset()` would return 0.
    /// However this function is potentially more efficient than
    /// `gtk_text_iter_get_line_offset()` because it doesn’t have to compute
    /// the offset, it just has to see whether it’s 0.
    @inlinable func startsLine() -> Bool {
        let rv = ((gtk_text_iter_starts_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` begins a sentence.  Sentence boundaries are
    /// determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango text boundary
    /// algorithms).
    @inlinable func startsSentence() -> Bool {
        let rv = ((gtk_text_iter_starts_sentence(text_iter_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if `gtk_text_iter_starts_tag()` returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike `gtk_text_iter_ends_tag()`, if `gtk_text_iter_starts_tag()` returns
    /// `true`, `gtk_text_iter_has_tag()` will also return `true` for the same
    /// parameters.
    @inlinable func starts(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_starts_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if `gtk_text_iter_starts_tag()` returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike `gtk_text_iter_ends_tag()`, if `gtk_text_iter_starts_tag()` returns
    /// `true`, `gtk_text_iter_has_tag()` will also return `true` for the same
    /// parameters.
    @inlinable func starts<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_starts_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` begins a natural-language word.  Word
    /// breaks are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func startsWord() -> Bool {
        let rv = ((gtk_text_iter_starts_word(text_iter_ptr)) != 0)
        return rv
    }

    /// This is equivalent to (`gtk_text_iter_starts_tag()` ||
    /// `gtk_text_iter_ends_tag()`), i.e. it tells you whether a range with
    /// `tag` applied to it begins or ends at `iter`.
    @inlinable func toggles(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_toggles_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// This is equivalent to (`gtk_text_iter_starts_tag()` ||
    /// `gtk_text_iter_ends_tag()`), i.e. it tells you whether a range with
    /// `tag` applied to it begins or ends at `iter`.
    @inlinable func toggles<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_toggles_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Returns the `GtkTextBuffer` this iterator is associated with.
    @inlinable var buffer: TextBufferRef! {
        /// Returns the `GtkTextBuffer` this iterator is associated with.
        get {
            let rv = TextBufferRef(gconstpointer: gconstpointer(gtk_text_iter_get_buffer(text_iter_ptr)))
            return rv
        }
    }

    /// Returns the number of bytes in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable var bytesInLine: Int {
        /// Returns the number of bytes in the line containing `iter`,
        /// including the paragraph delimiters.
        get {
            let rv = Int(gtk_text_iter_get_bytes_in_line(text_iter_ptr))
            return rv
        }
    }

    /// The Unicode character at this iterator is returned.  (Equivalent to
    /// operator* on a C++ iterator.)  If the element at this iterator is a
    /// non-character element, such as an image embedded in the buffer, the
    /// Unicode “unknown” character 0xFFFC is returned. If invoked on
    /// the end iterator, zero is returned; zero is not a valid Unicode character.
    /// So you can write a loop which ends when `gtk_text_iter_get_char()`
    /// returns 0.
    @inlinable var char: gunichar {
        /// The Unicode character at this iterator is returned.  (Equivalent to
        /// operator* on a C++ iterator.)  If the element at this iterator is a
        /// non-character element, such as an image embedded in the buffer, the
        /// Unicode “unknown” character 0xFFFC is returned. If invoked on
        /// the end iterator, zero is returned; zero is not a valid Unicode character.
        /// So you can write a loop which ends when `gtk_text_iter_get_char()`
        /// returns 0.
        get {
            let rv = gtk_text_iter_get_char(text_iter_ptr)
            return rv
        }
    }

    /// Returns the number of characters in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable var charsInLine: Int {
        /// Returns the number of characters in the line containing `iter`,
        /// including the paragraph delimiters.
        get {
            let rv = Int(gtk_text_iter_get_chars_in_line(text_iter_ptr))
            return rv
        }
    }

    /// If the location at `iter` contains a child anchor, the
    /// anchor is returned (with no new reference count added). Otherwise,
    /// `nil` is returned.
    @inlinable var childAnchor: TextChildAnchorRef! {
        /// If the location at `iter` contains a child anchor, the
        /// anchor is returned (with no new reference count added). Otherwise,
        /// `nil` is returned.
        get {
            let rv = TextChildAnchorRef(gconstpointer: gconstpointer(gtk_text_iter_get_child_anchor(text_iter_ptr)))
            return rv
        }
    }

    /// See `gtk_text_iter_forward_cursor_position()` or `PangoLogAttr` or
    /// `pango_break()` for details on what a cursor position is.
    @inlinable var isCursorPosition: Bool {
        /// See `gtk_text_iter_forward_cursor_position()` or `PangoLogAttr` or
        /// `pango_break()` for details on what a cursor position is.
        get {
            let rv = ((gtk_text_iter_is_cursor_position(text_iter_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if `iter` is the end iterator, i.e. one past the last
    /// dereferenceable iterator in the buffer. `gtk_text_iter_is_end()` is
    /// the most efficient way to check whether an iterator is the end
    /// iterator.
    @inlinable var isEnd: Bool {
        /// Returns `true` if `iter` is the end iterator, i.e. one past the last
        /// dereferenceable iterator in the buffer. `gtk_text_iter_is_end()` is
        /// the most efficient way to check whether an iterator is the end
        /// iterator.
        get {
            let rv = ((gtk_text_iter_is_end(text_iter_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if `iter` is the first iterator in the buffer, that is
    /// if `iter` has a character offset of 0.
    @inlinable var isStart: Bool {
        /// Returns `true` if `iter` is the first iterator in the buffer, that is
        /// if `iter` has a character offset of 0.
        get {
            let rv = ((gtk_text_iter_is_start(text_iter_ptr)) != 0)
            return rv
        }
    }

    /// A convenience wrapper around `gtk_text_iter_get_attributes()`,
    /// which returns the language in effect at `iter`. If no tags affecting
    /// language apply to `iter`, the return value is identical to that of
    /// `gtk_get_default_language()`.
    @inlinable var language: Pango.LanguageRef! {
        /// A convenience wrapper around `gtk_text_iter_get_attributes()`,
        /// which returns the language in effect at `iter`. If no tags affecting
        /// language apply to `iter`, the return value is identical to that of
        /// `gtk_get_default_language()`.
        get {
            let rv = Pango.LanguageRef(gtk_text_iter_get_language(text_iter_ptr))
            return rv
        }
    }

    /// Returns the line number containing the iterator. Lines in
    /// a `GtkTextBuffer` are numbered beginning with 0 for the first
    /// line in the buffer.
    @inlinable var line: Int {
        /// Returns the line number containing the iterator. Lines in
        /// a `GtkTextBuffer` are numbered beginning with 0 for the first
        /// line in the buffer.
        get {
            let rv = Int(gtk_text_iter_get_line(text_iter_ptr))
            return rv
        }
        /// Moves iterator `iter` to the start of the line `line_number`.  If
        /// `line_number` is negative or larger than the number of lines in the
        /// buffer, moves `iter` to the start of the last line in the buffer.
        nonmutating set {
            gtk_text_iter_set_line(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns the byte index of the iterator, counting
    /// from the start of a newline-terminated line.
    /// Remember that `GtkTextBuffer` encodes text in
    /// UTF-8, and that characters can require a variable
    /// number of bytes to represent.
    @inlinable var lineIndex: Int {
        /// Returns the byte index of the iterator, counting
        /// from the start of a newline-terminated line.
        /// Remember that `GtkTextBuffer` encodes text in
        /// UTF-8, and that characters can require a variable
        /// number of bytes to represent.
        get {
            let rv = Int(gtk_text_iter_get_line_index(text_iter_ptr))
            return rv
        }
        /// Same as `gtk_text_iter_set_line_offset()`, but works with a
        /// byte index. The given byte index must be at
        /// the start of a character, it can’t be in the middle of a UTF-8
        /// encoded character.
        nonmutating set {
            gtk_text_iter_set_line_index(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns the character offset of the iterator,
    /// counting from the start of a newline-terminated line.
    /// The first character on the line has offset 0.
    @inlinable var lineOffset: Int {
        /// Returns the character offset of the iterator,
        /// counting from the start of a newline-terminated line.
        /// The first character on the line has offset 0.
        get {
            let rv = Int(gtk_text_iter_get_line_offset(text_iter_ptr))
            return rv
        }
        /// Moves `iter` within a line, to a new character
        /// (not byte) offset. The given character offset must be less than or
        /// equal to the number of characters in the line; if equal, `iter`
        /// moves to the start of the next line. See
        /// `gtk_text_iter_set_line_index()` if you have a byte index rather than
        /// a character offset.
        nonmutating set {
            gtk_text_iter_set_line_offset(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns a list of all `GtkTextMark` at this location. Because marks
    /// are not iterable (they don’t take up any "space" in the buffer,
    /// they are just marks in between iterable locations), multiple marks
    /// can exist in the same place. The returned list is not in any
    /// meaningful order.
    @inlinable var marks: GLib.SListRef! {
        /// Returns a list of all `GtkTextMark` at this location. Because marks
        /// are not iterable (they don’t take up any "space" in the buffer,
        /// they are just marks in between iterable locations), multiple marks
        /// can exist in the same place. The returned list is not in any
        /// meaningful order.
        get {
            let rv = GLib.SListRef(gtk_text_iter_get_marks(text_iter_ptr))
            return rv
        }
    }

    /// Returns the character offset of an iterator.
    /// Each character in a `GtkTextBuffer` has an offset,
    /// starting with 0 for the first character in the buffer.
    /// Use `gtk_text_buffer_get_iter_at_offset()` to convert an
    /// offset back into an iterator.
    @inlinable var offset: Int {
        /// Returns the character offset of an iterator.
        /// Each character in a `GtkTextBuffer` has an offset,
        /// starting with 0 for the first character in the buffer.
        /// Use `gtk_text_buffer_get_iter_at_offset()` to convert an
        /// offset back into an iterator.
        get {
            let rv = Int(gtk_text_iter_get_offset(text_iter_ptr))
            return rv
        }
        /// Sets `iter` to point to `char_offset`. `char_offset` counts from the start
        /// of the entire text buffer, starting with 0.
        nonmutating set {
            gtk_text_iter_set_offset(text_iter_ptr, gint(newValue))
        }
    }

    /// If the element at `iter` is a pixbuf, the pixbuf is returned
    /// (with no new reference count added). Otherwise,
    /// `nil` is returned.
    @inlinable var pixbuf: PixbufRef! {
        /// If the element at `iter` is a pixbuf, the pixbuf is returned
        /// (with no new reference count added). Otherwise,
        /// `nil` is returned.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_text_iter_get_pixbuf(text_iter_ptr)))
            return rv
        }
    }

    /// Returns a list of tags that apply to `iter`, in ascending order of
    /// priority (highest-priority tags are last). The `GtkTextTag` in the
    /// list don’t have a reference added, but you have to free the list
    /// itself.
    @inlinable var tags: GLib.SListRef! {
        /// Returns a list of tags that apply to `iter`, in ascending order of
        /// priority (highest-priority tags are last). The `GtkTextTag` in the
        /// list don’t have a reference added, but you have to free the list
        /// itself.
        get {
            let rv = GLib.SListRef(gtk_text_iter_get_tags(text_iter_ptr))
            return rv
        }
    }

    /// Returns the number of bytes from the start of the
    /// line to the given `iter`, not counting bytes that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable var visibleLineIndex: Int {
        /// Returns the number of bytes from the start of the
        /// line to the given `iter`, not counting bytes that
        /// are invisible due to tags with the “invisible” flag
        /// toggled on.
        get {
            let rv = Int(gtk_text_iter_get_visible_line_index(text_iter_ptr))
            return rv
        }
        /// Like `gtk_text_iter_set_line_index()`, but the index is in visible
        /// bytes, i.e. text with a tag making it invisible is not counted
        /// in the index.
        nonmutating set {
            gtk_text_iter_set_visible_line_index(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns the offset in characters from the start of the
    /// line to the given `iter`, not counting characters that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable var visibleLineOffset: Int {
        /// Returns the offset in characters from the start of the
        /// line to the given `iter`, not counting characters that
        /// are invisible due to tags with the “invisible” flag
        /// toggled on.
        get {
            let rv = Int(gtk_text_iter_get_visible_line_offset(text_iter_ptr))
            return rv
        }
        /// Like `gtk_text_iter_set_line_offset()`, but the offset is in visible
        /// characters, i.e. text with a tag making it invisible is not
        /// counted in the offset.
        nonmutating set {
            gtk_text_iter_set_visible_line_offset(text_iter_ptr, gint(newValue))
        }
    }

    // var dummy1 is unavailable because dummy1 is private

    // var dummy2 is unavailable because dummy2 is private

    // var dummy3 is unavailable because dummy3 is private

    // var dummy4 is unavailable because dummy4 is private

    // var dummy5 is unavailable because dummy5 is private

    // var dummy6 is unavailable because dummy6 is private

    // var dummy7 is unavailable because dummy7 is private

    // var dummy8 is unavailable because dummy8 is private

    // var dummy9 is unavailable because dummy9 is private

    // var dummy10 is unavailable because dummy10 is private

    // var dummy11 is unavailable because dummy11 is private

    // var dummy12 is unavailable because dummy12 is private

    // var dummy13 is unavailable because dummy13 is private

    // var dummy14 is unavailable because dummy14 is private

}



/// Metatype/GType declaration for TextMark
public extension TextMarkClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextMark`
    static var metatypeReference: GType { gtk_text_mark_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextMarkClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextMarkClass.self) }
    
    static var metatype: GtkTextMarkClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextMarkClassRef? { TextMarkClassRef(metatypePointer) }
    
    
}

// MARK: - TextMarkClass Record


///
/// The `TextMarkClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextMarkClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextMarkClass`.
/// Alternatively, use `TextMarkClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextMarkClassProtocol {
        /// Untyped pointer to the underlying `GtkTextMarkClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextMarkClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextMarkClass>! { get }

    /// Required Initialiser for types conforming to `TextMarkClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextMarkClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextMarkClass` instance.
/// It exposes methods that can operate on this data type through `TextMarkClassProtocol` conformance.
/// Use `TextMarkClassRef` only as an `unowned` reference to an existing `GtkTextMarkClass` instance.
///
public struct TextMarkClassRef: TextMarkClassProtocol {
        /// Untyped pointer to the underlying `GtkTextMarkClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextMarkClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextMarkClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextMarkClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextMarkClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextMarkClass>?) {
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

    /// Reference intialiser for a related type that implements `TextMarkClassProtocol`
    @inlinable init<T: TextMarkClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextMarkClass Record: TextMarkClassProtocol extension (methods and fields)
public extension TextMarkClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextMarkClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextMarkClass>! { return ptr?.assumingMemoryBound(to: GtkTextMarkClass.self) }


    @inlinable var parentClass: GObjectClass {
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



/// Metatype/GType declaration for TextTag
public extension TextTagClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextTag`
    static var metatypeReference: GType { gtk_text_tag_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextTagClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextTagClass.self) }
    
    static var metatype: GtkTextTagClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextTagClassRef? { TextTagClassRef(metatypePointer) }
    
    
}

// MARK: - TextTagClass Record


///
/// The `TextTagClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextTagClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextTagClass`.
/// Alternatively, use `TextTagClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextTagClassProtocol {
        /// Untyped pointer to the underlying `GtkTextTagClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextTagClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagClass>! { get }

    /// Required Initialiser for types conforming to `TextTagClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextTagClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextTagClass` instance.
/// It exposes methods that can operate on this data type through `TextTagClassProtocol` conformance.
/// Use `TextTagClassRef` only as an `unowned` reference to an existing `GtkTextTagClass` instance.
///
public struct TextTagClassRef: TextTagClassProtocol {
        /// Untyped pointer to the underlying `GtkTextTagClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextTagClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextTagClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextTagClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextTagClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextTagClass>?) {
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

    /// Reference intialiser for a related type that implements `TextTagClassProtocol`
    @inlinable init<T: TextTagClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextTagClass Record: TextTagClassProtocol extension (methods and fields)
public extension TextTagClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextTagClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextTagClass>! { return ptr?.assumingMemoryBound(to: GtkTextTagClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var event is unavailable because event is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for TextTagTable
public extension TextTagTableClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextTagTable`
    static var metatypeReference: GType { gtk_text_tag_table_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextTagTableClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextTagTableClass.self) }
    
    static var metatype: GtkTextTagTableClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextTagTableClassRef? { TextTagTableClassRef(metatypePointer) }
    
    
}

// MARK: - TextTagTableClass Record


///
/// The `TextTagTableClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextTagTableClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextTagTableClass`.
/// Alternatively, use `TextTagTableClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextTagTableClassProtocol {
        /// Untyped pointer to the underlying `GtkTextTagTableClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextTagTableClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagTableClass>! { get }

    /// Required Initialiser for types conforming to `TextTagTableClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextTagTableClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextTagTableClass` instance.
/// It exposes methods that can operate on this data type through `TextTagTableClassProtocol` conformance.
/// Use `TextTagTableClassRef` only as an `unowned` reference to an existing `GtkTextTagTableClass` instance.
///
public struct TextTagTableClassRef: TextTagTableClassProtocol {
        /// Untyped pointer to the underlying `GtkTextTagTableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextTagTableClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextTagTableClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextTagTableClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextTagTableClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextTagTableClass>?) {
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

    /// Reference intialiser for a related type that implements `TextTagTableClassProtocol`
    @inlinable init<T: TextTagTableClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextTagTableClass Record: TextTagTableClassProtocol extension (methods and fields)
public extension TextTagTableClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextTagTableClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextTagTableClass>! { return ptr?.assumingMemoryBound(to: GtkTextTagTableClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var tagChanged is unavailable because tag_changed is void

    // var tagAdded is unavailable because tag_added is void

    // var tagRemoved is unavailable because tag_removed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for TextViewAccessible
public extension TextViewAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextViewAccessible`
    static var metatypeReference: GType { gtk_text_view_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextViewAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextViewAccessibleClass.self) }
    
    static var metatype: GtkTextViewAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextViewAccessibleClassRef? { TextViewAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - TextViewAccessibleClass Record


///
/// The `TextViewAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextViewAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextViewAccessibleClass`.
/// Alternatively, use `TextViewAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextViewAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkTextViewAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `TextViewAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextViewAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextViewAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `TextViewAccessibleClassProtocol` conformance.
/// Use `TextViewAccessibleClassRef` only as an `unowned` reference to an existing `GtkTextViewAccessibleClass` instance.
///
public struct TextViewAccessibleClassRef: TextViewAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkTextViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextViewAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextViewAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextViewAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `TextViewAccessibleClassProtocol`
    @inlinable init<T: TextViewAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextViewAccessibleClass Record: TextViewAccessibleClassProtocol extension (methods and fields)
public extension TextViewAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextViewAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextViewAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkTextViewAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TextView
public extension TextViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextView`
    static var metatypeReference: GType { gtk_text_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextViewClass.self) }
    
    static var metatype: GtkTextViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextViewClassRef? { TextViewClassRef(metatypePointer) }
    
    
}

// MARK: - TextViewClass Record


///
/// The `TextViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextViewClass`.
/// Alternatively, use `TextViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTextViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewClass>! { get }

    /// Required Initialiser for types conforming to `TextViewClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextViewClass` instance.
/// It exposes methods that can operate on this data type through `TextViewClassProtocol` conformance.
/// Use `TextViewClassRef` only as an `unowned` reference to an existing `GtkTextViewClass` instance.
///
public struct TextViewClassRef: TextViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTextViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextViewClass>?) {
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

    /// Reference intialiser for a related type that implements `TextViewClassProtocol`
    @inlinable init<T: TextViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextViewClass Record: TextViewClassProtocol extension (methods and fields)
public extension TextViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextViewClass>! { return ptr?.assumingMemoryBound(to: GtkTextViewClass.self) }


    /// The object class structure needs to be the first
    @inlinable var parentClass: GtkContainerClass {
        /// The object class structure needs to be the first
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var populatePopup is unavailable because populate_popup is void

    // var moveCursor is unavailable because move_cursor is void

    // var setAnchor is unavailable because set_anchor is void

    // var insertAtCursor is unavailable because insert_at_cursor is void

    // var deleteFromCursor is unavailable because delete_from_cursor is void

    // var backspace is unavailable because backspace is void

    // var cutClipboard is unavailable because cut_clipboard is void

    // var copyClipboard is unavailable because copy_clipboard is void

    // var pasteClipboard is unavailable because paste_clipboard is void

    // var toggleOverwrite is unavailable because toggle_overwrite is void

    // var createBuffer is unavailable because create_buffer is void

    // var drawLayer is unavailable because draw_layer is void

    // var extendSelection is unavailable because extend_selection is void

    // var insertEmoji is unavailable because insert_emoji is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - ThemeEngine Record


///
/// The `ThemeEngineProtocol` protocol exposes the methods and properties of an underlying `GtkThemeEngine` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemeEngine`.
/// Alternatively, use `ThemeEngineRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ThemeEngineProtocol {
        /// Untyped pointer to the underlying `GtkThemeEngine` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkThemeEngine` instance.
    var _ptr: UnsafeMutablePointer<GtkThemeEngine>! { get }

    /// Required Initialiser for types conforming to `ThemeEngineProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ThemeEngineRef` type acts as a lightweight Swift reference to an underlying `GtkThemeEngine` instance.
/// It exposes methods that can operate on this data type through `ThemeEngineProtocol` conformance.
/// Use `ThemeEngineRef` only as an `unowned` reference to an existing `GtkThemeEngine` instance.
///
public struct ThemeEngineRef: ThemeEngineProtocol {
        /// Untyped pointer to the underlying `GtkThemeEngine` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThemeEngineRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkThemeEngine>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkThemeEngine>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkThemeEngine>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkThemeEngine>?) {
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

    /// Reference intialiser for a related type that implements `ThemeEngineProtocol`
    @inlinable init<T: ThemeEngineProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `ThemeEngine` type acts as an owner of an underlying `GtkThemeEngine` instance.
/// It provides the methods that can operate on this data type through `ThemeEngineProtocol` conformance.
/// Use `ThemeEngine` as a strong reference or owner of a `GtkThemeEngine` instance.
///
open class ThemeEngine: ThemeEngineProtocol {
        /// Untyped pointer to the underlying `GtkThemeEngine` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemeEngine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkThemeEngine>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemeEngine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkThemeEngine>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemeEngine` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemeEngine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemeEngine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkThemeEngine>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemeEngine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkThemeEngine>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkThemeEngine` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ThemeEngine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkThemeEngine>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkThemeEngine, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ThemeEngineProtocol`
    /// `GtkThemeEngine` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ThemeEngineProtocol`
    @inlinable public init<T: ThemeEngineProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkThemeEngine, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkThemeEngine`.
    deinit {
        // no reference counting for GtkThemeEngine, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkThemeEngine, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkThemeEngine, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkThemeEngine, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkThemeEngine, cannot ref(_ptr)
    }



}

// MARK: no ThemeEngine properties

// MARK: no ThemeEngine signals

// MARK: ThemeEngine has no signals
// MARK: ThemeEngine Record: ThemeEngineProtocol extension (methods and fields)
public extension ThemeEngineProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkThemeEngine` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkThemeEngine>! { return ptr?.assumingMemoryBound(to: GtkThemeEngine.self) }



}



/// Metatype/GType declaration for ThemingEngine
public extension ThemingEngineClassRef {
    
    /// This getter returns the GLib type identifier registered for `ThemingEngine`
    static var metatypeReference: GType { gtk_theming_engine_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkThemingEngineClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkThemingEngineClass.self) }
    
    static var metatype: GtkThemingEngineClass? { metatypePointer?.pointee } 
    
    static var wrapper: ThemingEngineClassRef? { ThemingEngineClassRef(metatypePointer) }
    
    
}

// MARK: - ThemingEngineClass Record

/// Base class for theming engines.
///
/// The `ThemingEngineClassProtocol` protocol exposes the methods and properties of an underlying `GtkThemingEngineClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemingEngineClass`.
/// Alternatively, use `ThemingEngineClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ThemingEngineClassProtocol {
        /// Untyped pointer to the underlying `GtkThemingEngineClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkThemingEngineClass` instance.
    var _ptr: UnsafeMutablePointer<GtkThemingEngineClass>! { get }

    /// Required Initialiser for types conforming to `ThemingEngineClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Base class for theming engines.
///
/// The `ThemingEngineClassRef` type acts as a lightweight Swift reference to an underlying `GtkThemingEngineClass` instance.
/// It exposes methods that can operate on this data type through `ThemingEngineClassProtocol` conformance.
/// Use `ThemingEngineClassRef` only as an `unowned` reference to an existing `GtkThemingEngineClass` instance.
///
public struct ThemingEngineClassRef: ThemingEngineClassProtocol {
        /// Untyped pointer to the underlying `GtkThemingEngineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThemingEngineClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkThemingEngineClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkThemingEngineClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkThemingEngineClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkThemingEngineClass>?) {
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

    /// Reference intialiser for a related type that implements `ThemingEngineClassProtocol`
    @inlinable init<T: ThemingEngineClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ThemingEngineClass Record: ThemingEngineClassProtocol extension (methods and fields)
public extension ThemingEngineClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkThemingEngineClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkThemingEngineClass>! { return ptr?.assumingMemoryBound(to: GtkThemingEngineClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var renderLine is unavailable because render_line is void

    // var renderBackground is unavailable because render_background is void

    // var renderFrame is unavailable because render_frame is void

    // var renderFrameGap is unavailable because render_frame_gap is void

    // var renderExtension is unavailable because render_extension is void

    // var renderCheck is unavailable because render_check is void

    // var renderOption is unavailable because render_option is void

    // var renderArrow is unavailable because render_arrow is void

    // var renderExpander is unavailable because render_expander is void

    // var renderFocus is unavailable because render_focus is void

    // var renderLayout is unavailable because render_layout is void

    // var renderSlider is unavailable because render_slider is void

    // var renderHandle is unavailable because render_handle is void

    // var renderActivity is unavailable because render_activity is void

    // var renderIconPixbuf is unavailable because render_icon_pixbuf is void

    // var renderIcon is unavailable because render_icon is void

    // var renderIconSurface is unavailable because render_icon_surface is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ToggleAction
public extension ToggleActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToggleAction`
    static var metatypeReference: GType { gtk_toggle_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToggleActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToggleActionClass.self) }
    
    static var metatype: GtkToggleActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToggleActionClassRef? { ToggleActionClassRef(metatypePointer) }
    
    
}

// MARK: - ToggleActionClass Record


///
/// The `ToggleActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleActionClass`.
/// Alternatively, use `ToggleActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToggleActionClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToggleActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionClass>! { get }

    /// Required Initialiser for types conforming to `ToggleActionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToggleActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleActionClass` instance.
/// It exposes methods that can operate on this data type through `ToggleActionClassProtocol` conformance.
/// Use `ToggleActionClassRef` only as an `unowned` reference to an existing `GtkToggleActionClass` instance.
///
public struct ToggleActionClassRef: ToggleActionClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToggleActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToggleActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToggleActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToggleActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToggleActionClass>?) {
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

    /// Reference intialiser for a related type that implements `ToggleActionClassProtocol`
    @inlinable init<T: ToggleActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToggleActionClass Record: ToggleActionClassProtocol extension (methods and fields)
public extension ToggleActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToggleActionClass>! { return ptr?.assumingMemoryBound(to: GtkToggleActionClass.self) }


    @inlinable var parentClass: GtkActionClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toggled is unavailable because toggled is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - ToggleActionEntry Record

/// `GtkToggleActionEntry` structs are used with
/// `gtk_action_group_add_toggle_actions()` to construct toggle actions.
///
/// The `ToggleActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkToggleActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleActionEntry`.
/// Alternatively, use `ToggleActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToggleActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkToggleActionEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToggleActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionEntry>! { get }

    /// Required Initialiser for types conforming to `ToggleActionEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkToggleActionEntry` structs are used with
/// `gtk_action_group_add_toggle_actions()` to construct toggle actions.
///
/// The `ToggleActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkToggleActionEntry` instance.
/// It exposes methods that can operate on this data type through `ToggleActionEntryProtocol` conformance.
/// Use `ToggleActionEntryRef` only as an `unowned` reference to an existing `GtkToggleActionEntry` instance.
///
public struct ToggleActionEntryRef: ToggleActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkToggleActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToggleActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToggleActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToggleActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToggleActionEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToggleActionEntry>?) {
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

    /// Reference intialiser for a related type that implements `ToggleActionEntryProtocol`
    @inlinable init<T: ToggleActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkToggleActionEntry` structs are used with
/// `gtk_action_group_add_toggle_actions()` to construct toggle actions.
///
/// The `ToggleActionEntry` type acts as an owner of an underlying `GtkToggleActionEntry` instance.
/// It provides the methods that can operate on this data type through `ToggleActionEntryProtocol` conformance.
/// Use `ToggleActionEntry` as a strong reference or owner of a `GtkToggleActionEntry` instance.
///
open class ToggleActionEntry: ToggleActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkToggleActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToggleActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkToggleActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToggleActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkToggleActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToggleActionEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToggleActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToggleActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkToggleActionEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToggleActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkToggleActionEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkToggleActionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ToggleActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkToggleActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkToggleActionEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ToggleActionEntryProtocol`
    /// `GtkToggleActionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ToggleActionEntryProtocol`
    @inlinable public init<T: ToggleActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkToggleActionEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkToggleActionEntry`.
    deinit {
        // no reference counting for GtkToggleActionEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkToggleActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkToggleActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkToggleActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkToggleActionEntry, cannot ref(_ptr)
    }



}

// MARK: no ToggleActionEntry properties

// MARK: no ToggleActionEntry signals

// MARK: ToggleActionEntry has no signals
// MARK: ToggleActionEntry Record: ToggleActionEntryProtocol extension (methods and fields)
public extension ToggleActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleActionEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToggleActionEntry>! { return ptr?.assumingMemoryBound(to: GtkToggleActionEntry.self) }


    /// The name of the action.
    @inlinable var name: UnsafePointer<gchar>! {
        /// The name of the action.
        get {
            let rv = _ptr.pointee.name
            return rv
        }
        /// The name of the action.
         set {
            _ptr.pointee.name = newValue
        }
    }

    /// The stock id for the action, or the name of an icon from the
    ///  icon theme.
    @inlinable var stockID: UnsafePointer<gchar>! {
        /// The stock id for the action, or the name of an icon from the
        ///  icon theme.
        get {
            let rv = _ptr.pointee.stock_id
            return rv
        }
        /// The stock id for the action, or the name of an icon from the
        ///  icon theme.
         set {
            _ptr.pointee.stock_id = newValue
        }
    }

    /// The label for the action. This field should typically be marked
    ///  for translation, see `gtk_action_group_set_translation_domain()`.
    @inlinable var label: UnsafePointer<gchar>! {
        /// The label for the action. This field should typically be marked
        ///  for translation, see `gtk_action_group_set_translation_domain()`.
        get {
            let rv = _ptr.pointee.label
            return rv
        }
        /// The label for the action. This field should typically be marked
        ///  for translation, see `gtk_action_group_set_translation_domain()`.
         set {
            _ptr.pointee.label = newValue
        }
    }

    /// The accelerator for the action, in the format understood by
    ///  `gtk_accelerator_parse()`.
    @inlinable var accelerator: UnsafePointer<gchar>! {
        /// The accelerator for the action, in the format understood by
        ///  `gtk_accelerator_parse()`.
        get {
            let rv = _ptr.pointee.accelerator
            return rv
        }
        /// The accelerator for the action, in the format understood by
        ///  `gtk_accelerator_parse()`.
         set {
            _ptr.pointee.accelerator = newValue
        }
    }

    /// The tooltip for the action. This field should typically be
    ///  marked for translation, see `gtk_action_group_set_translation_domain()`.
    @inlinable var tooltip: UnsafePointer<gchar>! {
        /// The tooltip for the action. This field should typically be
        ///  marked for translation, see `gtk_action_group_set_translation_domain()`.
        get {
            let rv = _ptr.pointee.tooltip
            return rv
        }
        /// The tooltip for the action. This field should typically be
        ///  marked for translation, see `gtk_action_group_set_translation_domain()`.
         set {
            _ptr.pointee.tooltip = newValue
        }
    }

    /// The function to call when the action is activated.
    @inlinable var callback: GCallback! {
        /// The function to call when the action is activated.
        get {
            let rv = _ptr.pointee.callback
            return rv
        }
        /// The function to call when the action is activated.
         set {
            _ptr.pointee.callback = newValue
        }
    }

    /// The initial state of the toggle action.
    @inlinable var isActive: gboolean {
        /// The initial state of the toggle action.
        get {
            let rv = _ptr.pointee.is_active
            return rv
        }
        /// The initial state of the toggle action.
         set {
            _ptr.pointee.is_active = newValue
        }
    }

}



/// Metatype/GType declaration for ToggleButtonAccessible
public extension ToggleButtonAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToggleButtonAccessible`
    static var metatypeReference: GType { gtk_toggle_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToggleButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToggleButtonAccessibleClass.self) }
    
    static var metatype: GtkToggleButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToggleButtonAccessibleClassRef? { ToggleButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ToggleButtonAccessibleClass Record


///
/// The `ToggleButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleButtonAccessibleClass`.
/// Alternatively, use `ToggleButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToggleButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToggleButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ToggleButtonAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToggleButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ToggleButtonAccessibleClassProtocol` conformance.
/// Use `ToggleButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkToggleButtonAccessibleClass` instance.
///
public struct ToggleButtonAccessibleClassRef: ToggleButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToggleButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToggleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToggleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToggleButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToggleButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ToggleButtonAccessibleClassProtocol`
    @inlinable init<T: ToggleButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToggleButtonAccessibleClass Record: ToggleButtonAccessibleClassProtocol extension (methods and fields)
public extension ToggleButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToggleButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkToggleButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkButtonAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ToggleButton
public extension ToggleButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToggleButton`
    static var metatypeReference: GType { gtk_toggle_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToggleButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToggleButtonClass.self) }
    
    static var metatype: GtkToggleButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToggleButtonClassRef? { ToggleButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ToggleButtonClass Record


///
/// The `ToggleButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleButtonClass`.
/// Alternatively, use `ToggleButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToggleButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToggleButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonClass>! { get }

    /// Required Initialiser for types conforming to `ToggleButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToggleButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleButtonClass` instance.
/// It exposes methods that can operate on this data type through `ToggleButtonClassProtocol` conformance.
/// Use `ToggleButtonClassRef` only as an `unowned` reference to an existing `GtkToggleButtonClass` instance.
///
public struct ToggleButtonClassRef: ToggleButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToggleButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToggleButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToggleButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToggleButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToggleButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ToggleButtonClassProtocol`
    @inlinable init<T: ToggleButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToggleButtonClass Record: ToggleButtonClassProtocol extension (methods and fields)
public extension ToggleButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToggleButtonClass>! { return ptr?.assumingMemoryBound(to: GtkToggleButtonClass.self) }


    @inlinable var parentClass: GtkButtonClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toggled is unavailable because toggled is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ToggleToolButton
public extension ToggleToolButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToggleToolButton`
    static var metatypeReference: GType { gtk_toggle_tool_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToggleToolButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToggleToolButtonClass.self) }
    
    static var metatype: GtkToggleToolButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToggleToolButtonClassRef? { ToggleToolButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ToggleToolButtonClass Record


///
/// The `ToggleToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleToolButtonClass`.
/// Alternatively, use `ToggleToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToggleToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToggleToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleToolButtonClass>! { get }

    /// Required Initialiser for types conforming to `ToggleToolButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToggleToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `ToggleToolButtonClassProtocol` conformance.
/// Use `ToggleToolButtonClassRef` only as an `unowned` reference to an existing `GtkToggleToolButtonClass` instance.
///
public struct ToggleToolButtonClassRef: ToggleToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToggleToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToggleToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToggleToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToggleToolButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToggleToolButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ToggleToolButtonClassProtocol`
    @inlinable init<T: ToggleToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToggleToolButtonClass Record: ToggleToolButtonClassProtocol extension (methods and fields)
public extension ToggleToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleToolButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToggleToolButtonClass>! { return ptr?.assumingMemoryBound(to: GtkToggleToolButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkToolButtonClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toggled is unavailable because toggled is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ToolButton
public extension ToolButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToolButton`
    static var metatypeReference: GType { gtk_tool_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToolButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToolButtonClass.self) }
    
    static var metatype: GtkToolButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToolButtonClassRef? { ToolButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ToolButtonClass Record


///
/// The `ToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolButtonClass`.
/// Alternatively, use `ToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolButtonClass>! { get }

    /// Required Initialiser for types conforming to `ToolButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `ToolButtonClassProtocol` conformance.
/// Use `ToolButtonClassRef` only as an `unowned` reference to an existing `GtkToolButtonClass` instance.
///
public struct ToolButtonClassRef: ToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToolButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToolButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ToolButtonClassProtocol`
    @inlinable init<T: ToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToolButtonClass Record: ToolButtonClassProtocol extension (methods and fields)
public extension ToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToolButtonClass>! { return ptr?.assumingMemoryBound(to: GtkToolButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkToolItemClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    @inlinable var buttonType: GType {
        get {
            let rv = _ptr.pointee.button_type
            return rv
        }
    }

    // var clicked is unavailable because clicked is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ToolItem
public extension ToolItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToolItem`
    static var metatypeReference: GType { gtk_tool_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToolItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToolItemClass.self) }
    
    static var metatype: GtkToolItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToolItemClassRef? { ToolItemClassRef(metatypePointer) }
    
    
}

// MARK: - ToolItemClass Record


///
/// The `ToolItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolItemClass`.
/// Alternatively, use `ToolItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToolItemClassProtocol {
        /// Untyped pointer to the underlying `GtkToolItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToolItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemClass>! { get }

    /// Required Initialiser for types conforming to `ToolItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToolItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolItemClass` instance.
/// It exposes methods that can operate on this data type through `ToolItemClassProtocol` conformance.
/// Use `ToolItemClassRef` only as an `unowned` reference to an existing `GtkToolItemClass` instance.
///
public struct ToolItemClassRef: ToolItemClassProtocol {
        /// Untyped pointer to the underlying `GtkToolItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToolItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToolItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToolItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToolItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToolItemClass>?) {
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

    /// Reference intialiser for a related type that implements `ToolItemClassProtocol`
    @inlinable init<T: ToolItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToolItemClass Record: ToolItemClassProtocol extension (methods and fields)
public extension ToolItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToolItemClass>! { return ptr?.assumingMemoryBound(to: GtkToolItemClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var createMenuProxy is unavailable because create_menu_proxy is void

    // var toolbarReconfigured is unavailable because toolbar_reconfigured is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ToolItemGroup
public extension ToolItemGroupClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToolItemGroup`
    static var metatypeReference: GType { gtk_tool_item_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToolItemGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToolItemGroupClass.self) }
    
    static var metatype: GtkToolItemGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToolItemGroupClassRef? { ToolItemGroupClassRef(metatypePointer) }
    
    
}

// MARK: - ToolItemGroupClass Record


///
/// The `ToolItemGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolItemGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolItemGroupClass`.
/// Alternatively, use `ToolItemGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToolItemGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkToolItemGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToolItemGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemGroupClass>! { get }

    /// Required Initialiser for types conforming to `ToolItemGroupClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToolItemGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolItemGroupClass` instance.
/// It exposes methods that can operate on this data type through `ToolItemGroupClassProtocol` conformance.
/// Use `ToolItemGroupClassRef` only as an `unowned` reference to an existing `GtkToolItemGroupClass` instance.
///
public struct ToolItemGroupClassRef: ToolItemGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkToolItemGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToolItemGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToolItemGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToolItemGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToolItemGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToolItemGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `ToolItemGroupClassProtocol`
    @inlinable init<T: ToolItemGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToolItemGroupClass Record: ToolItemGroupClassProtocol extension (methods and fields)
public extension ToolItemGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolItemGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToolItemGroupClass>! { return ptr?.assumingMemoryBound(to: GtkToolItemGroupClass.self) }


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



/// Metatype/GType declaration for ToolPalette
public extension ToolPaletteClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToolPalette`
    static var metatypeReference: GType { gtk_tool_palette_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToolPaletteClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToolPaletteClass.self) }
    
    static var metatype: GtkToolPaletteClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToolPaletteClassRef? { ToolPaletteClassRef(metatypePointer) }
    
    
}

// MARK: - ToolPaletteClass Record


///
/// The `ToolPaletteClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolPaletteClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolPaletteClass`.
/// Alternatively, use `ToolPaletteClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToolPaletteClassProtocol {
        /// Untyped pointer to the underlying `GtkToolPaletteClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToolPaletteClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolPaletteClass>! { get }

    /// Required Initialiser for types conforming to `ToolPaletteClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToolPaletteClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolPaletteClass` instance.
/// It exposes methods that can operate on this data type through `ToolPaletteClassProtocol` conformance.
/// Use `ToolPaletteClassRef` only as an `unowned` reference to an existing `GtkToolPaletteClass` instance.
///
public struct ToolPaletteClassRef: ToolPaletteClassProtocol {
        /// Untyped pointer to the underlying `GtkToolPaletteClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToolPaletteClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToolPaletteClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToolPaletteClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToolPaletteClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToolPaletteClass>?) {
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

    /// Reference intialiser for a related type that implements `ToolPaletteClassProtocol`
    @inlinable init<T: ToolPaletteClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToolPaletteClass Record: ToolPaletteClassProtocol extension (methods and fields)
public extension ToolPaletteClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolPaletteClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToolPaletteClass>! { return ptr?.assumingMemoryBound(to: GtkToolPaletteClass.self) }


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



/// Metatype/GType declaration for ToolShell
public extension ToolShellIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ToolShell`
    static var metatypeReference: GType { gtk_tool_shell_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToolShellIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToolShellIface.self) }
    
    static var metatype: GtkToolShellIface? { metatypePointer?.pointee } 
    
    static var wrapper: ToolShellIfaceRef? { ToolShellIfaceRef(metatypePointer) }
    
    
}

// MARK: - ToolShellIface Record

/// Virtual function table for the `GtkToolShell` interface.
///
/// The `ToolShellIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkToolShellIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolShellIface`.
/// Alternatively, use `ToolShellIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToolShellIfaceProtocol {
        /// Untyped pointer to the underlying `GtkToolShellIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToolShellIface` instance.
    var _ptr: UnsafeMutablePointer<GtkToolShellIface>! { get }

    /// Required Initialiser for types conforming to `ToolShellIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Virtual function table for the `GtkToolShell` interface.
///
/// The `ToolShellIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkToolShellIface` instance.
/// It exposes methods that can operate on this data type through `ToolShellIfaceProtocol` conformance.
/// Use `ToolShellIfaceRef` only as an `unowned` reference to an existing `GtkToolShellIface` instance.
///
public struct ToolShellIfaceRef: ToolShellIfaceProtocol {
        /// Untyped pointer to the underlying `GtkToolShellIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToolShellIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToolShellIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToolShellIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToolShellIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToolShellIface>?) {
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

    /// Reference intialiser for a related type that implements `ToolShellIfaceProtocol`
    @inlinable init<T: ToolShellIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToolShellIface Record: ToolShellIfaceProtocol extension (methods and fields)
public extension ToolShellIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolShellIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToolShellIface>! { return ptr?.assumingMemoryBound(to: GtkToolShellIface.self) }


    // var gIface is unavailable because g_iface is private

    // var getIconSize is unavailable because get_icon_size is void

    // var getOrientation is unavailable because get_orientation is void

    // var getStyle is unavailable because get_style is void

    // var getReliefStyle is unavailable because get_relief_style is void

    // var rebuildMenu is unavailable because rebuild_menu is void

    // var getTextOrientation is unavailable because get_text_orientation is void

    // var getTextAlignment is unavailable because get_text_alignment is void

    // var getEllipsizeMode is unavailable because get_ellipsize_mode is void

    // var getTextSizeGroup is unavailable because get_text_size_group is void

}



/// Metatype/GType declaration for Toolbar
public extension ToolbarClassRef {
    
    /// This getter returns the GLib type identifier registered for `Toolbar`
    static var metatypeReference: GType { gtk_toolbar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToolbarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToolbarClass.self) }
    
    static var metatype: GtkToolbarClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToolbarClassRef? { ToolbarClassRef(metatypePointer) }
    
    
}

// MARK: - ToolbarClass Record


///
/// The `ToolbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolbarClass`.
/// Alternatively, use `ToolbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToolbarClassProtocol {
        /// Untyped pointer to the underlying `GtkToolbarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToolbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolbarClass>! { get }

    /// Required Initialiser for types conforming to `ToolbarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToolbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolbarClass` instance.
/// It exposes methods that can operate on this data type through `ToolbarClassProtocol` conformance.
/// Use `ToolbarClassRef` only as an `unowned` reference to an existing `GtkToolbarClass` instance.
///
public struct ToolbarClassRef: ToolbarClassProtocol {
        /// Untyped pointer to the underlying `GtkToolbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToolbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToolbarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToolbarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToolbarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToolbarClass>?) {
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

    /// Reference intialiser for a related type that implements `ToolbarClassProtocol`
    @inlinable init<T: ToolbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToolbarClass Record: ToolbarClassProtocol extension (methods and fields)
public extension ToolbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolbarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToolbarClass>! { return ptr?.assumingMemoryBound(to: GtkToolbarClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var orientationChanged is unavailable because orientation_changed is void

    // var styleChanged is unavailable because style_changed is void

    // var popupContextMenu is unavailable because popup_context_menu is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ToplevelAccessible
public extension ToplevelAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToplevelAccessible`
    static var metatypeReference: GType { gtk_toplevel_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToplevelAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToplevelAccessibleClass.self) }
    
    static var metatype: GtkToplevelAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToplevelAccessibleClassRef? { ToplevelAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ToplevelAccessibleClass Record


///
/// The `ToplevelAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkToplevelAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToplevelAccessibleClass`.
/// Alternatively, use `ToplevelAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ToplevelAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkToplevelAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToplevelAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToplevelAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ToplevelAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ToplevelAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkToplevelAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ToplevelAccessibleClassProtocol` conformance.
/// Use `ToplevelAccessibleClassRef` only as an `unowned` reference to an existing `GtkToplevelAccessibleClass` instance.
///
public struct ToplevelAccessibleClassRef: ToplevelAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkToplevelAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToplevelAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToplevelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToplevelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToplevelAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToplevelAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ToplevelAccessibleClassProtocol`
    @inlinable init<T: ToplevelAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToplevelAccessibleClass Record: ToplevelAccessibleClassProtocol extension (methods and fields)
public extension ToplevelAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToplevelAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToplevelAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkToplevelAccessibleClass.self) }


    @inlinable var parentClass: AtkObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TreeDragDest
public extension TreeDragDestIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeDragDest`
    static var metatypeReference: GType { gtk_tree_drag_dest_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeDragDestIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeDragDestIface.self) }
    
    static var metatype: GtkTreeDragDestIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeDragDestIfaceRef? { TreeDragDestIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeDragDestIface Record


///
/// The `TreeDragDestIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragDestIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragDestIface`.
/// Alternatively, use `TreeDragDestIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeDragDestIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragDestIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeDragDestIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragDestIface>! { get }

    /// Required Initialiser for types conforming to `TreeDragDestIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeDragDestIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragDestIface` instance.
/// It exposes methods that can operate on this data type through `TreeDragDestIfaceProtocol` conformance.
/// Use `TreeDragDestIfaceRef` only as an `unowned` reference to an existing `GtkTreeDragDestIface` instance.
///
public struct TreeDragDestIfaceRef: TreeDragDestIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragDestIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeDragDestIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeDragDestIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeDragDestIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeDragDestIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeDragDestIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeDragDestIfaceProtocol`
    @inlinable init<T: TreeDragDestIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeDragDestIface Record: TreeDragDestIfaceProtocol extension (methods and fields)
public extension TreeDragDestIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragDestIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeDragDestIface>! { return ptr?.assumingMemoryBound(to: GtkTreeDragDestIface.self) }


    // var gIface is unavailable because g_iface is private

    // var dragDataReceived is unavailable because drag_data_received is void

    // var rowDropPossible is unavailable because row_drop_possible is void

}



/// Metatype/GType declaration for TreeDragSource
public extension TreeDragSourceIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeDragSource`
    static var metatypeReference: GType { gtk_tree_drag_source_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeDragSourceIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeDragSourceIface.self) }
    
    static var metatype: GtkTreeDragSourceIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeDragSourceIfaceRef? { TreeDragSourceIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeDragSourceIface Record


///
/// The `TreeDragSourceIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragSourceIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragSourceIface`.
/// Alternatively, use `TreeDragSourceIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeDragSourceIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragSourceIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeDragSourceIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragSourceIface>! { get }

    /// Required Initialiser for types conforming to `TreeDragSourceIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeDragSourceIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragSourceIface` instance.
/// It exposes methods that can operate on this data type through `TreeDragSourceIfaceProtocol` conformance.
/// Use `TreeDragSourceIfaceRef` only as an `unowned` reference to an existing `GtkTreeDragSourceIface` instance.
///
public struct TreeDragSourceIfaceRef: TreeDragSourceIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragSourceIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeDragSourceIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeDragSourceIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeDragSourceIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeDragSourceIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeDragSourceIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeDragSourceIfaceProtocol`
    @inlinable init<T: TreeDragSourceIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeDragSourceIface Record: TreeDragSourceIfaceProtocol extension (methods and fields)
public extension TreeDragSourceIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragSourceIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeDragSourceIface>! { return ptr?.assumingMemoryBound(to: GtkTreeDragSourceIface.self) }


    // var gIface is unavailable because g_iface is private

    // var rowDraggable is unavailable because row_draggable is void

    // var dragDataGet is unavailable because drag_data_get is void

    // var dragDataDelete is unavailable because drag_data_delete is void

}



// MARK: - TreeIter Record

/// The `GtkTreeIter` is the primary structure
/// for accessing a `GtkTreeModel`. Models are expected to put a unique
/// integer in the `stamp` member, and put
/// model-specific data in the three `user_data`
/// members.
///
/// The `TreeIterProtocol` protocol exposes the methods and properties of an underlying `GtkTreeIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeIter`.
/// Alternatively, use `TreeIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeIterProtocol {
        /// Untyped pointer to the underlying `GtkTreeIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeIter` instance.
    var tree_iter_ptr: UnsafeMutablePointer<GtkTreeIter>! { get }

    /// Required Initialiser for types conforming to `TreeIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GtkTreeIter` is the primary structure
/// for accessing a `GtkTreeModel`. Models are expected to put a unique
/// integer in the `stamp` member, and put
/// model-specific data in the three `user_data`
/// members.
///
/// The `TreeIterRef` type acts as a lightweight Swift reference to an underlying `GtkTreeIter` instance.
/// It exposes methods that can operate on this data type through `TreeIterProtocol` conformance.
/// Use `TreeIterRef` only as an `unowned` reference to an existing `GtkTreeIter` instance.
///
public struct TreeIterRef: TreeIterProtocol {
        /// Untyped pointer to the underlying `GtkTreeIter` instance.
    /// For type-safe access, use the generated, typed pointer `tree_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeIter>?) {
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

    /// Reference intialiser for a related type that implements `TreeIterProtocol`
    @inlinable init<T: TreeIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GtkTreeIter` is the primary structure
/// for accessing a `GtkTreeModel`. Models are expected to put a unique
/// integer in the `stamp` member, and put
/// model-specific data in the three `user_data`
/// members.
///
/// The `TreeIter` type acts as an owner of an underlying `GtkTreeIter` instance.
/// It provides the methods that can operate on this data type through `TreeIterProtocol` conformance.
/// Use `TreeIter` as a strong reference or owner of a `GtkTreeIter` instance.
///
open class TreeIterBase: TreeIterProtocol {
        /// Untyped pointer to the underlying `GtkTreeIter` instance.
    /// For type-safe access, use the generated, typed pointer `tree_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTreeIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTreeIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTreeIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `TreeIterProtocol`
    /// `GtkTreeIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TreeIterProtocol`
    @inlinable public init<T: TreeIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Do-nothing destructor for `GtkTreeIter`.
    deinit {
        // no reference counting for GtkTreeIter, cannot unref(tree_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }



}

// MARK: no TreeIter properties

// MARK: no TreeIter signals

// MARK: TreeIter has no signals
// MARK: TreeIter Record: TreeIterProtocol extension (methods and fields)
public extension TreeIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeIter` instance.
    @inlinable var tree_iter_ptr: UnsafeMutablePointer<GtkTreeIter>! { return ptr?.assumingMemoryBound(to: GtkTreeIter.self) }

    /// Creates a dynamically allocated tree iterator as a copy of `iter`.
    /// 
    /// This function is not intended for use in applications,
    /// because you can just copy the structs by value
    /// (`GtkTreeIter new_iter = iter;`).
    /// You must free this iter with `gtk_tree_iter_free()`.
    @inlinable func copy() -> TreeIterRef! {
        guard let rv = TreeIterRef(gconstpointer: gconstpointer(gtk_tree_iter_copy(tree_iter_ptr))) else { return nil }
        return rv
    }

    /// Frees an iterator that has been allocated by `gtk_tree_iter_copy()`.
    /// 
    /// This function is mainly used for language bindings.
    @inlinable func free() {
        gtk_tree_iter_free(tree_iter_ptr)
    
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::rows-reordered` signal.
    @inlinable func treeRowReferenceReordered<ObjectT: GLibObject.ObjectProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, path: TreePathT, newOrder: UnsafeMutablePointer<gint>!) {
        gtk_tree_row_reference_reordered(proxy.object_ptr, path.tree_path_ptr, tree_iter_ptr, newOrder)
    
    }

    /// a unique stamp to catch invalid iterators
    @inlinable var stamp: gint {
        /// a unique stamp to catch invalid iterators
        get {
            let rv = tree_iter_ptr.pointee.stamp
            return rv
        }
        /// a unique stamp to catch invalid iterators
         set {
            tree_iter_ptr.pointee.stamp = newValue
        }
    }

    /// model-specific data
    @inlinable var userData: gpointer! {
        /// model-specific data
        get {
            let rv = tree_iter_ptr.pointee.user_data
            return rv
        }
        /// model-specific data
         set {
            tree_iter_ptr.pointee.user_data = newValue
        }
    }

    /// model-specific data
    @inlinable var userData2: gpointer! {
        /// model-specific data
        get {
            let rv = tree_iter_ptr.pointee.user_data2
            return rv
        }
        /// model-specific data
         set {
            tree_iter_ptr.pointee.user_data2 = newValue
        }
    }

    /// model-specific data
    @inlinable var userData3: gpointer! {
        /// model-specific data
        get {
            let rv = tree_iter_ptr.pointee.user_data3
            return rv
        }
        /// model-specific data
         set {
            tree_iter_ptr.pointee.user_data3 = newValue
        }
    }

}



/// Metatype/GType declaration for TreeModelFilter
public extension TreeModelFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeModelFilter`
    static var metatypeReference: GType { gtk_tree_model_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeModelFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeModelFilterClass.self) }
    
    static var metatype: GtkTreeModelFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeModelFilterClassRef? { TreeModelFilterClassRef(metatypePointer) }
    
    
}

// MARK: - TreeModelFilterClass Record


///
/// The `TreeModelFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelFilterClass`.
/// Alternatively, use `TreeModelFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeModelFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeModelFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelFilterClass>! { get }

    /// Required Initialiser for types conforming to `TreeModelFilterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeModelFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelFilterClass` instance.
/// It exposes methods that can operate on this data type through `TreeModelFilterClassProtocol` conformance.
/// Use `TreeModelFilterClassRef` only as an `unowned` reference to an existing `GtkTreeModelFilterClass` instance.
///
public struct TreeModelFilterClassRef: TreeModelFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeModelFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeModelFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeModelFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeModelFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeModelFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeModelFilterClassProtocol`
    @inlinable init<T: TreeModelFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeModelFilterClass Record: TreeModelFilterClassProtocol extension (methods and fields)
public extension TreeModelFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeModelFilterClass>! { return ptr?.assumingMemoryBound(to: GtkTreeModelFilterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var visible is unavailable because visible is void

    // var modify is unavailable because modify is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for TreeModel
public extension TreeModelIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeModel`
    static var metatypeReference: GType { gtk_tree_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeModelIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeModelIface.self) }
    
    static var metatype: GtkTreeModelIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeModelIfaceRef? { TreeModelIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeModelIface Record


///
/// The `TreeModelIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelIface`.
/// Alternatively, use `TreeModelIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeModelIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeModelIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelIface>! { get }

    /// Required Initialiser for types conforming to `TreeModelIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeModelIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelIface` instance.
/// It exposes methods that can operate on this data type through `TreeModelIfaceProtocol` conformance.
/// Use `TreeModelIfaceRef` only as an `unowned` reference to an existing `GtkTreeModelIface` instance.
///
public struct TreeModelIfaceRef: TreeModelIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeModelIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeModelIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeModelIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeModelIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeModelIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeModelIfaceProtocol`
    @inlinable init<T: TreeModelIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeModelIface Record: TreeModelIfaceProtocol extension (methods and fields)
public extension TreeModelIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeModelIface>! { return ptr?.assumingMemoryBound(to: GtkTreeModelIface.self) }


    // var gIface is unavailable because g_iface is private

    // var rowChanged is unavailable because row_changed is void

    // var rowInserted is unavailable because row_inserted is void

    // var rowHasChildToggled is unavailable because row_has_child_toggled is void

    // var rowDeleted is unavailable because row_deleted is void

    // var rowsReordered is unavailable because rows_reordered is void

    // var getFlags is unavailable because get_flags is void

    // var getNColumns is unavailable because get_n_columns is void

    // var getColumnType is unavailable because get_column_type is void

    // var getIter is unavailable because get_iter is void

    // var getPath is unavailable because get_path is void

    // var getValue is unavailable because get_value is void

    // var iterNext is unavailable because iter_next is void

    // var iterPrevious is unavailable because iter_previous is void

    // var iterChildren is unavailable because iter_children is void

    // var iterHasChild is unavailable because iter_has_child is void

    // var iterNChildren is unavailable because iter_n_children is void

    // var iterNthChild is unavailable because iter_nth_child is void

    // var iterParent is unavailable because iter_parent is void

    // var refNode is unavailable because ref_node is void

    // var unrefNode is unavailable because unref_node is void

}



/// Metatype/GType declaration for TreeModelSort
public extension TreeModelSortClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeModelSort`
    static var metatypeReference: GType { gtk_tree_model_sort_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeModelSortClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeModelSortClass.self) }
    
    static var metatype: GtkTreeModelSortClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeModelSortClassRef? { TreeModelSortClassRef(metatypePointer) }
    
    
}

// MARK: - TreeModelSortClass Record


///
/// The `TreeModelSortClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelSortClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelSortClass`.
/// Alternatively, use `TreeModelSortClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeModelSortClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelSortClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeModelSortClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelSortClass>! { get }

    /// Required Initialiser for types conforming to `TreeModelSortClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeModelSortClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelSortClass` instance.
/// It exposes methods that can operate on this data type through `TreeModelSortClassProtocol` conformance.
/// Use `TreeModelSortClassRef` only as an `unowned` reference to an existing `GtkTreeModelSortClass` instance.
///
public struct TreeModelSortClassRef: TreeModelSortClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelSortClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeModelSortClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeModelSortClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeModelSortClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeModelSortClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeModelSortClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeModelSortClassProtocol`
    @inlinable init<T: TreeModelSortClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeModelSortClass Record: TreeModelSortClassProtocol extension (methods and fields)
public extension TreeModelSortClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelSortClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeModelSortClass>! { return ptr?.assumingMemoryBound(to: GtkTreeModelSortClass.self) }


    @inlinable var parentClass: GObjectClass {
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



// MARK: - TreePath Record


///
/// The `TreePathProtocol` protocol exposes the methods and properties of an underlying `GtkTreePath` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreePath`.
/// Alternatively, use `TreePathRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreePathProtocol {
        /// Untyped pointer to the underlying `GtkTreePath` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreePath` instance.
    var tree_path_ptr: UnsafeMutablePointer<GtkTreePath>! { get }

    /// Required Initialiser for types conforming to `TreePathProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreePathRef` type acts as a lightweight Swift reference to an underlying `GtkTreePath` instance.
/// It exposes methods that can operate on this data type through `TreePathProtocol` conformance.
/// Use `TreePathRef` only as an `unowned` reference to an existing `GtkTreePath` instance.
///
public struct TreePathRef: TreePathProtocol {
        /// Untyped pointer to the underlying `GtkTreePath` instance.
    /// For type-safe access, use the generated, typed pointer `tree_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreePathRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreePath>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreePath>?) {
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

    /// Reference intialiser for a related type that implements `TreePathProtocol`
    @inlinable init<T: TreePathProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkTreePath-struct`.
    /// This refers to a row.
    @inlinable init() {
        let rv = gtk_tree_path_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable init(indicesv indices: UnsafeMutablePointer<gint>!, length: Int) {
        let rv = gtk_tree_path_new_from_indicesv(indices, gsize(length))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkTreePath-struct` initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable init(string path: UnsafePointer<gchar>!) {
        let rv = gtk_tree_path_new_from_string(path)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkTreePath-struct`.
    /// 
    /// The string representation of this path is “0”.
    @inlinable static func newFirst() -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_new_first())) else { return nil }
        return rv
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable static func newFrom(indicesv indices: UnsafeMutablePointer<gint>!, length: Int) -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_new_from_indicesv(indices, gsize(length)))) else { return nil }
        return rv
    }

    /// Creates a new `GtkTreePath-struct` initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable static func newFrom(string path: UnsafePointer<gchar>!) -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_new_from_string(path))) else { return nil }
        return rv
    }
}


///
/// The `TreePath` type acts as an owner of an underlying `GtkTreePath` instance.
/// It provides the methods that can operate on this data type through `TreePathProtocol` conformance.
/// Use `TreePath` as a strong reference or owner of a `GtkTreePath` instance.
///
open class TreePath: TreePathProtocol {
        /// Untyped pointer to the underlying `GtkTreePath` instance.
    /// For type-safe access, use the generated, typed pointer `tree_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTreePath>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTreePath>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTreePath` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Reference intialiser for a related type that implements `TreePathProtocol`
    /// `GtkTreePath` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TreePathProtocol`
    @inlinable public init<T: TreePathProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Do-nothing destructor for `GtkTreePath`.
    deinit {
        // no reference counting for GtkTreePath, cannot unref(tree_path_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Creates a new `GtkTreePath-struct`.
    /// This refers to a row.
    @inlinable public init() {
        let rv = gtk_tree_path_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable public init(indicesv indices: UnsafeMutablePointer<gint>!, length: Int) {
        let rv = gtk_tree_path_new_from_indicesv(indices, gsize(length))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkTreePath-struct` initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable public init(string path: UnsafePointer<gchar>!) {
        let rv = gtk_tree_path_new_from_string(path)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkTreePath-struct`.
    /// 
    /// The string representation of this path is “0”.
    @inlinable public static func newFirst() -> TreePath! {
        guard let rv = TreePath(gconstpointer: gconstpointer(gtk_tree_path_new_first())) else { return nil }
        return rv
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable public static func newFrom(indicesv indices: UnsafeMutablePointer<gint>!, length: Int) -> TreePath! {
        guard let rv = TreePath(gconstpointer: gconstpointer(gtk_tree_path_new_from_indicesv(indices, gsize(length)))) else { return nil }
        return rv
    }

    /// Creates a new `GtkTreePath-struct` initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable public static func newFrom(string path: UnsafePointer<gchar>!) -> TreePath! {
        guard let rv = TreePath(gconstpointer: gconstpointer(gtk_tree_path_new_from_string(path))) else { return nil }
        return rv
    }

}

// MARK: no TreePath properties

// MARK: no TreePath signals

// MARK: TreePath has no signals
// MARK: TreePath Record: TreePathProtocol extension (methods and fields)
public extension TreePathProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreePath` instance.
    @inlinable var tree_path_ptr: UnsafeMutablePointer<GtkTreePath>! { return ptr?.assumingMemoryBound(to: GtkTreePath.self) }

    /// Appends a new index to a path.
    /// 
    /// As a result, the depth of the path is increased.
    @inlinable func append(index: Int) {
        gtk_tree_path_append_index(tree_path_ptr, gint(index))
    
    }

    /// Compares two paths.
    /// 
    /// If `a` appears before `b` in a tree, then -1 is returned.
    /// If `b` appears before `a`, then 1 is returned.
    /// If the two nodes are equal, then 0 is returned.
    @inlinable func compare<TreePathT: TreePathProtocol>(b: TreePathT) -> Int {
        let rv = Int(gtk_tree_path_compare(tree_path_ptr, b.tree_path_ptr))
        return rv
    }

    /// Creates a new `GtkTreePath-struct` as a copy of `path`.
    @inlinable func copy() -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_copy(tree_path_ptr))) else { return nil }
        return rv
    }

    /// Moves `path` to point to the first child of the current path.
    @inlinable func down() {
        gtk_tree_path_down(tree_path_ptr)
    
    }

    /// Frees `path`. If `path` is `nil`, it simply returns.
    @inlinable func free() {
        gtk_tree_path_free(tree_path_ptr)
    
    }

    /// Returns the current depth of `path`.
    @inlinable func getDepth() -> Int {
        let rv = Int(gtk_tree_path_get_depth(tree_path_ptr))
        return rv
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// This value should not be freed.
    /// 
    /// The length of the array can be obtained with `gtk_tree_path_get_depth()`.
    @inlinable func getIndices() -> UnsafeMutablePointer<gint>! {
        let rv = gtk_tree_path_get_indices(tree_path_ptr)
        return rv
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// It also returns the number of elements in the array.
    /// The array should not be freed.
    @inlinable func getIndicesWith(depth: UnsafeMutablePointer<gint>! = nil) -> UnsafeMutablePointer<gint>! {
        let rv = gtk_tree_path_get_indices_with_depth(tree_path_ptr, depth)
        return rv
    }

    /// Returns `true` if `descendant` is a descendant of `path`.
    @inlinable func isAncestor<TreePathT: TreePathProtocol>(descendant: TreePathT) -> Bool {
        let rv = ((gtk_tree_path_is_ancestor(tree_path_ptr, descendant.tree_path_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `path` is a descendant of `ancestor`.
    @inlinable func isDescendant<TreePathT: TreePathProtocol>(ancestor: TreePathT) -> Bool {
        let rv = ((gtk_tree_path_is_descendant(tree_path_ptr, ancestor.tree_path_ptr)) != 0)
        return rv
    }

    /// Moves the `path` to point to the next node at the current depth.
    @inlinable func next() {
        gtk_tree_path_next(tree_path_ptr)
    
    }

    /// Prepends a new index to a path.
    /// 
    /// As a result, the depth of the path is increased.
    @inlinable func prepend(index: Int) {
        gtk_tree_path_prepend_index(tree_path_ptr, gint(index))
    
    }

    /// Moves the `path` to point to the previous node at the
    /// current depth, if it exists.
    @inlinable func prev() -> Bool {
        let rv = ((gtk_tree_path_prev(tree_path_ptr)) != 0)
        return rv
    }

    /// Generates a string representation of the path.
    /// 
    /// This string is a “:” separated list of numbers.
    /// For example, “4:10:0:3” would be an acceptable
    /// return value for this string.
    @inlinable func toString() -> String! {
        let rv = gtk_tree_path_to_string(tree_path_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Moves the `path` to point to its parent node, if it has a parent.
    @inlinable func up() -> Bool {
        let rv = ((gtk_tree_path_up(tree_path_ptr)) != 0)
        return rv
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::row-deleted` signal.
    @inlinable func treeRowReferenceDeleted<ObjectT: GLibObject.ObjectProtocol>(proxy: ObjectT) {
        gtk_tree_row_reference_deleted(proxy.object_ptr, tree_path_ptr)
    
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::row-inserted` signal.
    @inlinable func treeRowReferenceInserted<ObjectT: GLibObject.ObjectProtocol>(proxy: ObjectT) {
        gtk_tree_row_reference_inserted(proxy.object_ptr, tree_path_ptr)
    
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::rows-reordered` signal.
    @inlinable func treeRowReferenceReordered<ObjectT: GLibObject.ObjectProtocol, TreeIterT: TreeIterProtocol>(proxy: ObjectT, iter: TreeIterT, newOrder: UnsafeMutablePointer<gint>!) {
        gtk_tree_row_reference_reordered(proxy.object_ptr, tree_path_ptr, iter.tree_iter_ptr, newOrder)
    
    }

    /// Sets selection data of target type `GTK_TREE_MODEL_ROW`. Normally used
    /// in a drag_data_get handler.
    @inlinable func treeSetRowDragData<SelectionDataT: SelectionDataProtocol, TreeModelT: TreeModelProtocol>(selectionData: SelectionDataT, treeModel: TreeModelT) -> Bool {
        let rv = ((gtk_tree_set_row_drag_data(selectionData.selection_data_ptr, treeModel.tree_model_ptr, tree_path_ptr)) != 0)
        return rv
    }
    /// Returns the current depth of `path`.
    @inlinable var depth: Int {
        /// Returns the current depth of `path`.
        get {
            let rv = Int(gtk_tree_path_get_depth(tree_path_ptr))
            return rv
        }
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// This value should not be freed.
    /// 
    /// The length of the array can be obtained with `gtk_tree_path_get_depth()`.
    @inlinable var indices: UnsafeMutablePointer<gint>! {
        /// Returns the current indices of `path`.
        /// 
        /// This is an array of integers, each representing a node in a tree.
        /// This value should not be freed.
        /// 
        /// The length of the array can be obtained with `gtk_tree_path_get_depth()`.
        get {
            let rv = gtk_tree_path_get_indices(tree_path_ptr)
            return rv
        }
    }


}



// MARK: - TreeRowReference Record

/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with `gtk_tree_row_reference_new()`.
///
/// The `TreeRowReferenceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeRowReference` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeRowReference`.
/// Alternatively, use `TreeRowReferenceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeRowReferenceProtocol {
        /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeRowReference` instance.
    var tree_row_reference_ptr: UnsafeMutablePointer<GtkTreeRowReference>! { get }

    /// Required Initialiser for types conforming to `TreeRowReferenceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with `gtk_tree_row_reference_new()`.
///
/// The `TreeRowReferenceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeRowReference` instance.
/// It exposes methods that can operate on this data type through `TreeRowReferenceProtocol` conformance.
/// Use `TreeRowReferenceRef` only as an `unowned` reference to an existing `GtkTreeRowReference` instance.
///
public struct TreeRowReferenceRef: TreeRowReferenceProtocol {
        /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    /// For type-safe access, use the generated, typed pointer `tree_row_reference_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeRowReferenceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeRowReference>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeRowReference>?) {
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

    /// Reference intialiser for a related type that implements `TreeRowReferenceProtocol`
    @inlinable init<T: TreeRowReferenceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. Any changes that occur on `model` are
    /// propagated, and the path is updated appropriately. If
    /// `path` isn’t a valid path in `model`, then `nil` is returned.
    @inlinable init<TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>( model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new(model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable init<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable static func new<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) -> TreeRowReferenceRef! {
        guard let rv = TreeRowReferenceRef(gconstpointer: gconstpointer(gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr))) else { return nil }
        return rv
    }
}

/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with `gtk_tree_row_reference_new()`.
///
/// The `TreeRowReference` type acts as an owner of an underlying `GtkTreeRowReference` instance.
/// It provides the methods that can operate on this data type through `TreeRowReferenceProtocol` conformance.
/// Use `TreeRowReference` as a strong reference or owner of a `GtkTreeRowReference` instance.
///
open class TreeRowReference: TreeRowReferenceProtocol {
        /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    /// For type-safe access, use the generated, typed pointer `tree_row_reference_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTreeRowReference>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTreeRowReference>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTreeRowReference` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Reference intialiser for a related type that implements `TreeRowReferenceProtocol`
    /// `GtkTreeRowReference` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TreeRowReferenceProtocol`
    @inlinable public init<T: TreeRowReferenceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Do-nothing destructor for `GtkTreeRowReference`.
    deinit {
        // no reference counting for GtkTreeRowReference, cannot unref(tree_row_reference_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. Any changes that occur on `model` are
    /// propagated, and the path is updated appropriately. If
    /// `path` isn’t a valid path in `model`, then `nil` is returned.
    @inlinable public init<TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>( model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new(model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable public init<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable public static func new<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) -> TreeRowReference! {
        guard let rv = TreeRowReference(gconstpointer: gconstpointer(gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr))) else { return nil }
        return rv
    }

}

// MARK: no TreeRowReference properties

// MARK: no TreeRowReference signals

// MARK: TreeRowReference has no signals
// MARK: TreeRowReference Record: TreeRowReferenceProtocol extension (methods and fields)
public extension TreeRowReferenceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeRowReference` instance.
    @inlinable var tree_row_reference_ptr: UnsafeMutablePointer<GtkTreeRowReference>! { return ptr?.assumingMemoryBound(to: GtkTreeRowReference.self) }

    /// Copies a `GtkTreeRowReference`.
    @inlinable func copy() -> TreeRowReferenceRef! {
        guard let rv = TreeRowReferenceRef(gconstpointer: gconstpointer(gtk_tree_row_reference_copy(tree_row_reference_ptr))) else { return nil }
        return rv
    }

    /// Free’s `reference`. `reference` may be `nil`
    @inlinable func free() {
        gtk_tree_row_reference_free(tree_row_reference_ptr)
    
    }

    /// Returns the model that the row reference is monitoring.
    @inlinable func getModel() -> TreeModelRef! {
        let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_model(tree_row_reference_ptr)))
        return rv
    }

    /// Returns a path that the row reference currently points to,
    /// or `nil` if the path pointed to is no longer valid.
    @inlinable func getPath() -> TreePathRef! {
        let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_path(tree_row_reference_ptr)))
        return rv
    }

    /// Returns `true` if the `reference` is non-`nil` and refers to
    /// a current valid path.
    @inlinable func valid() -> Bool {
        let rv = ((gtk_tree_row_reference_valid(tree_row_reference_ptr)) != 0)
        return rv
    }
    /// Returns the model that the row reference is monitoring.
    @inlinable var model: TreeModelRef! {
        /// Returns the model that the row reference is monitoring.
        get {
            let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_model(tree_row_reference_ptr)))
            return rv
        }
    }

    /// Returns a path that the row reference currently points to,
    /// or `nil` if the path pointed to is no longer valid.
    @inlinable var path: TreePathRef! {
        /// Returns a path that the row reference currently points to,
        /// or `nil` if the path pointed to is no longer valid.
        get {
            let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_path(tree_row_reference_ptr)))
            return rv
        }
    }


}



/// Metatype/GType declaration for TreeSelection
public extension TreeSelectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeSelection`
    static var metatypeReference: GType { gtk_tree_selection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeSelectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeSelectionClass.self) }
    
    static var metatype: GtkTreeSelectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeSelectionClassRef? { TreeSelectionClassRef(metatypePointer) }
    
    
}

// MARK: - TreeSelectionClass Record


///
/// The `TreeSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeSelectionClass`.
/// Alternatively, use `TreeSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSelectionClass>! { get }

    /// Required Initialiser for types conforming to `TreeSelectionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeSelectionClass` instance.
/// It exposes methods that can operate on this data type through `TreeSelectionClassProtocol` conformance.
/// Use `TreeSelectionClassRef` only as an `unowned` reference to an existing `GtkTreeSelectionClass` instance.
///
public struct TreeSelectionClassRef: TreeSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeSelectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeSelectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeSelectionClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeSelectionClassProtocol`
    @inlinable init<T: TreeSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeSelectionClass Record: TreeSelectionClassProtocol extension (methods and fields)
public extension TreeSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeSelectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeSelectionClass>! { return ptr?.assumingMemoryBound(to: GtkTreeSelectionClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for TreeSortable
public extension TreeSortableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeSortable`
    static var metatypeReference: GType { gtk_tree_sortable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeSortableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeSortableIface.self) }
    
    static var metatype: GtkTreeSortableIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeSortableIfaceRef? { TreeSortableIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeSortableIface Record


///
/// The `TreeSortableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeSortableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeSortableIface`.
/// Alternatively, use `TreeSortableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeSortableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeSortableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeSortableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSortableIface>! { get }

    /// Required Initialiser for types conforming to `TreeSortableIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeSortableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeSortableIface` instance.
/// It exposes methods that can operate on this data type through `TreeSortableIfaceProtocol` conformance.
/// Use `TreeSortableIfaceRef` only as an `unowned` reference to an existing `GtkTreeSortableIface` instance.
///
public struct TreeSortableIfaceRef: TreeSortableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeSortableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeSortableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeSortableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeSortableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeSortableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeSortableIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeSortableIfaceProtocol`
    @inlinable init<T: TreeSortableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeSortableIface Record: TreeSortableIfaceProtocol extension (methods and fields)
public extension TreeSortableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeSortableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeSortableIface>! { return ptr?.assumingMemoryBound(to: GtkTreeSortableIface.self) }


    // var gIface is unavailable because g_iface is private

    // var sortColumnChanged is unavailable because sort_column_changed is void

    // var getSortColumnID is unavailable because get_sort_column_id is void

    // var setSortColumnID is unavailable because set_sort_column_id is void

    // var setSortFunc is unavailable because set_sort_func is void

    // var setDefaultSortFunc is unavailable because set_default_sort_func is void

    // var hasDefaultSortFunc is unavailable because has_default_sort_func is void

}



/// Metatype/GType declaration for TreeStore
public extension TreeStoreClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeStore`
    static var metatypeReference: GType { gtk_tree_store_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeStoreClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeStoreClass.self) }
    
    static var metatype: GtkTreeStoreClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeStoreClassRef? { TreeStoreClassRef(metatypePointer) }
    
    
}

// MARK: - TreeStoreClass Record


///
/// The `TreeStoreClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeStoreClass`.
/// Alternatively, use `TreeStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeStoreClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeStoreClass>! { get }

    /// Required Initialiser for types conforming to `TreeStoreClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeStoreClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeStoreClass` instance.
/// It exposes methods that can operate on this data type through `TreeStoreClassProtocol` conformance.
/// Use `TreeStoreClassRef` only as an `unowned` reference to an existing `GtkTreeStoreClass` instance.
///
public struct TreeStoreClassRef: TreeStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeStoreClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeStoreClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeStoreClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeStoreClassProtocol`
    @inlinable init<T: TreeStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeStoreClass Record: TreeStoreClassProtocol extension (methods and fields)
public extension TreeStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeStoreClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeStoreClass>! { return ptr?.assumingMemoryBound(to: GtkTreeStoreClass.self) }


    @inlinable var parentClass: GObjectClass {
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



/// Metatype/GType declaration for TreeViewAccessible
public extension TreeViewAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeViewAccessible`
    static var metatypeReference: GType { gtk_tree_view_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeViewAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeViewAccessibleClass.self) }
    
    static var metatype: GtkTreeViewAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeViewAccessibleClassRef? { TreeViewAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - TreeViewAccessibleClass Record


///
/// The `TreeViewAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewAccessibleClass`.
/// Alternatively, use `TreeViewAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeViewAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `TreeViewAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeViewAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `TreeViewAccessibleClassProtocol` conformance.
/// Use `TreeViewAccessibleClassRef` only as an `unowned` reference to an existing `GtkTreeViewAccessibleClass` instance.
///
public struct TreeViewAccessibleClassRef: TreeViewAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeViewAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeViewAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeViewAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeViewAccessibleClassProtocol`
    @inlinable init<T: TreeViewAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeViewAccessibleClass Record: TreeViewAccessibleClassProtocol extension (methods and fields)
public extension TreeViewAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeViewAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkTreeViewAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TreeView
public extension TreeViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeView`
    static var metatypeReference: GType { gtk_tree_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeViewClass.self) }
    
    static var metatype: GtkTreeViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeViewClassRef? { TreeViewClassRef(metatypePointer) }
    
    
}

// MARK: - TreeViewClass Record


///
/// The `TreeViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewClass`.
/// Alternatively, use `TreeViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewClass>! { get }

    /// Required Initialiser for types conforming to `TreeViewClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewClass` instance.
/// It exposes methods that can operate on this data type through `TreeViewClassProtocol` conformance.
/// Use `TreeViewClassRef` only as an `unowned` reference to an existing `GtkTreeViewClass` instance.
///
public struct TreeViewClassRef: TreeViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeViewClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeViewClassProtocol`
    @inlinable init<T: TreeViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeViewClass Record: TreeViewClassProtocol extension (methods and fields)
public extension TreeViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeViewClass>! { return ptr?.assumingMemoryBound(to: GtkTreeViewClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var rowActivated is unavailable because row_activated is void

    // var testExpandRow is unavailable because test_expand_row is void

    // var testCollapseRow is unavailable because test_collapse_row is void

    // var rowExpanded is unavailable because row_expanded is void

    // var rowCollapsed is unavailable because row_collapsed is void

    // var columnsChanged is unavailable because columns_changed is void

    // var cursorChanged is unavailable because cursor_changed is void

    // var moveCursor is unavailable because move_cursor is void

    // var selectAll is unavailable because select_all is void

    // var unselectAll is unavailable because unselect_all is void

    // var selectCursorRow is unavailable because select_cursor_row is void

    // var toggleCursorRow is unavailable because toggle_cursor_row is void

    // var expandCollapseCursorRow is unavailable because expand_collapse_cursor_row is void

    // var selectCursorParent is unavailable because select_cursor_parent is void

    // var startInteractiveSearch is unavailable because start_interactive_search is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for TreeViewColumn
public extension TreeViewColumnClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeViewColumn`
    static var metatypeReference: GType { gtk_tree_view_column_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeViewColumnClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeViewColumnClass.self) }
    
    static var metatype: GtkTreeViewColumnClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeViewColumnClassRef? { TreeViewColumnClassRef(metatypePointer) }
    
    
}

// MARK: - TreeViewColumnClass Record


///
/// The `TreeViewColumnClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewColumnClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewColumnClass`.
/// Alternatively, use `TreeViewColumnClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TreeViewColumnClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewColumnClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeViewColumnClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewColumnClass>! { get }

    /// Required Initialiser for types conforming to `TreeViewColumnClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TreeViewColumnClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewColumnClass` instance.
/// It exposes methods that can operate on this data type through `TreeViewColumnClassProtocol` conformance.
/// Use `TreeViewColumnClassRef` only as an `unowned` reference to an existing `GtkTreeViewColumnClass` instance.
///
public struct TreeViewColumnClassRef: TreeViewColumnClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewColumnClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeViewColumnClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeViewColumnClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeViewColumnClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeViewColumnClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeViewColumnClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeViewColumnClassProtocol`
    @inlinable init<T: TreeViewColumnClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeViewColumnClass Record: TreeViewColumnClassProtocol extension (methods and fields)
public extension TreeViewColumnClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewColumnClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeViewColumnClass>! { return ptr?.assumingMemoryBound(to: GtkTreeViewColumnClass.self) }


    @inlinable var parentClass: GInitiallyUnownedClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var clicked is unavailable because clicked is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for UIManager
public extension UIManagerClassRef {
    
    /// This getter returns the GLib type identifier registered for `UIManager`
    static var metatypeReference: GType { gtk_ui_manager_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkUIManagerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkUIManagerClass.self) }
    
    static var metatype: GtkUIManagerClass? { metatypePointer?.pointee } 
    
    static var wrapper: UIManagerClassRef? { UIManagerClassRef(metatypePointer) }
    
    
}

// MARK: - UIManagerClass Record


///
/// The `UIManagerClassProtocol` protocol exposes the methods and properties of an underlying `GtkUIManagerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UIManagerClass`.
/// Alternatively, use `UIManagerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UIManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkUIManagerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkUIManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkUIManagerClass>! { get }

    /// Required Initialiser for types conforming to `UIManagerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `UIManagerClassRef` type acts as a lightweight Swift reference to an underlying `GtkUIManagerClass` instance.
/// It exposes methods that can operate on this data type through `UIManagerClassProtocol` conformance.
/// Use `UIManagerClassRef` only as an `unowned` reference to an existing `GtkUIManagerClass` instance.
///
public struct UIManagerClassRef: UIManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkUIManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UIManagerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkUIManagerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkUIManagerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkUIManagerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkUIManagerClass>?) {
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

    /// Reference intialiser for a related type that implements `UIManagerClassProtocol`
    @inlinable init<T: UIManagerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UIManagerClass Record: UIManagerClassProtocol extension (methods and fields)
public extension UIManagerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkUIManagerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkUIManagerClass>! { return ptr?.assumingMemoryBound(to: GtkUIManagerClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var addWidget is unavailable because add_widget is void

    // var actionsChanged is unavailable because actions_changed is void

    // var connectProxy is unavailable because connect_proxy is void

    // var disconnectProxy is unavailable because disconnect_proxy is void

    // var preActivate is unavailable because pre_activate is void

    // var postActivate is unavailable because post_activate is void

    // var getWidget is unavailable because get_widget is void

    // var getAction is unavailable because get_action is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



