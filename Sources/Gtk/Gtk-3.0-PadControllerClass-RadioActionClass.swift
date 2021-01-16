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

/// Metatype/GType declaration for PadController
public extension PadControllerClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_pad_controller_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPadControllerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPadControllerClass.self) }
    
    static var metatype: GtkPadControllerClass? { metatypePointer?.pointee } 
    
    static var wrapper: PadControllerClassRef? { PadControllerClassRef(metatypePointer) }
    
    
}

// MARK: - PadControllerClass Record

/// The `PadControllerClassProtocol` protocol exposes the methods and properties of an underlying `GtkPadControllerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PadControllerClass`.
/// Alternatively, use `PadControllerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PadControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkPadControllerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPadControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPadControllerClass>! { get }

}

/// The `PadControllerClassRef` type acts as a lightweight Swift reference to an underlying `GtkPadControllerClass` instance.
/// It exposes methods that can operate on this data type through `PadControllerClassProtocol` conformance.
/// Use `PadControllerClassRef` only as an `unowned` reference to an existing `GtkPadControllerClass` instance.
///

public struct PadControllerClassRef: PadControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkPadControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PadControllerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPadControllerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPadControllerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPadControllerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPadControllerClass>?) {
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

    /// Reference intialiser for a related type that implements `PadControllerClassProtocol`
    @inlinable init<T: PadControllerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PadControllerClass Record: PadControllerClassProtocol extension (methods and fields)
public extension PadControllerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPadControllerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPadControllerClass>! { return ptr?.assumingMemoryBound(to: GtkPadControllerClass.self) }



}



// MARK: - PageRange Record

/// The `PageRangeProtocol` protocol exposes the methods and properties of an underlying `GtkPageRange` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PageRange`.
/// Alternatively, use `PageRangeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// See also `gtk_print_settings_set_page_ranges()`.
public protocol PageRangeProtocol {
        /// Untyped pointer to the underlying `GtkPageRange` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPageRange` instance.
    var _ptr: UnsafeMutablePointer<GtkPageRange>! { get }

}

/// The `PageRangeRef` type acts as a lightweight Swift reference to an underlying `GtkPageRange` instance.
/// It exposes methods that can operate on this data type through `PageRangeProtocol` conformance.
/// Use `PageRangeRef` only as an `unowned` reference to an existing `GtkPageRange` instance.
///
/// See also `gtk_print_settings_set_page_ranges()`.
public struct PageRangeRef: PageRangeProtocol {
        /// Untyped pointer to the underlying `GtkPageRange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PageRangeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPageRange>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPageRange>?) {
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

    /// Reference intialiser for a related type that implements `PageRangeProtocol`
    @inlinable init<T: PageRangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PageRange` type acts as an owner of an underlying `GtkPageRange` instance.
/// It provides the methods that can operate on this data type through `PageRangeProtocol` conformance.
/// Use `PageRange` as a strong reference or owner of a `GtkPageRange` instance.
///
/// See also `gtk_print_settings_set_page_ranges()`.
open class PageRange: PageRangeProtocol {
        /// Untyped pointer to the underlying `GtkPageRange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPageRange>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPageRange>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkPageRange` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PageRangeProtocol`
    /// `GtkPageRange` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PageRangeProtocol`
    @inlinable public init<T: PageRangeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkPageRange`.
    deinit {
        // no reference counting for GtkPageRange, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }



}

// MARK: no PageRange properties

// MARK: PageRange has no signals// MARK: PageRange Record: PageRangeProtocol extension (methods and fields)
public extension PageRangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPageRange` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPageRange>! { return ptr?.assumingMemoryBound(to: GtkPageRange.self) }


    /// start of page range.
    @inlinable var start: gint {
        /// start of page range.
        get {
            let rv = _ptr.pointee.start
            return rv
        }
        /// start of page range.
         set {
            _ptr.pointee.start = newValue
        }
    }

    /// end of page range.
    @inlinable var end: gint {
        /// end of page range.
        get {
            let rv = _ptr.pointee.end
            return rv
        }
        /// end of page range.
         set {
            _ptr.pointee.end = newValue
        }
    }

}



