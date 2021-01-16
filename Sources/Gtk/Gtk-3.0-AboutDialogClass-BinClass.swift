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

/// Metatype/GType declaration for AboutDialog
public extension AboutDialogClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_about_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAboutDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAboutDialogClass.self) }
    
    static var metatype: GtkAboutDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: AboutDialogClassRef? { AboutDialogClassRef(metatypePointer) }
    
    
}

// MARK: - AboutDialogClass Record

/// The `AboutDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkAboutDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AboutDialogClass`.
/// Alternatively, use `AboutDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AboutDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkAboutDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAboutDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAboutDialogClass>! { get }

}

/// The `AboutDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkAboutDialogClass` instance.
/// It exposes methods that can operate on this data type through `AboutDialogClassProtocol` conformance.
/// Use `AboutDialogClassRef` only as an `unowned` reference to an existing `GtkAboutDialogClass` instance.
///

public struct AboutDialogClassRef: AboutDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkAboutDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AboutDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAboutDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAboutDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAboutDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAboutDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `AboutDialogClassProtocol`
    @inlinable init<T: AboutDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AboutDialogClass Record: AboutDialogClassProtocol extension (methods and fields)
public extension AboutDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAboutDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAboutDialogClass>! { return ptr?.assumingMemoryBound(to: GtkAboutDialogClass.self) }


    @inlinable var parentClass: GtkDialogClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activateLink is unavailable because activate_link is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for AccelGroup
public extension AccelGroupClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_accel_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAccelGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAccelGroupClass.self) }
    
    static var metatype: GtkAccelGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: AccelGroupClassRef? { AccelGroupClassRef(metatypePointer) }
    
    
}

// MARK: - AccelGroupClass Record

/// The `AccelGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccelGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelGroupClass`.
/// Alternatively, use `AccelGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkAccelGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupClass>! { get }

}

/// The `AccelGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccelGroupClass` instance.
/// It exposes methods that can operate on this data type through `AccelGroupClassProtocol` conformance.
/// Use `AccelGroupClassRef` only as an `unowned` reference to an existing `GtkAccelGroupClass` instance.
///

public struct AccelGroupClassRef: AccelGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkAccelGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `AccelGroupClassProtocol`
    @inlinable init<T: AccelGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AccelGroupClass Record: AccelGroupClassProtocol extension (methods and fields)
public extension AccelGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAccelGroupClass>! { return ptr?.assumingMemoryBound(to: GtkAccelGroupClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var accelChanged is unavailable because accel_changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - AccelGroupEntry Record

/// The `AccelGroupEntryProtocol` protocol exposes the methods and properties of an underlying `GtkAccelGroupEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelGroupEntry`.
/// Alternatively, use `AccelGroupEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelGroupEntryProtocol {
        /// Untyped pointer to the underlying `GtkAccelGroupEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelGroupEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupEntry>! { get }

}

/// The `AccelGroupEntryRef` type acts as a lightweight Swift reference to an underlying `GtkAccelGroupEntry` instance.
/// It exposes methods that can operate on this data type through `AccelGroupEntryProtocol` conformance.
/// Use `AccelGroupEntryRef` only as an `unowned` reference to an existing `GtkAccelGroupEntry` instance.
///

public struct AccelGroupEntryRef: AccelGroupEntryProtocol {
        /// Untyped pointer to the underlying `GtkAccelGroupEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelGroupEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelGroupEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelGroupEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelGroupEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelGroupEntry>?) {
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

    /// Reference intialiser for a related type that implements `AccelGroupEntryProtocol`
    @inlinable init<T: AccelGroupEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelGroupEntry` type acts as an owner of an underlying `GtkAccelGroupEntry` instance.
/// It provides the methods that can operate on this data type through `AccelGroupEntryProtocol` conformance.
/// Use `AccelGroupEntry` as a strong reference or owner of a `GtkAccelGroupEntry` instance.
///

open class AccelGroupEntry: AccelGroupEntryProtocol {
        /// Untyped pointer to the underlying `GtkAccelGroupEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroupEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAccelGroupEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroupEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAccelGroupEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroupEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroupEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroupEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAccelGroupEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroupEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAccelGroupEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkAccelGroupEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AccelGroupEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAccelGroupEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkAccelGroupEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AccelGroupEntryProtocol`
    /// `GtkAccelGroupEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AccelGroupEntryProtocol`
    @inlinable public init<T: AccelGroupEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkAccelGroupEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkAccelGroupEntry`.
    deinit {
        // no reference counting for GtkAccelGroupEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkAccelGroupEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkAccelGroupEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkAccelGroupEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkAccelGroupEntry, cannot ref(_ptr)
    }



}

// MARK: no AccelGroupEntry properties

// MARK: AccelGroupEntry has no signals// MARK: AccelGroupEntry Record: AccelGroupEntryProtocol extension (methods and fields)
public extension AccelGroupEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelGroupEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAccelGroupEntry>! { return ptr?.assumingMemoryBound(to: GtkAccelGroupEntry.self) }


