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

/// Metatype/GType declaration for OverlayLayoutChild
public extension OverlayLayoutChildClassRef {
    
    /// This getter returns the GLib type identifier registered for `OverlayLayoutChild`
    static var metatypeReference: GType { gtk_overlay_layout_child_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkOverlayLayoutChildClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkOverlayLayoutChildClass.self) }
    
    static var metatype: GtkOverlayLayoutChildClass? { metatypePointer?.pointee } 
    
    static var wrapper: OverlayLayoutChildClassRef? { OverlayLayoutChildClassRef(metatypePointer) }
    
    
}

// MARK: - OverlayLayoutChildClass Record

/// The `OverlayLayoutChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkOverlayLayoutChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OverlayLayoutChildClass`.
/// Alternatively, use `OverlayLayoutChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OverlayLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkOverlayLayoutChildClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOverlayLayoutChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOverlayLayoutChildClass>! { get }

    /// Required Initialiser for types conforming to `OverlayLayoutChildClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `OverlayLayoutChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkOverlayLayoutChildClass` instance.
/// It exposes methods that can operate on this data type through `OverlayLayoutChildClassProtocol` conformance.
/// Use `OverlayLayoutChildClassRef` only as an `unowned` reference to an existing `GtkOverlayLayoutChildClass` instance.
///

public struct OverlayLayoutChildClassRef: OverlayLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkOverlayLayoutChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OverlayLayoutChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOverlayLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOverlayLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOverlayLayoutChildClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOverlayLayoutChildClass>?) {
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

    /// Reference intialiser for a related type that implements `OverlayLayoutChildClassProtocol`
    @inlinable init<T: OverlayLayoutChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: OverlayLayoutChildClass Record: OverlayLayoutChildClassProtocol extension (methods and fields)
public extension OverlayLayoutChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlayLayoutChildClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkOverlayLayoutChildClass>! { return ptr?.assumingMemoryBound(to: GtkOverlayLayoutChildClass.self) }


    @inlinable var parentClass: GtkLayoutChildClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for OverlayLayout
public extension OverlayLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `OverlayLayout`
    static var metatypeReference: GType { gtk_overlay_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkOverlayLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkOverlayLayoutClass.self) }
    
    static var metatype: GtkOverlayLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: OverlayLayoutClassRef? { OverlayLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - OverlayLayoutClass Record

/// The `OverlayLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkOverlayLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OverlayLayoutClass`.
/// Alternatively, use `OverlayLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OverlayLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkOverlayLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOverlayLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOverlayLayoutClass>! { get }

    /// Required Initialiser for types conforming to `OverlayLayoutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `OverlayLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkOverlayLayoutClass` instance.
/// It exposes methods that can operate on this data type through `OverlayLayoutClassProtocol` conformance.
/// Use `OverlayLayoutClassRef` only as an `unowned` reference to an existing `GtkOverlayLayoutClass` instance.
///

public struct OverlayLayoutClassRef: OverlayLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkOverlayLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OverlayLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOverlayLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOverlayLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOverlayLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOverlayLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `OverlayLayoutClassProtocol`
    @inlinable init<T: OverlayLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: OverlayLayoutClass Record: OverlayLayoutClassProtocol extension (methods and fields)
public extension OverlayLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlayLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkOverlayLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkOverlayLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

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

    /// Required Initialiser for types conforming to `PadActionEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: no PadActionEntry signals

// MARK: PadActionEntry has no signals
// MARK: PadActionEntry Record: PadActionEntryProtocol extension (methods and fields)
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
    @inlinable var label: UnsafePointer<CChar>! {
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
    @inlinable var actionName: UnsafePointer<CChar>! {
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