/// Metatype/GType declaration for PanedAccessible
public extension PanedAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_paned_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPanedAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPanedAccessibleClass.self) }
    
    static var metatype: GtkPanedAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: PanedAccessibleClassRef? { PanedAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - PanedAccessibleClass Record

/// The `PanedAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkPanedAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PanedAccessibleClass`.
/// Alternatively, use `PanedAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PanedAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkPanedAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPanedAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedAccessibleClass>! { get }

}

/// The `PanedAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkPanedAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `PanedAccessibleClassProtocol` conformance.
/// Use `PanedAccessibleClassRef` only as an `unowned` reference to an existing `GtkPanedAccessibleClass` instance.
///

public struct PanedAccessibleClassRef: PanedAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkPanedAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PanedAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPanedAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPanedAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPanedAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPanedAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `PanedAccessibleClassProtocol`
    @inlinable init<T: PanedAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PanedAccessibleClass Record: PanedAccessibleClassProtocol extension (methods and fields)
public extension PanedAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPanedAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPanedAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkPanedAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Paned
public extension PanedClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_paned_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPanedClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPanedClass.self) }
    
    static var metatype: GtkPanedClass? { metatypePointer?.pointee } 
    
    static var wrapper: PanedClassRef? { PanedClassRef(metatypePointer) }
    
    
}

// MARK: - PanedClass Record

/// The `PanedClassProtocol` protocol exposes the methods and properties of an underlying `GtkPanedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PanedClass`.
/// Alternatively, use `PanedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PanedClassProtocol {
        /// Untyped pointer to the underlying `GtkPanedClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedClass>! { get }

}

/// The `PanedClassRef` type acts as a lightweight Swift reference to an underlying `GtkPanedClass` instance.
/// It exposes methods that can operate on this data type through `PanedClassProtocol` conformance.
/// Use `PanedClassRef` only as an `unowned` reference to an existing `GtkPanedClass` instance.
///

public struct PanedClassRef: PanedClassProtocol {
        /// Untyped pointer to the underlying `GtkPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PanedClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPanedClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPanedClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPanedClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPanedClass>?) {
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