    @inlinable var key: GtkAccelKey {
        get {
            let rv = _ptr.pointee.key
            return rv
        }
         set {
            _ptr.pointee.key = newValue
        }
    }

    @inlinable var closure: ClosureRef! {
        get {
            let rv = ClosureRef(gconstpointer: gconstpointer(_ptr.pointee.closure))
            return rv
        }
         set {
            _ptr.pointee.closure = UnsafeMutablePointer<GClosure>(newValue.closure_ptr)
        }
    }

    @inlinable var accelPathQuark: GQuark {
        get {
            let rv = _ptr.pointee.accel_path_quark
            return rv
        }
         set {
            _ptr.pointee.accel_path_quark = newValue
        }
    }

}



// MARK: - AccelKey Record

/// The `AccelKeyProtocol` protocol exposes the methods and properties of an underlying `GtkAccelKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelKey`.
/// Alternatively, use `AccelKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelKeyProtocol {
        /// Untyped pointer to the underlying `GtkAccelKey` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelKey` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelKey>! { get }

}

/// The `AccelKeyRef` type acts as a lightweight Swift reference to an underlying `GtkAccelKey` instance.
/// It exposes methods that can operate on this data type through `AccelKeyProtocol` conformance.
/// Use `AccelKeyRef` only as an `unowned` reference to an existing `GtkAccelKey` instance.
///

public struct AccelKeyRef: AccelKeyProtocol {
        /// Untyped pointer to the underlying `GtkAccelKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelKeyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelKey>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelKey>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelKey>?) {
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

    /// Reference intialiser for a related type that implements `AccelKeyProtocol`
    @inlinable init<T: AccelKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelKey` type acts as an owner of an underlying `GtkAccelKey` instance.
/// It provides the methods that can operate on this data type through `AccelKeyProtocol` conformance.
/// Use `AccelKey` as a strong reference or owner of a `GtkAccelKey` instance.
///

open class AccelKey: AccelKeyProtocol {
        /// Untyped pointer to the underlying `GtkAccelKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAccelKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAccelKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelKey` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAccelKey>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAccelKey>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkAccelKey` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AccelKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAccelKey>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkAccelKey, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AccelKeyProtocol`
    /// `GtkAccelKey` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AccelKeyProtocol`
    @inlinable public init<T: AccelKeyProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkAccelKey, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkAccelKey`.
    deinit {
        // no reference counting for GtkAccelKey, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkAccelKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkAccelKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkAccelKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkAccelKey, cannot ref(_ptr)
    }



}

// MARK: no AccelKey properties

// MARK: AccelKey has no signals// MARK: AccelKey Record: AccelKeyProtocol extension (methods and fields)
public extension AccelKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelKey` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAccelKey>! { return ptr?.assumingMemoryBound(to: GtkAccelKey.self) }


    /// The accelerator keyval
    @inlinable var accelKey: guint {
        /// The accelerator keyval
        get {
            let rv = _ptr.pointee.accel_key
            return rv
        }
        /// The accelerator keyval
         set {
            _ptr.pointee.accel_key = newValue
        }
    }

    /// The accelerator modifiers
    @inlinable var accelMods: Gdk.ModifierType {
        /// The accelerator modifiers
        get {
            let rv = Gdk.ModifierType(_ptr.pointee.accel_mods)
            return rv
        }
        /// The accelerator modifiers
         set {
            _ptr.pointee.accel_mods = newValue.value
        }
    }

    /// The accelerator flags
    @inlinable var accelFlags: guint {
        /// The accelerator flags
        get {
            let rv = _ptr.pointee.accel_flags
            return rv
        }
        /// The accelerator flags
         set {
            _ptr.pointee.accel_flags = newValue
        }
    }

}



/// Metatype/GType declaration for AccelLabel
public extension AccelLabelClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_accel_label_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAccelLabelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAccelLabelClass.self) }
    
    static var metatype: GtkAccelLabelClass? { metatypePointer?.pointee } 
    
    static var wrapper: AccelLabelClassRef? { AccelLabelClassRef(metatypePointer) }
    
    
}

// MARK: - AccelLabelClass Record

/// The `AccelLabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccelLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelLabelClass`.
/// Alternatively, use `AccelLabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkAccelLabelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelLabelClass>! { get }

}

/// The `AccelLabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccelLabelClass` instance.
/// It exposes methods that can operate on this data type through `AccelLabelClassProtocol` conformance.
/// Use `AccelLabelClassRef` only as an `unowned` reference to an existing `GtkAccelLabelClass` instance.
///

public struct AccelLabelClassRef: AccelLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkAccelLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelLabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelLabelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelLabelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelLabelClass>?) {
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

