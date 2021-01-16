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

/// Metatype/GType declaration for Orientable
public extension OrientableIfaceRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_orientable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkOrientableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkOrientableIface.self) }
    
    static var metatype: GtkOrientableIface? { metatypePointer?.pointee } 
    
    static var wrapper: OrientableIfaceRef? { OrientableIfaceRef(metatypePointer) }
    
    
}

// MARK: - OrientableIface Record

/// The `OrientableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkOrientableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OrientableIface`.
/// Alternatively, use `OrientableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OrientableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkOrientableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOrientableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkOrientableIface>! { get }

}

/// The `OrientableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkOrientableIface` instance.
/// It exposes methods that can operate on this data type through `OrientableIfaceProtocol` conformance.
/// Use `OrientableIfaceRef` only as an `unowned` reference to an existing `GtkOrientableIface` instance.
///

public struct OrientableIfaceRef: OrientableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkOrientableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OrientableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOrientableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOrientableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOrientableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOrientableIface>?) {
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

    /// Reference intialiser for a related type that implements `OrientableIfaceProtocol`
    @inlinable init<T: OrientableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: OrientableIface Record: OrientableIfaceProtocol extension (methods and fields)
public extension OrientableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOrientableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkOrientableIface>! { return ptr?.assumingMemoryBound(to: GtkOrientableIface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

}



/// Metatype/GType declaration for Overlay
public extension OverlayClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_overlay_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkOverlayClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkOverlayClass.self) }
    
    static var metatype: GtkOverlayClass? { metatypePointer?.pointee } 
    
    static var wrapper: OverlayClassRef? { OverlayClassRef(metatypePointer) }
    
    
}

// MARK: - OverlayClass Record

/// The `OverlayClassProtocol` protocol exposes the methods and properties of an underlying `GtkOverlayClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OverlayClass`.
/// Alternatively, use `OverlayClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OverlayClassProtocol {
        /// Untyped pointer to the underlying `GtkOverlayClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOverlayClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOverlayClass>! { get }

}

/// The `OverlayClassRef` type acts as a lightweight Swift reference to an underlying `GtkOverlayClass` instance.
/// It exposes methods that can operate on this data type through `OverlayClassProtocol` conformance.
/// Use `OverlayClassRef` only as an `unowned` reference to an existing `GtkOverlayClass` instance.
///

public struct OverlayClassRef: OverlayClassProtocol {
        /// Untyped pointer to the underlying `GtkOverlayClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OverlayClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOverlayClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOverlayClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOverlayClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOverlayClass>?) {
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

    /// Reference intialiser for a related type that implements `OverlayClassProtocol`
    @inlinable init<T: OverlayClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: OverlayClass Record: OverlayClassProtocol extension (methods and fields)
public extension OverlayClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlayClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkOverlayClass>! { return ptr?.assumingMemoryBound(to: GtkOverlayClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getChildPosition is unavailable because get_child_position is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



// MARK: - PadActionEntry Record

/// The `PadActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkPadActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PadActionEntry`.
/// Alternatively, use `PadActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Struct defining a pad action entry.
public protocol PadActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkPadActionEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPadActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkPadActionEntry>! { get }

}

/// The `PadActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkPadActionEntry` instance.
/// It exposes methods that can operate on this data type through `PadActionEntryProtocol` conformance.
/// Use `PadActionEntryRef` only as an `unowned` reference to an existing `GtkPadActionEntry` instance.
///
/// Struct defining a pad action entry.
public struct PadActionEntryRef: PadActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkPadActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PadActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPadActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPadActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPadActionEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPadActionEntry>?) {
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

    /// Reference intialiser for a related type that implements `PadActionEntryProtocol`
    @inlinable init<T: PadActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PadActionEntry` type acts as an owner of an underlying `GtkPadActionEntry` instance.
/// It provides the methods that can operate on this data type through `PadActionEntryProtocol` conformance.
/// Use `PadActionEntry` as a strong reference or owner of a `GtkPadActionEntry` instance.
///
/// Struct defining a pad action entry.
open class PadActionEntry: PadActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkPadActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPadActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPadActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadActionEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPadActionEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPadActionEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkPadActionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PadActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPadActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkPadActionEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PadActionEntryProtocol`
    /// `GtkPadActionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PadActionEntryProtocol`
    @inlinable public init<T: PadActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkPadActionEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkPadActionEntry`.
    deinit {
        // no reference counting for GtkPadActionEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkPadActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkPadActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkPadActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkPadActionEntry, cannot ref(_ptr)
    }



}

// MARK: no PadActionEntry properties

// MARK: PadActionEntry has no signals// MARK: PadActionEntry Record: PadActionEntryProtocol extension (methods and fields)
public extension PadActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPadActionEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPadActionEntry>! { return ptr?.assumingMemoryBound(to: GtkPadActionEntry.self) }


    /// the type of pad feature that will trigger this action entry.
    @inlinable var type: GtkPadActionType {
        /// the type of pad feature that will trigger this action entry.
        get {
            let rv = _ptr.pointee.type
            return rv
        }
        /// the type of pad feature that will trigger this action entry.
         set {
            _ptr.pointee.type = newValue
        }
    }

    /// the 0-indexed button/ring/strip number that will trigger this action
    ///   entry.
    @inlinable var index: gint {
        /// the 0-indexed button/ring/strip number that will trigger this action
        ///   entry.
        get {
            let rv = _ptr.pointee.index
            return rv
        }
        /// the 0-indexed button/ring/strip number that will trigger this action
        ///   entry.
         set {
            _ptr.pointee.index = newValue
        }
    }

    /// the mode that will trigger this action entry, or -1 for all modes.
    @inlinable var mode: gint {
        /// the mode that will trigger this action entry, or -1 for all modes.
        get {
            let rv = _ptr.pointee.mode
            return rv
        }
        /// the mode that will trigger this action entry, or -1 for all modes.
         set {
            _ptr.pointee.mode = newValue
        }
    }

    /// Human readable description of this action entry, this string should
    ///   be deemed user-visible.
    @inlinable var label: UnsafeMutablePointer<gchar>! {
        /// Human readable description of this action entry, this string should
        ///   be deemed user-visible.
        get {
            let rv = _ptr.pointee.label
            return rv
        }
        /// Human readable description of this action entry, this string should
        ///   be deemed user-visible.
         set {
            _ptr.pointee.label = newValue
        }
    }

    /// action name that will be activated in the `GActionGroup`.
    @inlinable var actionName: UnsafeMutablePointer<gchar>! {
        /// action name that will be activated in the `GActionGroup`.
        get {
            let rv = _ptr.pointee.action_name
            return rv
        }
        /// action name that will be activated in the `GActionGroup`.
         set {
            _ptr.pointee.action_name = newValue
        }
    }

}