    /// Reference intialiser for a related type that implements `PanedClassProtocol`
    @inlinable init<T: PanedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PanedClass Record: PanedClassProtocol extension (methods and fields)
public extension PanedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPanedClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPanedClass>! { return ptr?.assumingMemoryBound(to: GtkPanedClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var cycleChildFocus is unavailable because cycle_child_focus is void

    // var toggleHandleFocus is unavailable because toggle_handle_focus is void

    // var moveHandle is unavailable because move_handle is void

    // var cycleHandleFocus is unavailable because cycle_handle_focus is void

    // var acceptPosition is unavailable because accept_position is void

    // var cancelPosition is unavailable because cancel_position is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - PaperSize Record

/// The `PaperSizeProtocol` protocol exposes the methods and properties of an underlying `GtkPaperSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PaperSize`.
/// Alternatively, use `PaperSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
/// 
/// Printing support has been added in GTK+ 2.10.
public protocol PaperSizeProtocol {
        /// Untyped pointer to the underlying `GtkPaperSize` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPaperSize` instance.
    var paper_size_ptr: UnsafeMutablePointer<GtkPaperSize>! { get }

}

/// The `PaperSizeRef` type acts as a lightweight Swift reference to an underlying `GtkPaperSize` instance.
/// It exposes methods that can operate on this data type through `PaperSizeProtocol` conformance.
/// Use `PaperSizeRef` only as an `unowned` reference to an existing `GtkPaperSize` instance.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
/// 
/// Printing support has been added in GTK+ 2.10.
public struct PaperSizeRef: PaperSizeProtocol {
        /// Untyped pointer to the underlying `GtkPaperSize` instance.
    /// For type-safe access, use the generated, typed pointer `paper_size_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PaperSizeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPaperSize>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPaperSize>?) {
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

    /// Reference intialiser for a related type that implements `PaperSizeProtocol`
    @inlinable init<T: PaperSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPaperSize` object by parsing a
    /// [PWG 5101.1-2002](ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf)
    /// paper name.
    /// 
    /// If `name` is `nil`, the default paper size is returned,
    /// see `gtk_paper_size_get_default()`.
    @inlinable init( name: UnsafePointer<gchar>? = nil) {
        let rv = gtk_paper_size_new(name)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable init(custom name: UnsafePointer<gchar>!, displayName: UnsafePointer<gchar>!, width: Double, height: Double, unit: GtkUnit) {
        let rv = gtk_paper_size_new_custom(name, displayName, gdouble(width), gdouble(height), unit)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_paper_size_new_from_gvariant(variant.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable init(ipp ippName: UnsafePointer<gchar>!, width: Double, height: Double) {
        let rv = gtk_paper_size_new_from_ipp(ippName, gdouble(width), gdouble(height))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<gchar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable init(ppd ppdName: UnsafePointer<gchar>!, ppdDisplayName: UnsafePointer<gchar>!, width: Double, height: Double) {
        let rv = gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, gdouble(width), gdouble(height))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable static func new(custom name: UnsafePointer<gchar>!, displayName: UnsafePointer<gchar>!, width: Double, height: Double, unit: GtkUnit) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_custom(name, displayName, gdouble(width), gdouble(height), unit))) else { return nil }
        return rv
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_gvariant(variant.variant_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable static func newFrom(ipp ippName: UnsafePointer<gchar>!, width: Double, height: Double) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_ipp(ippName, gdouble(width), gdouble(height)))) else { return nil }
        return rv
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<gchar>? = nil) throws -> PaperSizeRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable static func newFrom(ppd ppdName: UnsafePointer<gchar>!, ppdDisplayName: UnsafePointer<gchar>!, width: Double, height: Double) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, gdouble(width), gdouble(height)))) else { return nil }
        return rv
    }
}

/// The `PaperSize` type acts as an owner of an underlying `GtkPaperSize` instance.
/// It provides the methods that can operate on this data type through `PaperSizeProtocol` conformance.
/// Use `PaperSize` as a strong reference or owner of a `GtkPaperSize` instance.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
/// 
/// Printing support has been added in GTK+ 2.10.
open class PaperSize: PaperSizeProtocol {
        /// Untyped pointer to the underlying `GtkPaperSize` instance.
    /// For type-safe access, use the generated, typed pointer `paper_size_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPaperSize>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPaperSize>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkPaperSize` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Reference intialiser for a related type that implements `PaperSizeProtocol`
    /// `GtkPaperSize` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PaperSizeProtocol`
    @inlinable public init<T: PaperSizeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Do-nothing destructor for `GtkPaperSize`.
    deinit {
        // no reference counting for GtkPaperSize, cannot unref(paper_size_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Creates a new `GtkPaperSize` object by parsing a
    /// [PWG 5101.1-2002](ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf)
    /// paper name.
    /// 
    /// If `name` is `nil`, the default paper size is returned,
    /// see `gtk_paper_size_get_default()`.
    @inlinable public init( name: UnsafePointer<gchar>? = nil) {
        let rv = gtk_paper_size_new(name)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable public init(custom name: UnsafePointer<gchar>!, displayName: UnsafePointer<gchar>!, width: Double, height: Double, unit: GtkUnit) {
        let rv = gtk_paper_size_new_custom(name, displayName, gdouble(width), gdouble(height), unit)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable public init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_paper_size_new_from_gvariant(variant.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public init(ipp ippName: UnsafePointer<gchar>!, width: Double, height: Double) {
        let rv = gtk_paper_size_new_from_ipp(ippName, gdouble(width), gdouble(height))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable public init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<gchar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public init(ppd ppdName: UnsafePointer<gchar>!, ppdDisplayName: UnsafePointer<gchar>!, width: Double, height: Double) {
        let rv = gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, gdouble(width), gdouble(height))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable public static func new(custom name: UnsafePointer<gchar>!, displayName: UnsafePointer<gchar>!, width: Double, height: Double, unit: GtkUnit) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_custom(name, displayName, gdouble(width), gdouble(height), unit))) else { return nil }
        return rv
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable public static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_gvariant(variant.variant_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public static func newFrom(ipp ippName: UnsafePointer<gchar>!, width: Double, height: Double) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_ipp(ippName, gdouble(width), gdouble(height)))) else { return nil }
        return rv
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable public static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<gchar>? = nil) throws -> PaperSize! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public static func newFrom(ppd ppdName: UnsafePointer<gchar>!, ppdDisplayName: UnsafePointer<gchar>!, width: Double, height: Double) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, gdouble(width), gdouble(height)))) else { return nil }
        return rv
    }

}