    /// Reference intialiser for a related type that implements `AccelLabelClassProtocol`
    @inlinable init<T: AccelLabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AccelLabelClass Record: AccelLabelClassProtocol extension (methods and fields)
public extension AccelLabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelLabelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAccelLabelClass>! { return ptr?.assumingMemoryBound(to: GtkAccelLabelClass.self) }


    @inlinable var parentClass: GtkLabelClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    @inlinable var signalQuote1: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.signal_quote1
            return rv
        }
    }

    @inlinable var signalQuote2: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.signal_quote2
            return rv
        }
    }

    @inlinable var modNameShift: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.mod_name_shift
            return rv
        }
    }

    @inlinable var modNameControl: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.mod_name_control
            return rv
        }
    }

    @inlinable var modNameAlt: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.mod_name_alt
            return rv
        }
    }

    @inlinable var modSeparator: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.mod_separator
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for AccelMap
public extension AccelMapClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_accel_map_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAccelMapClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAccelMapClass.self) }
    
    static var metatype: GtkAccelMapClass? { metatypePointer?.pointee } 
    
    static var wrapper: AccelMapClassRef? { AccelMapClassRef(metatypePointer) }
    
    
}

// MARK: - AccelMapClass Record

/// The `AccelMapClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccelMapClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelMapClass`.
/// Alternatively, use `AccelMapClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelMapClassProtocol {
        /// Untyped pointer to the underlying `GtkAccelMapClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelMapClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelMapClass>! { get }

}

/// The `AccelMapClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccelMapClass` instance.
/// It exposes methods that can operate on this data type through `AccelMapClassProtocol` conformance.
/// Use `AccelMapClassRef` only as an `unowned` reference to an existing `GtkAccelMapClass` instance.
///

public struct AccelMapClassRef: AccelMapClassProtocol {
        /// Untyped pointer to the underlying `GtkAccelMapClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelMapClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelMapClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelMapClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelMapClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelMapClass>?) {
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

    /// Reference intialiser for a related type that implements `AccelMapClassProtocol`
    @inlinable init<T: AccelMapClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AccelMapClass Record: AccelMapClassProtocol extension (methods and fields)
public extension AccelMapClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelMapClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAccelMapClass>! { return ptr?.assumingMemoryBound(to: GtkAccelMapClass.self) }



}



/// Metatype/GType declaration for Accessible
public extension AccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAccessibleClass.self) }
    
    static var metatype: GtkAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: AccessibleClassRef? { AccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - AccessibleClass Record

/// The `AccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccessibleClass`.
/// Alternatively, use `AccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccessibleClass>! { get }

}

/// The `AccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `AccessibleClassProtocol` conformance.
/// Use `AccessibleClassRef` only as an `unowned` reference to an existing `GtkAccessibleClass` instance.
///

public struct AccessibleClassRef: AccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `AccessibleClassProtocol`
    @inlinable init<T: AccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AccessibleClass Record: AccessibleClassProtocol extension (methods and fields)
public extension AccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkAccessibleClass.self) }


    @inlinable var parentClass: AtkObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var connectWidgetDestroyed is unavailable because connect_widget_destroyed is void

    // var widgetSet is unavailable because widget_set is void

    // var widgetUnset is unavailable because widget_unset is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ActionBar
public extension ActionBarClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_action_bar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkActionBarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkActionBarClass.self) }
    
    static var metatype: GtkActionBarClass? { metatypePointer?.pointee } 
    
    static var wrapper: ActionBarClassRef? { ActionBarClassRef(metatypePointer) }
    
    
}

// MARK: - ActionBarClass Record

/// The `ActionBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkActionBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionBarClass`.
/// Alternatively, use `ActionBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionBarClassProtocol {
        /// Untyped pointer to the underlying `GtkActionBarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionBarClass>! { get }

}

/// The `ActionBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkActionBarClass` instance.
/// It exposes methods that can operate on this data type through `ActionBarClassProtocol` conformance.
/// Use `ActionBarClassRef` only as an `unowned` reference to an existing `GtkActionBarClass` instance.
///

public struct ActionBarClassRef: ActionBarClassProtocol {
        /// Untyped pointer to the underlying `GtkActionBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionBarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionBarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionBarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionBarClass>?) {
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

    /// Reference intialiser for a related type that implements `ActionBarClassProtocol`
    @inlinable init<T: ActionBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionBarClass Record: ActionBarClassProtocol extension (methods and fields)
public extension ActionBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionBarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActionBarClass>! { return ptr?.assumingMemoryBound(to: GtkActionBarClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Action
public extension ActionClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkActionClass.self) }
    
    static var metatype: GtkActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: ActionClassRef? { ActionClassRef(metatypePointer) }
    
    
}

// MARK: - ActionClass Record

/// The `ActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionClass`.
/// Alternatively, use `ActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionClassProtocol {
        /// Untyped pointer to the underlying `GtkActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionClass>! { get }

}