// MARK: no PaperSize properties

// MARK: PaperSize has no signals// MARK: PaperSize Record: PaperSizeProtocol extension (methods and fields)
public extension PaperSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPaperSize` instance.
    @inlinable var paper_size_ptr: UnsafeMutablePointer<GtkPaperSize>! { return ptr?.assumingMemoryBound(to: GtkPaperSize.self) }

    /// Copies an existing `GtkPaperSize`.
    @inlinable func copy() -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_copy(paper_size_ptr))) else { return nil }
        return rv
    }

    /// Free the given `GtkPaperSize` object.
    @inlinable func free() {
        gtk_paper_size_free(paper_size_ptr)
    
    }

    /// Gets the default bottom margin for the `GtkPaperSize`.
    @inlinable func getDefaultBottomMargin(unit: GtkUnit) -> Double {
        let rv = Double(gtk_paper_size_get_default_bottom_margin(paper_size_ptr, unit))
        return rv
    }

    /// Gets the default left margin for the `GtkPaperSize`.
    @inlinable func getDefaultLeftMargin(unit: GtkUnit) -> Double {
        let rv = Double(gtk_paper_size_get_default_left_margin(paper_size_ptr, unit))
        return rv
    }

    /// Gets the default right margin for the `GtkPaperSize`.
    @inlinable func getDefaultRightMargin(unit: GtkUnit) -> Double {
        let rv = Double(gtk_paper_size_get_default_right_margin(paper_size_ptr, unit))
        return rv
    }

    /// Gets the default top margin for the `GtkPaperSize`.
    @inlinable func getDefaultTopMargin(unit: GtkUnit) -> Double {
        let rv = Double(gtk_paper_size_get_default_top_margin(paper_size_ptr, unit))
        return rv
    }

    /// Gets the human-readable name of the `GtkPaperSize`.
    @inlinable func getDisplayName() -> String! {
        let rv = gtk_paper_size_get_display_name(paper_size_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the paper height of the `GtkPaperSize`, in
    /// units of `unit`.
    @inlinable func getHeight(unit: GtkUnit) -> Double {
        let rv = Double(gtk_paper_size_get_height(paper_size_ptr, unit))
        return rv
    }

    /// Gets the name of the `GtkPaperSize`.
    @inlinable func getName() -> String! {
        let rv = gtk_paper_size_get_name(paper_size_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the PPD name of the `GtkPaperSize`, which
    /// may be `nil`.
    @inlinable func getPpdName() -> String! {
        let rv = gtk_paper_size_get_ppd_name(paper_size_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the paper width of the `GtkPaperSize`, in
    /// units of `unit`.
    @inlinable func getWidth(unit: GtkUnit) -> Double {
        let rv = Double(gtk_paper_size_get_width(paper_size_ptr, unit))
        return rv
    }

    /// Compares two `GtkPaperSize` objects.
    @inlinable func isEqual<PaperSizeT: PaperSizeProtocol>(size2: PaperSizeT) -> Bool {
        let rv = ((gtk_paper_size_is_equal(paper_size_ptr, size2.paper_size_ptr)) != 0)
        return rv
    }

    /// Changes the dimensions of a `size` to `width` x `height`.
    @inlinable func setSize(width: Double, height: Double, unit: GtkUnit) {
        gtk_paper_size_set_size(paper_size_ptr, gdouble(width), gdouble(height), unit)
    
    }

    /// Serialize a paper size to an a{sv} variant.
    @inlinable func toGvariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_paper_size_to_gvariant(paper_size_ptr))
        return rv
    }

    /// This function adds the paper size from `size` to `key_file`.
    @inlinable func to<KeyFileT: GLib.KeyFileProtocol>(keyFile: KeyFileT, groupName: UnsafePointer<gchar>!) {
        gtk_paper_size_to_key_file(paper_size_ptr, keyFile.key_file_ptr, groupName)
    
    }
    /// Gets the human-readable name of the `GtkPaperSize`.
    @inlinable var displayName: String! {
        /// Gets the human-readable name of the `GtkPaperSize`.
        get {
            let rv = gtk_paper_size_get_display_name(paper_size_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns `true` if `size` is not a standard paper size.
    @inlinable var isCustom: Bool {
        /// Returns `true` if `size` is not a standard paper size.
        get {
            let rv = ((gtk_paper_size_is_custom(paper_size_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if `size` is an IPP standard paper size.
    @inlinable var isIpp: Bool {
        /// Returns `true` if `size` is an IPP standard paper size.
        get {
            let rv = ((gtk_paper_size_is_ipp(paper_size_ptr)) != 0)
            return rv
        }
    }

    /// Gets the name of the `GtkPaperSize`.
    @inlinable var name: String! {
        /// Gets the name of the `GtkPaperSize`.
        get {
            let rv = gtk_paper_size_get_name(paper_size_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the PPD name of the `GtkPaperSize`, which
    /// may be `nil`.
    @inlinable var ppdName: String! {
        /// Gets the PPD name of the `GtkPaperSize`, which
        /// may be `nil`.
        get {
            let rv = gtk_paper_size_get_ppd_name(paper_size_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



/// Metatype/GType declaration for PlacesSidebar
public extension PlacesSidebarClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_places_sidebar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPlacesSidebarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPlacesSidebarClass.self) }
    
    static var metatype: GtkPlacesSidebarClass? { metatypePointer?.pointee } 
    
    static var wrapper: PlacesSidebarClassRef? { PlacesSidebarClassRef(metatypePointer) }
    
    
}

// MARK: - PlacesSidebarClass Record

/// The `PlacesSidebarClassProtocol` protocol exposes the methods and properties of an underlying `GtkPlacesSidebarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PlacesSidebarClass`.
/// Alternatively, use `PlacesSidebarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PlacesSidebarClassProtocol {
        /// Untyped pointer to the underlying `GtkPlacesSidebarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPlacesSidebarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPlacesSidebarClass>! { get }

}