/// The `ActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkActionClass` instance.
/// It exposes methods that can operate on this data type through `ActionClassProtocol` conformance.
/// Use `ActionClassRef` only as an `unowned` reference to an existing `GtkActionClass` instance.
///

public struct ActionClassRef: ActionClassProtocol {
        /// Untyped pointer to the underlying `GtkActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionClass>?) {
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

    /// Reference intialiser for a related type that implements `ActionClassProtocol`
    @inlinable init<T: ActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionClass Record: ActionClassProtocol extension (methods and fields)
public extension ActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActionClass>! { return ptr?.assumingMemoryBound(to: GtkActionClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var menuItemType is unavailable because menu_item_type is private

    // var toolbarItemType is unavailable because toolbar_item_type is private

    // var createMenuItem is unavailable because create_menu_item is void

    // var createToolItem is unavailable because create_tool_item is void

    // var connectProxy is unavailable because connect_proxy is void

    // var disconnectProxy is unavailable because disconnect_proxy is void

    // var createMenu is unavailable because create_menu is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - ActionEntry Record

/// The `ActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionEntry`.
/// Alternatively, use `ActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkActionEntry` structs are used with `gtk_action_group_add_actions()` to
/// construct actions.
public protocol ActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkActionEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkActionEntry>! { get }

}

/// The `ActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkActionEntry` instance.
/// It exposes methods that can operate on this data type through `ActionEntryProtocol` conformance.
/// Use `ActionEntryRef` only as an `unowned` reference to an existing `GtkActionEntry` instance.
///
/// `GtkActionEntry` structs are used with `gtk_action_group_add_actions()` to
/// construct actions.
public struct ActionEntryRef: ActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionEntry>?) {
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

    /// Reference intialiser for a related type that implements `ActionEntryProtocol`
    @inlinable init<T: ActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionEntry` type acts as an owner of an underlying `GtkActionEntry` instance.
/// It provides the methods that can operate on this data type through `ActionEntryProtocol` conformance.
/// Use `ActionEntry` as a strong reference or owner of a `GtkActionEntry` instance.
///
/// `GtkActionEntry` structs are used with `gtk_action_group_add_actions()` to
/// construct actions.
open class ActionEntry: ActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkActionEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkActionEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkActionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkActionEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ActionEntryProtocol`
    /// `GtkActionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionEntryProtocol`
    @inlinable public init<T: ActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkActionEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkActionEntry`.
    deinit {
        // no reference counting for GtkActionEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkActionEntry, cannot ref(_ptr)
    }



}

// MARK: no ActionEntry properties

// MARK: ActionEntry has no signals// MARK: ActionEntry Record: ActionEntryProtocol extension (methods and fields)
public extension ActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActionEntry>! { return ptr?.assumingMemoryBound(to: GtkActionEntry.self) }


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
    ///  for translation, see `gtk_action_group_set_translation_domain()`. If
    ///  `label` is `nil`, the label of the stock item with id `stock_id` is used.
    @inlinable var label: UnsafePointer<gchar>! {
        /// The label for the action. This field should typically be marked
        ///  for translation, see `gtk_action_group_set_translation_domain()`. If
        ///  `label` is `nil`, the label of the stock item with id `stock_id` is used.
        get {
            let rv = _ptr.pointee.label
            return rv
        }
        /// The label for the action. This field should typically be marked
        ///  for translation, see `gtk_action_group_set_translation_domain()`. If
        ///  `label` is `nil`, the label of the stock item with id `stock_id` is used.
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

}



/// Metatype/GType declaration for ActionGroup
public extension ActionGroupClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_action_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkActionGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkActionGroupClass.self) }
    
    static var metatype: GtkActionGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: ActionGroupClassRef? { ActionGroupClassRef(metatypePointer) }
    
    
}

// MARK: - ActionGroupClass Record

/// The `ActionGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkActionGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionGroupClass`.
/// Alternatively, use `ActionGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkActionGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionGroupClass>! { get }

}

/// The `ActionGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkActionGroupClass` instance.
/// It exposes methods that can operate on this data type through `ActionGroupClassProtocol` conformance.
/// Use `ActionGroupClassRef` only as an `unowned` reference to an existing `GtkActionGroupClass` instance.
///

public struct ActionGroupClassRef: ActionGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkActionGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `ActionGroupClassProtocol`
    @inlinable init<T: ActionGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionGroupClass Record: ActionGroupClassProtocol extension (methods and fields)
public extension ActionGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActionGroupClass>! { return ptr?.assumingMemoryBound(to: GtkActionGroupClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getAction is unavailable because get_action is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Actionable
public extension ActionableInterfaceRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_actionable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkActionableInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkActionableInterface.self) }
    