/// The `PlacesSidebarClassRef` type acts as a lightweight Swift reference to an underlying `GtkPlacesSidebarClass` instance.
/// It exposes methods that can operate on this data type through `PlacesSidebarClassProtocol` conformance.
/// Use `PlacesSidebarClassRef` only as an `unowned` reference to an existing `GtkPlacesSidebarClass` instance.
///

public struct PlacesSidebarClassRef: PlacesSidebarClassProtocol {
        /// Untyped pointer to the underlying `GtkPlacesSidebarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PlacesSidebarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPlacesSidebarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPlacesSidebarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPlacesSidebarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPlacesSidebarClass>?) {
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

    /// Reference intialiser for a related type that implements `PlacesSidebarClassProtocol`
    @inlinable init<T: PlacesSidebarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PlacesSidebarClass Record: PlacesSidebarClassProtocol extension (methods and fields)
public extension PlacesSidebarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPlacesSidebarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPlacesSidebarClass>! { return ptr?.assumingMemoryBound(to: GtkPlacesSidebarClass.self) }



}



/// Metatype/GType declaration for PlugAccessible
public extension PlugAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_plug_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPlugAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPlugAccessibleClass.self) }
    
    static var metatype: GtkPlugAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: PlugAccessibleClassRef? { PlugAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - PlugAccessibleClass Record

/// The `PlugAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkPlugAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PlugAccessibleClass`.
/// Alternatively, use `PlugAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PlugAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkPlugAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPlugAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPlugAccessibleClass>! { get }

}