    static var metatype: GtkActionableInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ActionableInterfaceRef? { ActionableInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ActionableInterface Record

/// The `ActionableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkActionableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionableInterface`.
/// Alternatively, use `ActionableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The interface vtable for `GtkActionable`.
public protocol ActionableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkActionableInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkActionableInterface>! { get }

}

/// The `ActionableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkActionableInterface` instance.
/// It exposes methods that can operate on this data type through `ActionableInterfaceProtocol` conformance.
/// Use `ActionableInterfaceRef` only as an `unowned` reference to an existing `GtkActionableInterface` instance.
///
/// The interface vtable for `GtkActionable`.
public struct ActionableInterfaceRef: ActionableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkActionableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionableInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionableInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionableInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionableInterface>?) {
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

    /// Reference intialiser for a related type that implements `ActionableInterfaceProtocol`
    @inlinable init<T: ActionableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionableInterface Record: ActionableInterfaceProtocol extension (methods and fields)
public extension ActionableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionableInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActionableInterface>! { return ptr?.assumingMemoryBound(to: GtkActionableInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var getActionName is unavailable because get_action_name is void

    // var setActionName is unavailable because set_action_name is void

    // var getActionTargetValue is unavailable because get_action_target_value is void

    // var setActionTargetValue is unavailable because set_action_target_value is void

}



/// Metatype/GType declaration for Activatable
public extension ActivatableIfaceRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_activatable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkActivatableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkActivatableIface.self) }
    
    static var metatype: GtkActivatableIface? { metatypePointer?.pointee } 
    
    static var wrapper: ActivatableIfaceRef? { ActivatableIfaceRef(metatypePointer) }
    
    
}

// MARK: - ActivatableIface Record

/// The `ActivatableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkActivatableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActivatableIface`.
/// Alternatively, use `ActivatableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// > This method can be called with a `nil` action at times.
public protocol ActivatableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkActivatableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActivatableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkActivatableIface>! { get }

}

/// The `ActivatableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkActivatableIface` instance.
/// It exposes methods that can operate on this data type through `ActivatableIfaceProtocol` conformance.
/// Use `ActivatableIfaceRef` only as an `unowned` reference to an existing `GtkActivatableIface` instance.
///
/// > This method can be called with a `nil` action at times.
public struct ActivatableIfaceRef: ActivatableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkActivatableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActivatableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActivatableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActivatableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActivatableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActivatableIface>?) {
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

    /// Reference intialiser for a related type that implements `ActivatableIfaceProtocol`
    @inlinable init<T: ActivatableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActivatableIface Record: ActivatableIfaceProtocol extension (methods and fields)
public extension ActivatableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActivatableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActivatableIface>! { return ptr?.assumingMemoryBound(to: GtkActivatableIface.self) }


    // var gIface is unavailable because g_iface is private

    // var update is unavailable because update is void

    // var syncActionProperties is unavailable because sync_action_properties is void

}



/// Metatype/GType declaration for Adjustment
public extension AdjustmentClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_adjustment_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAdjustmentClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAdjustmentClass.self) }
    
    static var metatype: GtkAdjustmentClass? { metatypePointer?.pointee } 
    
    static var wrapper: AdjustmentClassRef? { AdjustmentClassRef(metatypePointer) }
    
    
}

// MARK: - AdjustmentClass Record

/// The `AdjustmentClassProtocol` protocol exposes the methods and properties of an underlying `GtkAdjustmentClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AdjustmentClass`.
/// Alternatively, use `AdjustmentClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AdjustmentClassProtocol {
        /// Untyped pointer to the underlying `GtkAdjustmentClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAdjustmentClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAdjustmentClass>! { get }

}

/// The `AdjustmentClassRef` type acts as a lightweight Swift reference to an underlying `GtkAdjustmentClass` instance.
/// It exposes methods that can operate on this data type through `AdjustmentClassProtocol` conformance.
/// Use `AdjustmentClassRef` only as an `unowned` reference to an existing `GtkAdjustmentClass` instance.
///

public struct AdjustmentClassRef: AdjustmentClassProtocol {
        /// Untyped pointer to the underlying `GtkAdjustmentClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AdjustmentClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAdjustmentClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAdjustmentClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAdjustmentClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAdjustmentClass>?) {
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

    /// Reference intialiser for a related type that implements `AdjustmentClassProtocol`
    @inlinable init<T: AdjustmentClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AdjustmentClass Record: AdjustmentClassProtocol extension (methods and fields)
public extension AdjustmentClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAdjustmentClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAdjustmentClass>! { return ptr?.assumingMemoryBound(to: GtkAdjustmentClass.self) }


    @inlinable var parentClass: GInitiallyUnownedClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var valueChanged is unavailable because value_changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Alignment
public extension AlignmentClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_alignment_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAlignmentClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAlignmentClass.self) }
    
    static var metatype: GtkAlignmentClass? { metatypePointer?.pointee } 
    
    static var wrapper: AlignmentClassRef? { AlignmentClassRef(metatypePointer) }
    
    
}

// MARK: - AlignmentClass Record

/// The `AlignmentClassProtocol` protocol exposes the methods and properties of an underlying `GtkAlignmentClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AlignmentClass`.
/// Alternatively, use `AlignmentClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AlignmentClassProtocol {
        /// Untyped pointer to the underlying `GtkAlignmentClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAlignmentClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAlignmentClass>! { get }

}

/// The `AlignmentClassRef` type acts as a lightweight Swift reference to an underlying `GtkAlignmentClass` instance.
/// It exposes methods that can operate on this data type through `AlignmentClassProtocol` conformance.
/// Use `AlignmentClassRef` only as an `unowned` reference to an existing `GtkAlignmentClass` instance.
///

public struct AlignmentClassRef: AlignmentClassProtocol {
        /// Untyped pointer to the underlying `GtkAlignmentClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AlignmentClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAlignmentClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAlignmentClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAlignmentClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAlignmentClass>?) {
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

    /// Reference intialiser for a related type that implements `AlignmentClassProtocol`
    @inlinable init<T: AlignmentClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AlignmentClass Record: AlignmentClassProtocol extension (methods and fields)
public extension AlignmentClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAlignmentClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAlignmentClass>! { return ptr?.assumingMemoryBound(to: GtkAlignmentClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
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



/// Metatype/GType declaration for AppChooserButton
public extension AppChooserButtonClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_app_chooser_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAppChooserButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAppChooserButtonClass.self) }
    
    static var metatype: GtkAppChooserButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: AppChooserButtonClassRef? { AppChooserButtonClassRef(metatypePointer) }
    
    
}

// MARK: - AppChooserButtonClass Record

/// The `AppChooserButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserButtonClass`.
/// Alternatively, use `AppChooserButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooserButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserButtonClass>! { get }

}

/// The `AppChooserButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserButtonClass` instance.
/// It exposes methods that can operate on this data type through `AppChooserButtonClassProtocol` conformance.
/// Use `AppChooserButtonClassRef` only as an `unowned` reference to an existing `GtkAppChooserButtonClass` instance.
///

public struct AppChooserButtonClassRef: AppChooserButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooserButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooserButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserButtonClassProtocol`
    @inlinable init<T: AppChooserButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AppChooserButtonClass Record: AppChooserButtonClassProtocol extension (methods and fields)
public extension AppChooserButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAppChooserButtonClass>! { return ptr?.assumingMemoryBound(to: GtkAppChooserButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkComboBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var customItemActivated is unavailable because custom_item_activated is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for AppChooserDialog
public extension AppChooserDialogClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_app_chooser_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAppChooserDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAppChooserDialogClass.self) }
    
    static var metatype: GtkAppChooserDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: AppChooserDialogClassRef? { AppChooserDialogClassRef(metatypePointer) }
    
    
}

// MARK: - AppChooserDialogClass Record

/// The `AppChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserDialogClass`.
/// Alternatively, use `AppChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserDialogClass>! { get }

}

/// The `AppChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `AppChooserDialogClassProtocol` conformance.
/// Use `AppChooserDialogClassRef` only as an `unowned` reference to an existing `GtkAppChooserDialogClass` instance.
///

public struct AppChooserDialogClassRef: AppChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooserDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooserDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserDialogClassProtocol`
    @inlinable init<T: AppChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AppChooserDialogClass Record: AppChooserDialogClassProtocol extension (methods and fields)
public extension AppChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAppChooserDialogClass>! { return ptr?.assumingMemoryBound(to: GtkAppChooserDialogClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkDialogClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for AppChooserWidget
public extension AppChooserWidgetClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_app_chooser_widget_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAppChooserWidgetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAppChooserWidgetClass.self) }
    
    static var metatype: GtkAppChooserWidgetClass? { metatypePointer?.pointee } 
    
    static var wrapper: AppChooserWidgetClassRef? { AppChooserWidgetClassRef(metatypePointer) }
    
    
}

// MARK: - AppChooserWidgetClass Record

/// The `AppChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserWidgetClass`.
/// Alternatively, use `AppChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserWidgetClass>! { get }

}

/// The `AppChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `AppChooserWidgetClassProtocol` conformance.
/// Use `AppChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkAppChooserWidgetClass` instance.
///

public struct AppChooserWidgetClassRef: AppChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooserWidgetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooserWidgetClass>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserWidgetClassProtocol`
    @inlinable init<T: AppChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AppChooserWidgetClass Record: AppChooserWidgetClassProtocol extension (methods and fields)
public extension AppChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserWidgetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAppChooserWidgetClass>! { return ptr?.assumingMemoryBound(to: GtkAppChooserWidgetClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var applicationSelected is unavailable because application_selected is void

    // var applicationActivated is unavailable because application_activated is void

    // var populatePopup is unavailable because populate_popup is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for Application
public extension ApplicationClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_application_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkApplicationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkApplicationClass.self) }
    
    static var metatype: GtkApplicationClass? { metatypePointer?.pointee } 
    
    static var wrapper: ApplicationClassRef? { ApplicationClassRef(metatypePointer) }
    
    
}

// MARK: - ApplicationClass Record

/// The `ApplicationClassProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationClass`.
/// Alternatively, use `ApplicationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkApplicationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationClass>! { get }

}