/// The `PlugAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkPlugAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `PlugAccessibleClassProtocol` conformance.
/// Use `PlugAccessibleClassRef` only as an `unowned` reference to an existing `GtkPlugAccessibleClass` instance.
///

public struct PlugAccessibleClassRef: PlugAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkPlugAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PlugAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPlugAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPlugAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPlugAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPlugAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `PlugAccessibleClassProtocol`
    @inlinable init<T: PlugAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlugAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlugAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlugAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlugAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlugAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PlugAccessibleClass Record: PlugAccessibleClassProtocol extension (methods and fields)
public extension PlugAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPlugAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPlugAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkPlugAccessibleClass.self) }


    @inlinable var parentClass: GtkWindowAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for PopoverAccessible
public extension PopoverAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_popover_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPopoverAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPopoverAccessibleClass.self) }
    
    static var metatype: GtkPopoverAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: PopoverAccessibleClassRef? { PopoverAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - PopoverAccessibleClass Record

/// The `PopoverAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverAccessibleClass`.
/// Alternatively, use `PopoverAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPopoverAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverAccessibleClass>! { get }

}

/// The `PopoverAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `PopoverAccessibleClassProtocol` conformance.
/// Use `PopoverAccessibleClassRef` only as an `unowned` reference to an existing `GtkPopoverAccessibleClass` instance.
///

public struct PopoverAccessibleClassRef: PopoverAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopoverAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPopoverAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPopoverAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPopoverAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPopoverAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `PopoverAccessibleClassProtocol`
    @inlinable init<T: PopoverAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PopoverAccessibleClass Record: PopoverAccessibleClassProtocol extension (methods and fields)
public extension PopoverAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPopoverAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkPopoverAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Popover
public extension PopoverClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_popover_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPopoverClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPopoverClass.self) }
    
    static var metatype: GtkPopoverClass? { metatypePointer?.pointee } 
    
    static var wrapper: PopoverClassRef? { PopoverClassRef(metatypePointer) }
    
    
}

// MARK: - PopoverClass Record

/// The `PopoverClassProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverClass`.
/// Alternatively, use `PopoverClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPopoverClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverClass>! { get }

}

/// The `PopoverClassRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverClass` instance.
/// It exposes methods that can operate on this data type through `PopoverClassProtocol` conformance.
/// Use `PopoverClassRef` only as an `unowned` reference to an existing `GtkPopoverClass` instance.
///

public struct PopoverClassRef: PopoverClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopoverClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPopoverClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPopoverClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPopoverClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPopoverClass>?) {
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

    /// Reference intialiser for a related type that implements `PopoverClassProtocol`
    @inlinable init<T: PopoverClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PopoverClass Record: PopoverClassProtocol extension (methods and fields)
public extension PopoverClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPopoverClass>! { return ptr?.assumingMemoryBound(to: GtkPopoverClass.self) }


    @inlinable var parentClass: GtkBinClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var closed is unavailable because closed is void

    // var reserved is unavailable because reserved is private

}



/// Metatype/GType declaration for PopoverMenu
public extension PopoverMenuClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_popover_menu_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPopoverMenuClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPopoverMenuClass.self) }
    
    static var metatype: GtkPopoverMenuClass? { metatypePointer?.pointee } 
    
    static var wrapper: PopoverMenuClassRef? { PopoverMenuClassRef(metatypePointer) }
    
    
}

// MARK: - PopoverMenuClass Record

/// The `PopoverMenuClassProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverMenuClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverMenuClass`.
/// Alternatively, use `PopoverMenuClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverMenuClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverMenuClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPopoverMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverMenuClass>! { get }

}

/// The `PopoverMenuClassRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverMenuClass` instance.
/// It exposes methods that can operate on this data type through `PopoverMenuClassProtocol` conformance.
/// Use `PopoverMenuClassRef` only as an `unowned` reference to an existing `GtkPopoverMenuClass` instance.
///

public struct PopoverMenuClassRef: PopoverMenuClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopoverMenuClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPopoverMenuClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPopoverMenuClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPopoverMenuClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPopoverMenuClass>?) {
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