/// The `ApplicationClassRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationClassProtocol` conformance.
/// Use `ApplicationClassRef` only as an `unowned` reference to an existing `GtkApplicationClass` instance.
///

public struct ApplicationClassRef: ApplicationClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkApplicationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkApplicationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkApplicationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkApplicationClass>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationClassProtocol`
    @inlinable init<T: ApplicationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ApplicationClass Record: ApplicationClassProtocol extension (methods and fields)
public extension ApplicationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkApplicationClass>! { return ptr?.assumingMemoryBound(to: GtkApplicationClass.self) }


    /// The parent class.
    @inlinable var parentClass: GApplicationClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var windowAdded is unavailable because window_added is void

    // var windowRemoved is unavailable because window_removed is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ApplicationWindow
public extension ApplicationWindowClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_application_window_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkApplicationWindowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkApplicationWindowClass.self) }
    
    static var metatype: GtkApplicationWindowClass? { metatypePointer?.pointee } 
    
    static var wrapper: ApplicationWindowClassRef? { ApplicationWindowClassRef(metatypePointer) }
    
    
}

// MARK: - ApplicationWindowClass Record

/// The `ApplicationWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationWindowClass`.
/// Alternatively, use `ApplicationWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationWindowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkApplicationWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationWindowClass>! { get }

}

/// The `ApplicationWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationWindowClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationWindowClassProtocol` conformance.
/// Use `ApplicationWindowClassRef` only as an `unowned` reference to an existing `GtkApplicationWindowClass` instance.
///

public struct ApplicationWindowClassRef: ApplicationWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkApplicationWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkApplicationWindowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkApplicationWindowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkApplicationWindowClass>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationWindowClassProtocol`
    @inlinable init<T: ApplicationWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ApplicationWindowClass Record: ApplicationWindowClassProtocol extension (methods and fields)
public extension ApplicationWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationWindowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkApplicationWindowClass>! { return ptr?.assumingMemoryBound(to: GtkApplicationWindowClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWindowClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ArrowAccessible
public extension ArrowAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_arrow_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkArrowAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkArrowAccessibleClass.self) }
    
    static var metatype: GtkArrowAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ArrowAccessibleClassRef? { ArrowAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ArrowAccessibleClass Record

/// The `ArrowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkArrowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrowAccessibleClass`.
/// Alternatively, use `ArrowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ArrowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkArrowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkArrowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowAccessibleClass>! { get }

}

/// The `ArrowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkArrowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ArrowAccessibleClassProtocol` conformance.
/// Use `ArrowAccessibleClassRef` only as an `unowned` reference to an existing `GtkArrowAccessibleClass` instance.
///

public struct ArrowAccessibleClassRef: ArrowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkArrowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ArrowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkArrowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkArrowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkArrowAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkArrowAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ArrowAccessibleClassProtocol`
    @inlinable init<T: ArrowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ArrowAccessibleClass Record: ArrowAccessibleClassProtocol extension (methods and fields)
public extension ArrowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrowAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkArrowAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkArrowAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Arrow
public extension ArrowClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_arrow_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkArrowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkArrowClass.self) }
    
    static var metatype: GtkArrowClass? { metatypePointer?.pointee } 
    
    static var wrapper: ArrowClassRef? { ArrowClassRef(metatypePointer) }
    
    
}

// MARK: - ArrowClass Record

/// The `ArrowClassProtocol` protocol exposes the methods and properties of an underlying `GtkArrowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrowClass`.
/// Alternatively, use `ArrowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ArrowClassProtocol {
        /// Untyped pointer to the underlying `GtkArrowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkArrowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowClass>! { get }

}

/// The `ArrowClassRef` type acts as a lightweight Swift reference to an underlying `GtkArrowClass` instance.
/// It exposes methods that can operate on this data type through `ArrowClassProtocol` conformance.
/// Use `ArrowClassRef` only as an `unowned` reference to an existing `GtkArrowClass` instance.
///

public struct ArrowClassRef: ArrowClassProtocol {
        /// Untyped pointer to the underlying `GtkArrowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ArrowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkArrowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkArrowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkArrowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkArrowClass>?) {
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

    /// Reference intialiser for a related type that implements `ArrowClassProtocol`
    @inlinable init<T: ArrowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ArrowClass Record: ArrowClassProtocol extension (methods and fields)
public extension ArrowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkArrowClass>! { return ptr?.assumingMemoryBound(to: GtkArrowClass.self) }