    /// Reference intialiser for a related type that implements `PopoverMenuClassProtocol`
    @inlinable init<T: PopoverMenuClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PopoverMenuClass Record: PopoverMenuClassProtocol extension (methods and fields)
public extension PopoverMenuClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverMenuClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPopoverMenuClass>! { return ptr?.assumingMemoryBound(to: GtkPopoverMenuClass.self) }


    @inlinable var parentClass: GtkPopoverClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var reserved is unavailable because reserved is private

}



/// Metatype/GType declaration for PrintOperation
public extension PrintOperationClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_print_operation_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPrintOperationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPrintOperationClass.self) }
    
    static var metatype: GtkPrintOperationClass? { metatypePointer?.pointee } 
    
    static var wrapper: PrintOperationClassRef? { PrintOperationClassRef(metatypePointer) }
    
    
}

// MARK: - PrintOperationClass Record

/// The `PrintOperationClassProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationClass`.
/// Alternatively, use `PrintOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationClass>! { get }

}

/// The `PrintOperationClassRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationClass` instance.
/// It exposes methods that can operate on this data type through `PrintOperationClassProtocol` conformance.
/// Use `PrintOperationClassRef` only as an `unowned` reference to an existing `GtkPrintOperationClass` instance.
///

public struct PrintOperationClassRef: PrintOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintOperationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintOperationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintOperationClass>?) {
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

    /// Reference intialiser for a related type that implements `PrintOperationClassProtocol`
    @inlinable init<T: PrintOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PrintOperationClass Record: PrintOperationClassProtocol extension (methods and fields)
public extension PrintOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPrintOperationClass>! { return ptr?.assumingMemoryBound(to: GtkPrintOperationClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var done is unavailable because done is void

    // var beginPrint is unavailable because begin_print is void

    // var paginate is unavailable because paginate is void

    // var requestPageSetup is unavailable because request_page_setup is void

    // var drawPage is unavailable because draw_page is void

    // var endPrint is unavailable because end_print is void

    // var statusChanged is unavailable because status_changed is void

    // var createCustomWidget is unavailable because create_custom_widget is void

    // var customWidgetApply is unavailable because custom_widget_apply is void

    // var preview is unavailable because preview is void

    // var updateCustomWidget is unavailable because update_custom_widget is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for PrintOperationPreview
public extension PrintOperationPreviewIfaceRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_print_operation_preview_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPrintOperationPreviewIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPrintOperationPreviewIface.self) }
    
    static var metatype: GtkPrintOperationPreviewIface? { metatypePointer?.pointee } 
    
    static var wrapper: PrintOperationPreviewIfaceRef? { PrintOperationPreviewIfaceRef(metatypePointer) }
    
    
}

// MARK: - PrintOperationPreviewIface Record

/// The `PrintOperationPreviewIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationPreviewIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationPreviewIface`.
/// Alternatively, use `PrintOperationPreviewIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationPreviewIfaceProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationPreviewIface>! { get }

}

/// The `PrintOperationPreviewIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationPreviewIface` instance.
/// It exposes methods that can operate on this data type through `PrintOperationPreviewIfaceProtocol` conformance.
/// Use `PrintOperationPreviewIfaceRef` only as an `unowned` reference to an existing `GtkPrintOperationPreviewIface` instance.
///

public struct PrintOperationPreviewIfaceRef: PrintOperationPreviewIfaceProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintOperationPreviewIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintOperationPreviewIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintOperationPreviewIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintOperationPreviewIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintOperationPreviewIface>?) {
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

    /// Reference intialiser for a related type that implements `PrintOperationPreviewIfaceProtocol`
    @inlinable init<T: PrintOperationPreviewIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PrintOperationPreviewIface Record: PrintOperationPreviewIfaceProtocol extension (methods and fields)
public extension PrintOperationPreviewIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationPreviewIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPrintOperationPreviewIface>! { return ptr?.assumingMemoryBound(to: GtkPrintOperationPreviewIface.self) }


    @inlinable var gIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var ready is unavailable because ready is void

    // var gotPageSize is unavailable because got_page_size is void

    // var renderPage is unavailable because render_page is void

    // var isSelected is unavailable because is_selected is void

    // var endPreview is unavailable because end_preview is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for ProgressBarAccessible
public extension ProgressBarAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_progress_bar_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkProgressBarAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkProgressBarAccessibleClass.self) }
    
    static var metatype: GtkProgressBarAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ProgressBarAccessibleClassRef? { ProgressBarAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ProgressBarAccessibleClass Record

/// The `ProgressBarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBarAccessibleClass`.
/// Alternatively, use `ProgressBarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProgressBarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkProgressBarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkProgressBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarAccessibleClass>! { get }

}

/// The `ProgressBarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ProgressBarAccessibleClassProtocol` conformance.
/// Use `ProgressBarAccessibleClassRef` only as an `unowned` reference to an existing `GtkProgressBarAccessibleClass` instance.
///

public struct ProgressBarAccessibleClassRef: ProgressBarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkProgressBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProgressBarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkProgressBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkProgressBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkProgressBarAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkProgressBarAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ProgressBarAccessibleClassProtocol`
    @inlinable init<T: ProgressBarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ProgressBarAccessibleClass Record: ProgressBarAccessibleClassProtocol extension (methods and fields)
public extension ProgressBarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBarAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkProgressBarAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkProgressBarAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ProgressBar
public extension ProgressBarClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_progress_bar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkProgressBarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkProgressBarClass.self) }
    
    static var metatype: GtkProgressBarClass? { metatypePointer?.pointee } 
    
    static var wrapper: ProgressBarClassRef? { ProgressBarClassRef(metatypePointer) }
    
    
}

// MARK: - ProgressBarClass Record

/// The `ProgressBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBarClass`.
/// Alternatively, use `ProgressBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProgressBarClassProtocol {
        /// Untyped pointer to the underlying `GtkProgressBarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkProgressBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarClass>! { get }

}

/// The `ProgressBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBarClass` instance.
/// It exposes methods that can operate on this data type through `ProgressBarClassProtocol` conformance.
/// Use `ProgressBarClassRef` only as an `unowned` reference to an existing `GtkProgressBarClass` instance.
///

public struct ProgressBarClassRef: ProgressBarClassProtocol {
        /// Untyped pointer to the underlying `GtkProgressBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProgressBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkProgressBarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkProgressBarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkProgressBarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkProgressBarClass>?) {
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

    /// Reference intialiser for a related type that implements `ProgressBarClassProtocol`
    @inlinable init<T: ProgressBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ProgressBarClass Record: ProgressBarClassProtocol extension (methods and fields)
public extension ProgressBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkProgressBarClass>! { return ptr?.assumingMemoryBound(to: GtkProgressBarClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
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



/// Metatype/GType declaration for RadioAction
public extension RadioActionClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_radio_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRadioActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRadioActionClass.self) }
    
    static var metatype: GtkRadioActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: RadioActionClassRef? { RadioActionClassRef(metatypePointer) }
    
    
}

// MARK: - RadioActionClass Record

/// The `RadioActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioActionClass`.
/// Alternatively, use `RadioActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioActionClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionClass>! { get }

}

/// The `RadioActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioActionClass` instance.
/// It exposes methods that can operate on this data type through `RadioActionClassProtocol` conformance.
/// Use `RadioActionClassRef` only as an `unowned` reference to an existing `GtkRadioActionClass` instance.
///

public struct RadioActionClassRef: RadioActionClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioActionClass>?) {
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

    /// Reference intialiser for a related type that implements `RadioActionClassProtocol`
    @inlinable init<T: RadioActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RadioActionClass Record: RadioActionClassProtocol extension (methods and fields)
public extension RadioActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRadioActionClass>! { return ptr?.assumingMemoryBound(to: GtkRadioActionClass.self) }


    @inlinable var parentClass: GtkToggleActionClass {
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