    @inlinable var parentClass: GtkMiscClass {
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



/// Metatype/GType declaration for AspectFrame
public extension AspectFrameClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_aspect_frame_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAspectFrameClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAspectFrameClass.self) }
    
    static var metatype: GtkAspectFrameClass? { metatypePointer?.pointee } 
    
    static var wrapper: AspectFrameClassRef? { AspectFrameClassRef(metatypePointer) }
    
    
}

// MARK: - AspectFrameClass Record

/// The `AspectFrameClassProtocol` protocol exposes the methods and properties of an underlying `GtkAspectFrameClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AspectFrameClass`.
/// Alternatively, use `AspectFrameClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AspectFrameClassProtocol {
        /// Untyped pointer to the underlying `GtkAspectFrameClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAspectFrameClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAspectFrameClass>! { get }

}

/// The `AspectFrameClassRef` type acts as a lightweight Swift reference to an underlying `GtkAspectFrameClass` instance.
/// It exposes methods that can operate on this data type through `AspectFrameClassProtocol` conformance.
/// Use `AspectFrameClassRef` only as an `unowned` reference to an existing `GtkAspectFrameClass` instance.
///

public struct AspectFrameClassRef: AspectFrameClassProtocol {
        /// Untyped pointer to the underlying `GtkAspectFrameClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AspectFrameClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAspectFrameClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAspectFrameClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAspectFrameClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAspectFrameClass>?) {
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

    /// Reference intialiser for a related type that implements `AspectFrameClassProtocol`
    @inlinable init<T: AspectFrameClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AspectFrameClass Record: AspectFrameClassProtocol extension (methods and fields)
public extension AspectFrameClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAspectFrameClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAspectFrameClass>! { return ptr?.assumingMemoryBound(to: GtkAspectFrameClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkFrameClass {
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



/// Metatype/GType declaration for Assistant
public extension AssistantClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_assistant_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAssistantClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAssistantClass.self) }
    
    static var metatype: GtkAssistantClass? { metatypePointer?.pointee } 
    
    static var wrapper: AssistantClassRef? { AssistantClassRef(metatypePointer) }
    
    
}

// MARK: - AssistantClass Record

/// The `AssistantClassProtocol` protocol exposes the methods and properties of an underlying `GtkAssistantClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AssistantClass`.
/// Alternatively, use `AssistantClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AssistantClassProtocol {
        /// Untyped pointer to the underlying `GtkAssistantClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAssistantClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAssistantClass>! { get }

}

/// The `AssistantClassRef` type acts as a lightweight Swift reference to an underlying `GtkAssistantClass` instance.
/// It exposes methods that can operate on this data type through `AssistantClassProtocol` conformance.
/// Use `AssistantClassRef` only as an `unowned` reference to an existing `GtkAssistantClass` instance.
///

public struct AssistantClassRef: AssistantClassProtocol {
        /// Untyped pointer to the underlying `GtkAssistantClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AssistantClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAssistantClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAssistantClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAssistantClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAssistantClass>?) {
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

    /// Reference intialiser for a related type that implements `AssistantClassProtocol`
    @inlinable init<T: AssistantClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AssistantClass Record: AssistantClassProtocol extension (methods and fields)
public extension AssistantClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAssistantClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAssistantClass>! { return ptr?.assumingMemoryBound(to: GtkAssistantClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWindowClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var prepare is unavailable because prepare is void

    // var apply is unavailable because apply is void

    // var close is unavailable because close is void

    // var cancel is unavailable because cancel is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

}



/// Metatype/GType declaration for Bin
public extension BinClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_bin_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBinClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBinClass.self) }
    
    static var metatype: GtkBinClass? { metatypePointer?.pointee } 
    
    static var wrapper: BinClassRef? { BinClassRef(metatypePointer) }
    
    
}

// MARK: - BinClass Record

/// The `BinClassProtocol` protocol exposes the methods and properties of an underlying `GtkBinClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BinClass`.
/// Alternatively, use `BinClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BinClassProtocol {
        /// Untyped pointer to the underlying `GtkBinClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBinClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBinClass>! { get }

}

/// The `BinClassRef` type acts as a lightweight Swift reference to an underlying `GtkBinClass` instance.
/// It exposes methods that can operate on this data type through `BinClassProtocol` conformance.
/// Use `BinClassRef` only as an `unowned` reference to an existing `GtkBinClass` instance.
///

public struct BinClassRef: BinClassProtocol {
        /// Untyped pointer to the underlying `GtkBinClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BinClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBinClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBinClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBinClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBinClass>?) {
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

    /// Reference intialiser for a related type that implements `BinClassProtocol`
    @inlinable init<T: BinClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BinClass Record: BinClassProtocol extension (methods and fields)
public extension BinClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBinClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBinClass>! { return ptr?.assumingMemoryBound(to: GtkBinClass.self) }


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



