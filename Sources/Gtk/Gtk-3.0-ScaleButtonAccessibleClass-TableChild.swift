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

/// Metatype/GType declaration for ScaleButtonAccessible
public extension ScaleButtonAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ScaleButtonAccessible`
    static var metatypeReference: GType { gtk_scale_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScaleButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScaleButtonAccessibleClass.self) }
    
    static var metatype: GtkScaleButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScaleButtonAccessibleClassRef? { ScaleButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ScaleButtonAccessibleClass Record

/// The `ScaleButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleButtonAccessibleClass`.
/// Alternatively, use `ScaleButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScaleButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ScaleButtonAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ScaleButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ScaleButtonAccessibleClassProtocol` conformance.
/// Use `ScaleButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkScaleButtonAccessibleClass` instance.
///

public struct ScaleButtonAccessibleClassRef: ScaleButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScaleButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScaleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScaleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScaleButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScaleButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ScaleButtonAccessibleClassProtocol`
    @inlinable init<T: ScaleButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScaleButtonAccessibleClass Record: ScaleButtonAccessibleClassProtocol extension (methods and fields)
public extension ScaleButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScaleButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkScaleButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkButtonAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

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

    /// Required Initialiser for types conforming to `ScaleButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
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


    @inlinable var parentClass: GtkButtonClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var valueChanged is unavailable because value_changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Scale
public extension ScaleClassRef {
    
    /// This getter returns the GLib type identifier registered for `Scale`
    static var metatypeReference: GType { gtk_scale_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScaleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScaleClass.self) }
    
    static var metatype: GtkScaleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScaleClassRef? { ScaleClassRef(metatypePointer) }
    
    
}

// MARK: - ScaleClass Record

/// The `ScaleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleClass`.
/// Alternatively, use `ScaleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleClass>! { get }

    /// Required Initialiser for types conforming to `ScaleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ScaleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleClass` instance.
/// It exposes methods that can operate on this data type through `ScaleClassProtocol` conformance.
/// Use `ScaleClassRef` only as an `unowned` reference to an existing `GtkScaleClass` instance.
///

public struct ScaleClassRef: ScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScaleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScaleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScaleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScaleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScaleClass>?) {
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

    /// Reference intialiser for a related type that implements `ScaleClassProtocol`
    @inlinable init<T: ScaleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScaleClass Record: ScaleClassProtocol extension (methods and fields)
public extension ScaleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScaleClass>! { return ptr?.assumingMemoryBound(to: GtkScaleClass.self) }


    @inlinable var parentClass: GtkRangeClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var formatValue is unavailable because format_value is void

    // var drawValue is unavailable because draw_value is void

    // var getLayoutOffsets is unavailable because get_layout_offsets is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Scrollable
public extension ScrollableInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Scrollable`
    static var metatypeReference: GType { gtk_scrollable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScrollableInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScrollableInterface.self) }
    
    static var metatype: GtkScrollableInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ScrollableInterfaceRef? { ScrollableInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ScrollableInterface Record

/// The `ScrollableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkScrollableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrollableInterface`.
/// Alternatively, use `ScrollableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrollableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkScrollableInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrollableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkScrollableInterface>! { get }

    /// Required Initialiser for types conforming to `ScrollableInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ScrollableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkScrollableInterface` instance.
/// It exposes methods that can operate on this data type through `ScrollableInterfaceProtocol` conformance.
/// Use `ScrollableInterfaceRef` only as an `unowned` reference to an existing `GtkScrollableInterface` instance.
///

public struct ScrollableInterfaceRef: ScrollableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkScrollableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrollableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrollableInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrollableInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrollableInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrollableInterface>?) {
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

    /// Reference intialiser for a related type that implements `ScrollableInterfaceProtocol`
    @inlinable init<T: ScrollableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScrollableInterface Record: ScrollableInterfaceProtocol extension (methods and fields)
public extension ScrollableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollableInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScrollableInterface>! { return ptr?.assumingMemoryBound(to: GtkScrollableInterface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

    // var getBorder is unavailable because get_border is void

}



/// Metatype/GType declaration for Scrollbar
public extension ScrollbarClassRef {
    
    /// This getter returns the GLib type identifier registered for `Scrollbar`
    static var metatypeReference: GType { gtk_scrollbar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScrollbarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScrollbarClass.self) }
    
    static var metatype: GtkScrollbarClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScrollbarClassRef? { ScrollbarClassRef(metatypePointer) }
    
    
}

// MARK: - ScrollbarClass Record

/// The `ScrollbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkScrollbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrollbarClass`.
/// Alternatively, use `ScrollbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrollbarClassProtocol {
        /// Untyped pointer to the underlying `GtkScrollbarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrollbarClass>! { get }

    /// Required Initialiser for types conforming to `ScrollbarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ScrollbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkScrollbarClass` instance.
/// It exposes methods that can operate on this data type through `ScrollbarClassProtocol` conformance.
/// Use `ScrollbarClassRef` only as an `unowned` reference to an existing `GtkScrollbarClass` instance.
///

public struct ScrollbarClassRef: ScrollbarClassProtocol {
        /// Untyped pointer to the underlying `GtkScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrollbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrollbarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrollbarClass>?) {
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

    /// Reference intialiser for a related type that implements `ScrollbarClassProtocol`
    @inlinable init<T: ScrollbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScrollbarClass Record: ScrollbarClassProtocol extension (methods and fields)
public extension ScrollbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollbarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScrollbarClass>! { return ptr?.assumingMemoryBound(to: GtkScrollbarClass.self) }


    @inlinable var parentClass: GtkRangeClass {
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



/// Metatype/GType declaration for ScrolledWindowAccessible
public extension ScrolledWindowAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ScrolledWindowAccessible`
    static var metatypeReference: GType { gtk_scrolled_window_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScrolledWindowAccessibleClass.self) }
    
    static var metatype: GtkScrolledWindowAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScrolledWindowAccessibleClassRef? { ScrolledWindowAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ScrolledWindowAccessibleClass Record

/// The `ScrolledWindowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScrolledWindowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrolledWindowAccessibleClass`.
/// Alternatively, use `ScrolledWindowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrolledWindowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkScrolledWindowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrolledWindowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ScrolledWindowAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ScrolledWindowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScrolledWindowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ScrolledWindowAccessibleClassProtocol` conformance.
/// Use `ScrolledWindowAccessibleClassRef` only as an `unowned` reference to an existing `GtkScrolledWindowAccessibleClass` instance.
///

public struct ScrolledWindowAccessibleClassRef: ScrolledWindowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkScrolledWindowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrolledWindowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrolledWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrolledWindowAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ScrolledWindowAccessibleClassProtocol`
    @inlinable init<T: ScrolledWindowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScrolledWindowAccessibleClass Record: ScrolledWindowAccessibleClassProtocol extension (methods and fields)
public extension ScrolledWindowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrolledWindowAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkScrolledWindowAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ScrolledWindow
public extension ScrolledWindowClassRef {
    
    /// This getter returns the GLib type identifier registered for `ScrolledWindow`
    static var metatypeReference: GType { gtk_scrolled_window_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScrolledWindowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScrolledWindowClass.self) }
    
    static var metatype: GtkScrolledWindowClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScrolledWindowClassRef? { ScrolledWindowClassRef(metatypePointer) }
    
    
}

// MARK: - ScrolledWindowClass Record

/// The `ScrolledWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkScrolledWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrolledWindowClass`.
/// Alternatively, use `ScrolledWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrolledWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkScrolledWindowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrolledWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowClass>! { get }

    /// Required Initialiser for types conforming to `ScrolledWindowClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ScrolledWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkScrolledWindowClass` instance.
/// It exposes methods that can operate on this data type through `ScrolledWindowClassProtocol` conformance.
/// Use `ScrolledWindowClassRef` only as an `unowned` reference to an existing `GtkScrolledWindowClass` instance.
///

public struct ScrolledWindowClassRef: ScrolledWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkScrolledWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrolledWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrolledWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrolledWindowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrolledWindowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrolledWindowClass>?) {
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

    /// Reference intialiser for a related type that implements `ScrolledWindowClassProtocol`
    @inlinable init<T: ScrolledWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScrolledWindowClass Record: ScrolledWindowClassProtocol extension (methods and fields)
public extension ScrolledWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrolledWindowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScrolledWindowClass>! { return ptr?.assumingMemoryBound(to: GtkScrolledWindowClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    @inlinable var scrollbarSpacing: gint {
        get {
            let rv = _ptr.pointee.scrollbar_spacing
            return rv
        }
    }

    // var scrollChild is unavailable because scroll_child is void

    // var moveFocusOut is unavailable because move_focus_out is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for SearchBar
public extension SearchBarClassRef {
    
    /// This getter returns the GLib type identifier registered for `SearchBar`
    static var metatypeReference: GType { gtk_search_bar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSearchBarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSearchBarClass.self) }
    
    static var metatype: GtkSearchBarClass? { metatypePointer?.pointee } 
    
    static var wrapper: SearchBarClassRef? { SearchBarClassRef(metatypePointer) }
    
    
}

// MARK: - SearchBarClass Record

/// The `SearchBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkSearchBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SearchBarClass`.
/// Alternatively, use `SearchBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SearchBarClassProtocol {
        /// Untyped pointer to the underlying `GtkSearchBarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSearchBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSearchBarClass>! { get }

    /// Required Initialiser for types conforming to `SearchBarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SearchBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkSearchBarClass` instance.
/// It exposes methods that can operate on this data type through `SearchBarClassProtocol` conformance.
/// Use `SearchBarClassRef` only as an `unowned` reference to an existing `GtkSearchBarClass` instance.
///

public struct SearchBarClassRef: SearchBarClassProtocol {
        /// Untyped pointer to the underlying `GtkSearchBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SearchBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSearchBarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSearchBarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSearchBarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSearchBarClass>?) {
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

    /// Reference intialiser for a related type that implements `SearchBarClassProtocol`
    @inlinable init<T: SearchBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SearchBarClass Record: SearchBarClassProtocol extension (methods and fields)
public extension SearchBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSearchBarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSearchBarClass>! { return ptr?.assumingMemoryBound(to: GtkSearchBarClass.self) }


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



/// Metatype/GType declaration for SearchEntry
public extension SearchEntryClassRef {
    
    /// This getter returns the GLib type identifier registered for `SearchEntry`
    static var metatypeReference: GType { gtk_search_entry_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSearchEntryClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSearchEntryClass.self) }
    
    static var metatype: GtkSearchEntryClass? { metatypePointer?.pointee } 
    
    static var wrapper: SearchEntryClassRef? { SearchEntryClassRef(metatypePointer) }
    
    
}

// MARK: - SearchEntryClass Record

/// The `SearchEntryClassProtocol` protocol exposes the methods and properties of an underlying `GtkSearchEntryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SearchEntryClass`.
/// Alternatively, use `SearchEntryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SearchEntryClassProtocol {
        /// Untyped pointer to the underlying `GtkSearchEntryClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSearchEntryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSearchEntryClass>! { get }

    /// Required Initialiser for types conforming to `SearchEntryClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SearchEntryClassRef` type acts as a lightweight Swift reference to an underlying `GtkSearchEntryClass` instance.
/// It exposes methods that can operate on this data type through `SearchEntryClassProtocol` conformance.
/// Use `SearchEntryClassRef` only as an `unowned` reference to an existing `GtkSearchEntryClass` instance.
///

public struct SearchEntryClassRef: SearchEntryClassProtocol {
        /// Untyped pointer to the underlying `GtkSearchEntryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SearchEntryClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSearchEntryClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSearchEntryClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSearchEntryClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSearchEntryClass>?) {
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

    /// Reference intialiser for a related type that implements `SearchEntryClassProtocol`
    @inlinable init<T: SearchEntryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SearchEntryClass Record: SearchEntryClassProtocol extension (methods and fields)
public extension SearchEntryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSearchEntryClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSearchEntryClass>! { return ptr?.assumingMemoryBound(to: GtkSearchEntryClass.self) }


    @inlinable var parentClass: GtkEntryClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var searchChanged is unavailable because search_changed is void

    // var nextMatch is unavailable because next_match is void

    // var previousMatch is unavailable because previous_match is void

    // var stopSearch is unavailable because stop_search is void

}



// MARK: - SelectionData Record

/// The `SelectionDataProtocol` protocol exposes the methods and properties of an underlying `GtkSelectionData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SelectionData`.
/// Alternatively, use `SelectionDataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SelectionDataProtocol {
        /// Untyped pointer to the underlying `GtkSelectionData` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSelectionData` instance.
    var selection_data_ptr: UnsafeMutablePointer<GtkSelectionData>! { get }

    /// Required Initialiser for types conforming to `SelectionDataProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SelectionDataRef` type acts as a lightweight Swift reference to an underlying `GtkSelectionData` instance.
/// It exposes methods that can operate on this data type through `SelectionDataProtocol` conformance.
/// Use `SelectionDataRef` only as an `unowned` reference to an existing `GtkSelectionData` instance.
///

public struct SelectionDataRef: SelectionDataProtocol {
        /// Untyped pointer to the underlying `GtkSelectionData` instance.
    /// For type-safe access, use the generated, typed pointer `selection_data_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SelectionDataRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSelectionData>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSelectionData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSelectionData>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSelectionData>?) {
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

    /// Reference intialiser for a related type that implements `SelectionDataProtocol`
    @inlinable init<T: SelectionDataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SelectionData` type acts as an owner of an underlying `GtkSelectionData` instance.
/// It provides the methods that can operate on this data type through `SelectionDataProtocol` conformance.
/// Use `SelectionData` as a strong reference or owner of a `GtkSelectionData` instance.
///

open class SelectionData: SelectionDataProtocol {
        /// Untyped pointer to the underlying `GtkSelectionData` instance.
    /// For type-safe access, use the generated, typed pointer `selection_data_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkSelectionData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkSelectionData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionData` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkSelectionData>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkSelectionData>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkSelectionData` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SelectionData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkSelectionData>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkSelectionData, cannot ref(selection_data_ptr)
    }

    /// Reference intialiser for a related type that implements `SelectionDataProtocol`
    /// `GtkSelectionData` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SelectionDataProtocol`
    @inlinable public init<T: SelectionDataProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkSelectionData, cannot ref(selection_data_ptr)
    }

    /// Do-nothing destructor for `GtkSelectionData`.
    deinit {
        // no reference counting for GtkSelectionData, cannot unref(selection_data_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkSelectionData, cannot ref(selection_data_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkSelectionData, cannot ref(selection_data_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkSelectionData, cannot ref(selection_data_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkSelectionData, cannot ref(selection_data_ptr)
    }



}

// MARK: no SelectionData properties

// MARK: no SelectionData signals

// MARK: SelectionData has no signals
// MARK: SelectionData Record: SelectionDataProtocol extension (methods and fields)
public extension SelectionDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSelectionData` instance.
    @inlinable var selection_data_ptr: UnsafeMutablePointer<GtkSelectionData>! { return ptr?.assumingMemoryBound(to: GtkSelectionData.self) }

    /// Makes a copy of a `GtkSelectionData-struct` and its data.
    @inlinable func copy() -> SelectionDataRef! {
        guard let rv = SelectionDataRef(gconstpointer: gconstpointer(gtk_selection_data_copy(selection_data_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GtkSelectionData-struct` returned from
    /// `gtk_selection_data_copy()`.
    @inlinable func free() {
        gtk_selection_data_free(selection_data_ptr)
    
    }

    /// Retrieves the raw data of the selection.
    @inlinable func getData() -> String! {
        let rv = gtk_selection_data_get_data(selection_data_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the data type of the selection.
    @inlinable func getDataType() -> GdkAtom! {
        let rv = gtk_selection_data_get_data_type(selection_data_ptr)
        return rv
    }

    /// Retrieves the raw data of the selection along with its length.
    @inlinable func getDataWith(length: UnsafeMutablePointer<gint>!) -> String! {
        let rv = gtk_selection_data_get_data_with_length(selection_data_ptr, length).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the display of the selection.
    @inlinable func getDisplay() -> Gdk.DisplayRef! {
        let rv = Gdk.DisplayRef(gtk_selection_data_get_display(selection_data_ptr))
        return rv
    }

    /// Retrieves the format of the selection.
    @inlinable func getFormat() -> Int {
        let rv = Int(gtk_selection_data_get_format(selection_data_ptr))
        return rv
    }

    /// Retrieves the length of the raw data of the selection.
    @inlinable func getLength() -> Int {
        let rv = Int(gtk_selection_data_get_length(selection_data_ptr))
        return rv
    }

    /// Gets the contents of the selection data as a `GdkPixbuf`.
    @inlinable func getPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_selection_data_get_pixbuf(selection_data_ptr)))
        return rv
    }

    /// Retrieves the selection `GdkAtom` of the selection data.
    @inlinable func getSelection() -> GdkAtom! {
        let rv = gtk_selection_data_get_selection(selection_data_ptr)
        return rv
    }

    /// Retrieves the target of the selection.
    @inlinable func getTarget() -> GdkAtom! {
        let rv = gtk_selection_data_get_target(selection_data_ptr)
        return rv
    }

    /// Gets the contents of `selection_data` as an array of targets.
    /// This can be used to interpret the results of getting
    /// the standard TARGETS target that is always supplied for
    /// any selection.
    @inlinable func get(targets: UnsafeMutablePointer<UnsafeMutablePointer<GdkAtom?>?>!, nAtoms: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gtk_selection_data_get_targets(selection_data_ptr, targets, nAtoms)) != 0)
        return rv
    }

    /// Gets the contents of the selection data as a UTF-8 string.
    @inlinable func getText() -> String! {
        let rv = gtk_selection_data_get_text(selection_data_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of the selection data as array of URIs.
    @inlinable func getURIs() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gtk_selection_data_get_uris(selection_data_ptr)
        return rv
    }

    /// Stores new data into a `GtkSelectionData` object. Should
    /// only be called from a selection handler callback.
    /// Zero-terminates the stored data.
    @inlinable func set(type: GdkAtom, format: Int, data: UnsafePointer<guchar>!, length: Int) {
        gtk_selection_data_set(selection_data_ptr, type, gint(format), data, gint(length))
    
    }

    /// Sets the contents of the selection from a `GdkPixbuf`
    /// The pixbuf is converted to the form determined by
    /// `selection_data-`&gt;target.
    @inlinable func set<PixbufT: PixbufProtocol>(pixbuf: PixbufT) -> Bool {
        let rv = ((gtk_selection_data_set_pixbuf(selection_data_ptr, pixbuf.pixbuf_ptr)) != 0)
        return rv
    }

    /// Sets the contents of the selection from a UTF-8 encoded string.
    /// The string is converted to the form determined by
    /// `selection_data-`&gt;target.
    @inlinable func set(text str: UnsafePointer<gchar>!, len: Int) -> Bool {
        let rv = ((gtk_selection_data_set_text(selection_data_ptr, str, gint(len))) != 0)
        return rv
    }

    /// Sets the contents of the selection from a list of URIs.
    /// The string is converted to the form determined by
    /// `selection_data-`&gt;target.
    @inlinable func set(uris: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) -> Bool {
        let rv = ((gtk_selection_data_set_uris(selection_data_ptr, uris)) != 0)
        return rv
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide a `GdkPixbuf`.
    @inlinable func targetsIncludeImage(writable: Bool) -> Bool {
        let rv = ((gtk_selection_data_targets_include_image(selection_data_ptr, gboolean((writable) ? 1 : 0))) != 0)
        return rv
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide rich text.
    @inlinable func targetsIncludeRichText<TextBufferT: TextBufferProtocol>(buffer: TextBufferT) -> Bool {
        let rv = ((gtk_selection_data_targets_include_rich_text(selection_data_ptr, buffer.text_buffer_ptr)) != 0)
        return rv
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide text.
    @inlinable func targetsIncludeText() -> Bool {
        let rv = ((gtk_selection_data_targets_include_text(selection_data_ptr)) != 0)
        return rv
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide a list or URIs.
    @inlinable func targetsIncludeURI() -> Bool {
        let rv = ((gtk_selection_data_targets_include_uri(selection_data_ptr)) != 0)
        return rv
    }

    /// Obtains a `tree_model` and `path` from selection data of target type
    /// `GTK_TREE_MODEL_ROW`. Normally called from a drag_data_received handler.
    /// This function can only be used if `selection_data` originates from the same
    /// process that’s calling this function, because a pointer to the tree model
    /// is being passed around. If you aren’t in the same process, then you'll
    /// get memory corruption. In the `GtkTreeDragDest` drag_data_received handler,
    /// you can assume that selection data of type `GTK_TREE_MODEL_ROW` is
    /// in from the current process. The returned path must be freed with
    /// `gtk_tree_path_free()`.
    @inlinable func treeGetRowDragData(treeModel: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreeModel>?>? = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>? = nil) -> Bool {
        let rv = ((gtk_tree_get_row_drag_data(selection_data_ptr, treeModel, path)) != 0)
        return rv
    }

    /// Sets selection data of target type `GTK_TREE_MODEL_ROW`. Normally used
    /// in a drag_data_get handler.
    @inlinable func treeSetRowDragData<TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(treeModel: TreeModelT, path: TreePathT) -> Bool {
        let rv = ((gtk_tree_set_row_drag_data(selection_data_ptr, treeModel.tree_model_ptr, path.tree_path_ptr)) != 0)
        return rv
    }
    /// Retrieves the raw data of the selection.
    @inlinable var data: String! {
        /// Retrieves the raw data of the selection.
        get {
            let rv = gtk_selection_data_get_data(selection_data_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves the data type of the selection.
    @inlinable var dataType: GdkAtom! {
        /// Retrieves the data type of the selection.
        get {
            let rv = gtk_selection_data_get_data_type(selection_data_ptr)
            return rv
        }
    }

    /// Retrieves the display of the selection.
    @inlinable var display: Gdk.DisplayRef! {
        /// Retrieves the display of the selection.
        get {
            let rv = Gdk.DisplayRef(gtk_selection_data_get_display(selection_data_ptr))
            return rv
        }
    }

    /// Retrieves the format of the selection.
    @inlinable var format: Int {
        /// Retrieves the format of the selection.
        get {
            let rv = Int(gtk_selection_data_get_format(selection_data_ptr))
            return rv
        }
    }

    /// Retrieves the length of the raw data of the selection.
    @inlinable var length: Int {
        /// Retrieves the length of the raw data of the selection.
        get {
            let rv = Int(gtk_selection_data_get_length(selection_data_ptr))
            return rv
        }
    }

    /// Gets the contents of the selection data as a `GdkPixbuf`.
    @inlinable var pixbuf: PixbufRef! {
        /// Gets the contents of the selection data as a `GdkPixbuf`.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_selection_data_get_pixbuf(selection_data_ptr)))
            return rv
        }
        /// Sets the contents of the selection from a `GdkPixbuf`
        /// The pixbuf is converted to the form determined by
        /// `selection_data-`&gt;target.
        nonmutating set {
            _ = gtk_selection_data_set_pixbuf(selection_data_ptr, UnsafeMutablePointer<GdkPixbuf>(newValue?.pixbuf_ptr))
        }
    }

    /// Retrieves the selection `GdkAtom` of the selection data.
    @inlinable var selection: GdkAtom! {
        /// Retrieves the selection `GdkAtom` of the selection data.
        get {
            let rv = gtk_selection_data_get_selection(selection_data_ptr)
            return rv
        }
    }

    /// Retrieves the target of the selection.
    @inlinable var target: GdkAtom! {
        /// Retrieves the target of the selection.
        get {
            let rv = gtk_selection_data_get_target(selection_data_ptr)
            return rv
        }
    }

    /// Gets the contents of the selection data as a UTF-8 string.
    @inlinable var text: String! {
        /// Gets the contents of the selection data as a UTF-8 string.
        get {
            let rv = gtk_selection_data_get_text(selection_data_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the contents of the selection data as array of URIs.
    @inlinable var uris: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        /// Gets the contents of the selection data as array of URIs.
        get {
            let rv = gtk_selection_data_get_uris(selection_data_ptr)
            return rv
        }
        /// Sets the contents of the selection from a list of URIs.
        /// The string is converted to the form determined by
        /// `selection_data-`&gt;target.
        nonmutating set {
            _ = gtk_selection_data_set_uris(selection_data_ptr, newValue)
        }
    }


}



/// Metatype/GType declaration for Separator
public extension SeparatorClassRef {
    
    /// This getter returns the GLib type identifier registered for `Separator`
    static var metatypeReference: GType { gtk_separator_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSeparatorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSeparatorClass.self) }
    
    static var metatype: GtkSeparatorClass? { metatypePointer?.pointee } 
    
    static var wrapper: SeparatorClassRef? { SeparatorClassRef(metatypePointer) }
    
    
}

// MARK: - SeparatorClass Record

/// The `SeparatorClassProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorClass`.
/// Alternatively, use `SeparatorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorClassProtocol {
        /// Untyped pointer to the underlying `GtkSeparatorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorClass>! { get }

    /// Required Initialiser for types conforming to `SeparatorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SeparatorClassRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorClass` instance.
/// It exposes methods that can operate on this data type through `SeparatorClassProtocol` conformance.
/// Use `SeparatorClassRef` only as an `unowned` reference to an existing `GtkSeparatorClass` instance.
///

public struct SeparatorClassRef: SeparatorClassProtocol {
        /// Untyped pointer to the underlying `GtkSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SeparatorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSeparatorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSeparatorClass>?) {
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

    /// Reference intialiser for a related type that implements `SeparatorClassProtocol`
    @inlinable init<T: SeparatorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SeparatorClass Record: SeparatorClassProtocol extension (methods and fields)
public extension SeparatorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSeparatorClass>! { return ptr?.assumingMemoryBound(to: GtkSeparatorClass.self) }


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



/// Metatype/GType declaration for SeparatorMenuItem
public extension SeparatorMenuItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `SeparatorMenuItem`
    static var metatypeReference: GType { gtk_separator_menu_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSeparatorMenuItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSeparatorMenuItemClass.self) }
    
    static var metatype: GtkSeparatorMenuItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: SeparatorMenuItemClassRef? { SeparatorMenuItemClassRef(metatypePointer) }
    
    
}

// MARK: - SeparatorMenuItemClass Record

/// The `SeparatorMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorMenuItemClass`.
/// Alternatively, use `SeparatorMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkSeparatorMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSeparatorMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorMenuItemClass>! { get }

    /// Required Initialiser for types conforming to `SeparatorMenuItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SeparatorMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `SeparatorMenuItemClassProtocol` conformance.
/// Use `SeparatorMenuItemClassRef` only as an `unowned` reference to an existing `GtkSeparatorMenuItemClass` instance.
///

public struct SeparatorMenuItemClassRef: SeparatorMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkSeparatorMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SeparatorMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSeparatorMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSeparatorMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSeparatorMenuItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSeparatorMenuItemClass>?) {
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

    /// Reference intialiser for a related type that implements `SeparatorMenuItemClassProtocol`
    @inlinable init<T: SeparatorMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SeparatorMenuItemClass Record: SeparatorMenuItemClassProtocol extension (methods and fields)
public extension SeparatorMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorMenuItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSeparatorMenuItemClass>! { return ptr?.assumingMemoryBound(to: GtkSeparatorMenuItemClass.self) }


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



/// Metatype/GType declaration for SeparatorToolItem
public extension SeparatorToolItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `SeparatorToolItem`
    static var metatypeReference: GType { gtk_separator_tool_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSeparatorToolItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSeparatorToolItemClass.self) }
    
    static var metatype: GtkSeparatorToolItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: SeparatorToolItemClassRef? { SeparatorToolItemClassRef(metatypePointer) }
    
    
}

// MARK: - SeparatorToolItemClass Record

/// The `SeparatorToolItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorToolItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorToolItemClass`.
/// Alternatively, use `SeparatorToolItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorToolItemClassProtocol {
        /// Untyped pointer to the underlying `GtkSeparatorToolItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSeparatorToolItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorToolItemClass>! { get }

    /// Required Initialiser for types conforming to `SeparatorToolItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SeparatorToolItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorToolItemClass` instance.
/// It exposes methods that can operate on this data type through `SeparatorToolItemClassProtocol` conformance.
/// Use `SeparatorToolItemClassRef` only as an `unowned` reference to an existing `GtkSeparatorToolItemClass` instance.
///

public struct SeparatorToolItemClassRef: SeparatorToolItemClassProtocol {
        /// Untyped pointer to the underlying `GtkSeparatorToolItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SeparatorToolItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSeparatorToolItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSeparatorToolItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSeparatorToolItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSeparatorToolItemClass>?) {
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

    /// Reference intialiser for a related type that implements `SeparatorToolItemClassProtocol`
    @inlinable init<T: SeparatorToolItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SeparatorToolItemClass Record: SeparatorToolItemClassProtocol extension (methods and fields)
public extension SeparatorToolItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorToolItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSeparatorToolItemClass>! { return ptr?.assumingMemoryBound(to: GtkSeparatorToolItemClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkToolItemClass {
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



/// Metatype/GType declaration for Settings
public extension SettingsClassRef {
    
    /// This getter returns the GLib type identifier registered for `Settings`
    static var metatypeReference: GType { gtk_settings_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSettingsClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSettingsClass.self) }
    
    static var metatype: GtkSettingsClass? { metatypePointer?.pointee } 
    
    static var wrapper: SettingsClassRef? { SettingsClassRef(metatypePointer) }
    
    
}

// MARK: - SettingsClass Record

/// The `SettingsClassProtocol` protocol exposes the methods and properties of an underlying `GtkSettingsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsClass`.
/// Alternatively, use `SettingsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsClassProtocol {
        /// Untyped pointer to the underlying `GtkSettingsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSettingsClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsClass>! { get }

    /// Required Initialiser for types conforming to `SettingsClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SettingsClassRef` type acts as a lightweight Swift reference to an underlying `GtkSettingsClass` instance.
/// It exposes methods that can operate on this data type through `SettingsClassProtocol` conformance.
/// Use `SettingsClassRef` only as an `unowned` reference to an existing `GtkSettingsClass` instance.
///

public struct SettingsClassRef: SettingsClassProtocol {
        /// Untyped pointer to the underlying `GtkSettingsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSettingsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSettingsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSettingsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSettingsClass>?) {
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

    /// Reference intialiser for a related type that implements `SettingsClassProtocol`
    @inlinable init<T: SettingsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SettingsClass Record: SettingsClassProtocol extension (methods and fields)
public extension SettingsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSettingsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSettingsClass>! { return ptr?.assumingMemoryBound(to: GtkSettingsClass.self) }


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



// MARK: - SettingsValue Record

/// The `SettingsValueProtocol` protocol exposes the methods and properties of an underlying `GtkSettingsValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsValue`.
/// Alternatively, use `SettingsValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsValueProtocol {
        /// Untyped pointer to the underlying `GtkSettingsValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSettingsValue` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsValue>! { get }

    /// Required Initialiser for types conforming to `SettingsValueProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SettingsValueRef` type acts as a lightweight Swift reference to an underlying `GtkSettingsValue` instance.
/// It exposes methods that can operate on this data type through `SettingsValueProtocol` conformance.
/// Use `SettingsValueRef` only as an `unowned` reference to an existing `GtkSettingsValue` instance.
///

public struct SettingsValueRef: SettingsValueProtocol {
        /// Untyped pointer to the underlying `GtkSettingsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsValueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSettingsValue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSettingsValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSettingsValue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSettingsValue>?) {
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

    /// Reference intialiser for a related type that implements `SettingsValueProtocol`
    @inlinable init<T: SettingsValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsValue` type acts as an owner of an underlying `GtkSettingsValue` instance.
/// It provides the methods that can operate on this data type through `SettingsValueProtocol` conformance.
/// Use `SettingsValue` as a strong reference or owner of a `GtkSettingsValue` instance.
///

open class SettingsValue: SettingsValueProtocol {
        /// Untyped pointer to the underlying `GtkSettingsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkSettingsValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkSettingsValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsValue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkSettingsValue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkSettingsValue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkSettingsValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SettingsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkSettingsValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkSettingsValue, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SettingsValueProtocol`
    /// `GtkSettingsValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SettingsValueProtocol`
    @inlinable public init<T: SettingsValueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkSettingsValue, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkSettingsValue`.
    deinit {
        // no reference counting for GtkSettingsValue, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkSettingsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkSettingsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkSettingsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkSettingsValue, cannot ref(_ptr)
    }



}

// MARK: no SettingsValue properties

// MARK: no SettingsValue signals

// MARK: SettingsValue has no signals
// MARK: SettingsValue Record: SettingsValueProtocol extension (methods and fields)
public extension SettingsValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSettingsValue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSettingsValue>! { return ptr?.assumingMemoryBound(to: GtkSettingsValue.self) }


    /// Origin should be something like “filename:linenumber” for
    ///    rc files, or e.g. “XProperty” for other sources.
    @inlinable var origin: UnsafeMutablePointer<gchar>! {
        /// Origin should be something like “filename:linenumber” for
        ///    rc files, or e.g. “XProperty” for other sources.
        get {
            let rv = _ptr.pointee.origin
            return rv
        }
        /// Origin should be something like “filename:linenumber” for
        ///    rc files, or e.g. “XProperty” for other sources.
         set {
            _ptr.pointee.origin = newValue
        }
    }

    /// Valid types are LONG, DOUBLE and STRING corresponding to
    ///    the token parsed, or a GSTRING holding an unparsed statement
    @inlinable var value: GValue {
        /// Valid types are LONG, DOUBLE and STRING corresponding to
        ///    the token parsed, or a GSTRING holding an unparsed statement
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// Valid types are LONG, DOUBLE and STRING corresponding to
        ///    the token parsed, or a GSTRING holding an unparsed statement
         set {
            _ptr.pointee.value = newValue
        }
    }

}



/// Metatype/GType declaration for ShortcutLabel
public extension ShortcutLabelClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutLabel`
    static var metatypeReference: GType { gtk_shortcut_label_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutLabelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutLabelClass.self) }
    
    static var metatype: GtkShortcutLabelClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutLabelClassRef? { ShortcutLabelClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutLabelClass Record

/// The `ShortcutLabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutLabelClass`.
/// Alternatively, use `ShortcutLabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutLabelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutLabelClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutLabelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ShortcutLabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutLabelClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutLabelClassProtocol` conformance.
/// Use `ShortcutLabelClassRef` only as an `unowned` reference to an existing `GtkShortcutLabelClass` instance.
///

public struct ShortcutLabelClassRef: ShortcutLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutLabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutLabelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutLabelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutLabelClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutLabelClassProtocol`
    @inlinable init<T: ShortcutLabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutLabelClass Record: ShortcutLabelClassProtocol extension (methods and fields)
public extension ShortcutLabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutLabelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutLabelClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutLabelClass.self) }



}



/// Metatype/GType declaration for ShortcutsGroup
public extension ShortcutsGroupClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutsGroup`
    static var metatypeReference: GType { gtk_shortcuts_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutsGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutsGroupClass.self) }
    
    static var metatype: GtkShortcutsGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutsGroupClassRef? { ShortcutsGroupClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutsGroupClass Record

/// The `ShortcutsGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsGroupClass`.
/// Alternatively, use `ShortcutsGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutsGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsGroupClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutsGroupClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ShortcutsGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsGroupClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsGroupClassProtocol` conformance.
/// Use `ShortcutsGroupClassRef` only as an `unowned` reference to an existing `GtkShortcutsGroupClass` instance.
///

public struct ShortcutsGroupClassRef: ShortcutsGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutsGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutsGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutsGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutsGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutsGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutsGroupClassProtocol`
    @inlinable init<T: ShortcutsGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutsGroupClass Record: ShortcutsGroupClassProtocol extension (methods and fields)
public extension ShortcutsGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutsGroupClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutsGroupClass.self) }



}



/// Metatype/GType declaration for ShortcutsSection
public extension ShortcutsSectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutsSection`
    static var metatypeReference: GType { gtk_shortcuts_section_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutsSectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutsSectionClass.self) }
    
    static var metatype: GtkShortcutsSectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutsSectionClassRef? { ShortcutsSectionClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutsSectionClass Record

/// The `ShortcutsSectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsSectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsSectionClass`.
/// Alternatively, use `ShortcutsSectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsSectionClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsSectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutsSectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsSectionClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutsSectionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ShortcutsSectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsSectionClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsSectionClassProtocol` conformance.
/// Use `ShortcutsSectionClassRef` only as an `unowned` reference to an existing `GtkShortcutsSectionClass` instance.
///

public struct ShortcutsSectionClassRef: ShortcutsSectionClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsSectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutsSectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutsSectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutsSectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutsSectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutsSectionClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutsSectionClassProtocol`
    @inlinable init<T: ShortcutsSectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutsSectionClass Record: ShortcutsSectionClassProtocol extension (methods and fields)
public extension ShortcutsSectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsSectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutsSectionClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutsSectionClass.self) }



}



/// Metatype/GType declaration for ShortcutsShortcut
public extension ShortcutsShortcutClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutsShortcut`
    static var metatypeReference: GType { gtk_shortcuts_shortcut_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutsShortcutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutsShortcutClass.self) }
    
    static var metatype: GtkShortcutsShortcutClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutsShortcutClassRef? { ShortcutsShortcutClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutsShortcutClass Record

/// The `ShortcutsShortcutClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsShortcutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsShortcutClass`.
/// Alternatively, use `ShortcutsShortcutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsShortcutClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsShortcutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutsShortcutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsShortcutClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutsShortcutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ShortcutsShortcutClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsShortcutClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsShortcutClassProtocol` conformance.
/// Use `ShortcutsShortcutClassRef` only as an `unowned` reference to an existing `GtkShortcutsShortcutClass` instance.
///

public struct ShortcutsShortcutClassRef: ShortcutsShortcutClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsShortcutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutsShortcutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutsShortcutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutsShortcutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutsShortcutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutsShortcutClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutsShortcutClassProtocol`
    @inlinable init<T: ShortcutsShortcutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutsShortcutClass Record: ShortcutsShortcutClassProtocol extension (methods and fields)
public extension ShortcutsShortcutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsShortcutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutsShortcutClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutsShortcutClass.self) }



}



/// Metatype/GType declaration for ShortcutsWindow
public extension ShortcutsWindowClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutsWindow`
    static var metatypeReference: GType { gtk_shortcuts_window_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutsWindowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutsWindowClass.self) }
    
    static var metatype: GtkShortcutsWindowClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutsWindowClassRef? { ShortcutsWindowClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutsWindowClass Record

/// The `ShortcutsWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsWindowClass`.
/// Alternatively, use `ShortcutsWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsWindowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutsWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsWindowClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutsWindowClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ShortcutsWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsWindowClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsWindowClassProtocol` conformance.
/// Use `ShortcutsWindowClassRef` only as an `unowned` reference to an existing `GtkShortcutsWindowClass` instance.
///

public struct ShortcutsWindowClassRef: ShortcutsWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutsWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutsWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutsWindowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutsWindowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutsWindowClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutsWindowClassProtocol`
    @inlinable init<T: ShortcutsWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutsWindowClass Record: ShortcutsWindowClassProtocol extension (methods and fields)
public extension ShortcutsWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsWindowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutsWindowClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutsWindowClass.self) }


    @inlinable var parentClass: GtkWindowClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var close is unavailable because close is void

    // var search is unavailable because search is void

}



/// Metatype/GType declaration for SizeGroup
public extension SizeGroupClassRef {
    
    /// This getter returns the GLib type identifier registered for `SizeGroup`
    static var metatypeReference: GType { gtk_size_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSizeGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSizeGroupClass.self) }
    
    static var metatype: GtkSizeGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: SizeGroupClassRef? { SizeGroupClassRef(metatypePointer) }
    
    
}

// MARK: - SizeGroupClass Record

/// The `SizeGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkSizeGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SizeGroupClass`.
/// Alternatively, use `SizeGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SizeGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkSizeGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSizeGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSizeGroupClass>! { get }

    /// Required Initialiser for types conforming to `SizeGroupClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SizeGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkSizeGroupClass` instance.
/// It exposes methods that can operate on this data type through `SizeGroupClassProtocol` conformance.
/// Use `SizeGroupClassRef` only as an `unowned` reference to an existing `GtkSizeGroupClass` instance.
///

public struct SizeGroupClassRef: SizeGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkSizeGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SizeGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSizeGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSizeGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSizeGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSizeGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `SizeGroupClassProtocol`
    @inlinable init<T: SizeGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SizeGroupClass Record: SizeGroupClassProtocol extension (methods and fields)
public extension SizeGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSizeGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSizeGroupClass>! { return ptr?.assumingMemoryBound(to: GtkSizeGroupClass.self) }


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



/// Metatype/GType declaration for SocketAccessible
public extension SocketAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketAccessible`
    static var metatypeReference: GType { gtk_socket_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSocketAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSocketAccessibleClass.self) }
    
    static var metatype: GtkSocketAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketAccessibleClassRef? { SocketAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - SocketAccessibleClass Record

/// The `SocketAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkSocketAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketAccessibleClass`.
/// Alternatively, use `SocketAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSocketAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSocketAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSocketAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `SocketAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SocketAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkSocketAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `SocketAccessibleClassProtocol` conformance.
/// Use `SocketAccessibleClassRef` only as an `unowned` reference to an existing `GtkSocketAccessibleClass` instance.
///

public struct SocketAccessibleClassRef: SocketAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSocketAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSocketAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSocketAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSocketAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSocketAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketAccessibleClassProtocol`
    @inlinable init<T: SocketAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketAccessibleClass Record: SocketAccessibleClassProtocol extension (methods and fields)
public extension SocketAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSocketAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSocketAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkSocketAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for SpinButtonAccessible
public extension SpinButtonAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `SpinButtonAccessible`
    static var metatypeReference: GType { gtk_spin_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSpinButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSpinButtonAccessibleClass.self) }
    
    static var metatype: GtkSpinButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: SpinButtonAccessibleClassRef? { SpinButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - SpinButtonAccessibleClass Record

/// The `SpinButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinButtonAccessibleClass`.
/// Alternatively, use `SpinButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSpinButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `SpinButtonAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SpinButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `SpinButtonAccessibleClassProtocol` conformance.
/// Use `SpinButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkSpinButtonAccessibleClass` instance.
///

public struct SpinButtonAccessibleClassRef: SpinButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SpinButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSpinButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSpinButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSpinButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSpinButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `SpinButtonAccessibleClassProtocol`
    @inlinable init<T: SpinButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SpinButtonAccessibleClass Record: SpinButtonAccessibleClassProtocol extension (methods and fields)
public extension SpinButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSpinButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkSpinButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkEntryAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for SpinButton
public extension SpinButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `SpinButton`
    static var metatypeReference: GType { gtk_spin_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSpinButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSpinButtonClass.self) }
    
    static var metatype: GtkSpinButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: SpinButtonClassRef? { SpinButtonClassRef(metatypePointer) }
    
    
}

// MARK: - SpinButtonClass Record

/// The `SpinButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinButtonClass`.
/// Alternatively, use `SpinButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSpinButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonClass>! { get }

    /// Required Initialiser for types conforming to `SpinButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SpinButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinButtonClass` instance.
/// It exposes methods that can operate on this data type through `SpinButtonClassProtocol` conformance.
/// Use `SpinButtonClassRef` only as an `unowned` reference to an existing `GtkSpinButtonClass` instance.
///

public struct SpinButtonClassRef: SpinButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SpinButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSpinButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSpinButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSpinButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSpinButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `SpinButtonClassProtocol`
    @inlinable init<T: SpinButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SpinButtonClass Record: SpinButtonClassProtocol extension (methods and fields)
public extension SpinButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSpinButtonClass>! { return ptr?.assumingMemoryBound(to: GtkSpinButtonClass.self) }


    @inlinable var parentClass: GtkEntryClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var input is unavailable because input is void

    // var output is unavailable because output is void

    // var valueChanged is unavailable because value_changed is void

    // var changeValue is unavailable because change_value is void

    // var wrapped is unavailable because wrapped is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for SpinnerAccessible
public extension SpinnerAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `SpinnerAccessible`
    static var metatypeReference: GType { gtk_spinner_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSpinnerAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSpinnerAccessibleClass.self) }
    
    static var metatype: GtkSpinnerAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: SpinnerAccessibleClassRef? { SpinnerAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - SpinnerAccessibleClass Record

/// The `SpinnerAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinnerAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinnerAccessibleClass`.
/// Alternatively, use `SpinnerAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinnerAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinnerAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSpinnerAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `SpinnerAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SpinnerAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinnerAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `SpinnerAccessibleClassProtocol` conformance.
/// Use `SpinnerAccessibleClassRef` only as an `unowned` reference to an existing `GtkSpinnerAccessibleClass` instance.
///

public struct SpinnerAccessibleClassRef: SpinnerAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinnerAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SpinnerAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSpinnerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSpinnerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSpinnerAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSpinnerAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `SpinnerAccessibleClassProtocol`
    @inlinable init<T: SpinnerAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SpinnerAccessibleClass Record: SpinnerAccessibleClassProtocol extension (methods and fields)
public extension SpinnerAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinnerAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSpinnerAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkSpinnerAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Spinner
public extension SpinnerClassRef {
    
    /// This getter returns the GLib type identifier registered for `Spinner`
    static var metatypeReference: GType { gtk_spinner_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSpinnerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSpinnerClass.self) }
    
    static var metatype: GtkSpinnerClass? { metatypePointer?.pointee } 
    
    static var wrapper: SpinnerClassRef? { SpinnerClassRef(metatypePointer) }
    
    
}

// MARK: - SpinnerClass Record

/// The `SpinnerClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinnerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinnerClass`.
/// Alternatively, use `SpinnerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinnerClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinnerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSpinnerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerClass>! { get }

    /// Required Initialiser for types conforming to `SpinnerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SpinnerClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinnerClass` instance.
/// It exposes methods that can operate on this data type through `SpinnerClassProtocol` conformance.
/// Use `SpinnerClassRef` only as an `unowned` reference to an existing `GtkSpinnerClass` instance.
///

public struct SpinnerClassRef: SpinnerClassProtocol {
        /// Untyped pointer to the underlying `GtkSpinnerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SpinnerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSpinnerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSpinnerClass>?) {
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

    /// Reference intialiser for a related type that implements `SpinnerClassProtocol`
    @inlinable init<T: SpinnerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SpinnerClass Record: SpinnerClassProtocol extension (methods and fields)
public extension SpinnerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinnerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSpinnerClass>! { return ptr?.assumingMemoryBound(to: GtkSpinnerClass.self) }


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



/// Metatype/GType declaration for StackAccessible
public extension StackAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `StackAccessible`
    static var metatypeReference: GType { gtk_stack_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStackAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStackAccessibleClass.self) }
    
    static var metatype: GtkStackAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: StackAccessibleClassRef? { StackAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - StackAccessibleClass Record

/// The `StackAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackAccessibleClass`.
/// Alternatively, use `StackAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkStackAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStackAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `StackAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StackAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `StackAccessibleClassProtocol` conformance.
/// Use `StackAccessibleClassRef` only as an `unowned` reference to an existing `GtkStackAccessibleClass` instance.
///

public struct StackAccessibleClassRef: StackAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkStackAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StackAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStackAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStackAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStackAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStackAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `StackAccessibleClassProtocol`
    @inlinable init<T: StackAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StackAccessibleClass Record: StackAccessibleClassProtocol extension (methods and fields)
public extension StackAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStackAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkStackAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Stack
public extension StackClassRef {
    
    /// This getter returns the GLib type identifier registered for `Stack`
    static var metatypeReference: GType { gtk_stack_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStackClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStackClass.self) }
    
    static var metatype: GtkStackClass? { metatypePointer?.pointee } 
    
    static var wrapper: StackClassRef? { StackClassRef(metatypePointer) }
    
    
}

// MARK: - StackClass Record

/// The `StackClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackClass`.
/// Alternatively, use `StackClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackClassProtocol {
        /// Untyped pointer to the underlying `GtkStackClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStackClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackClass>! { get }

    /// Required Initialiser for types conforming to `StackClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StackClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackClass` instance.
/// It exposes methods that can operate on this data type through `StackClassProtocol` conformance.
/// Use `StackClassRef` only as an `unowned` reference to an existing `GtkStackClass` instance.
///

public struct StackClassRef: StackClassProtocol {
        /// Untyped pointer to the underlying `GtkStackClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StackClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStackClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStackClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStackClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStackClass>?) {
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

    /// Reference intialiser for a related type that implements `StackClassProtocol`
    @inlinable init<T: StackClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StackClass Record: StackClassProtocol extension (methods and fields)
public extension StackClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStackClass>! { return ptr?.assumingMemoryBound(to: GtkStackClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for StackSidebar
public extension StackSidebarClassRef {
    
    /// This getter returns the GLib type identifier registered for `StackSidebar`
    static var metatypeReference: GType { gtk_stack_sidebar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStackSidebarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStackSidebarClass.self) }
    
    static var metatype: GtkStackSidebarClass? { metatypePointer?.pointee } 
    
    static var wrapper: StackSidebarClassRef? { StackSidebarClassRef(metatypePointer) }
    
    
}

// MARK: - StackSidebarClass Record

/// The `StackSidebarClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackSidebarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackSidebarClass`.
/// Alternatively, use `StackSidebarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackSidebarClassProtocol {
        /// Untyped pointer to the underlying `GtkStackSidebarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStackSidebarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSidebarClass>! { get }

    /// Required Initialiser for types conforming to `StackSidebarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StackSidebarClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackSidebarClass` instance.
/// It exposes methods that can operate on this data type through `StackSidebarClassProtocol` conformance.
/// Use `StackSidebarClassRef` only as an `unowned` reference to an existing `GtkStackSidebarClass` instance.
///

public struct StackSidebarClassRef: StackSidebarClassProtocol {
        /// Untyped pointer to the underlying `GtkStackSidebarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StackSidebarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStackSidebarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStackSidebarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStackSidebarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStackSidebarClass>?) {
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

    /// Reference intialiser for a related type that implements `StackSidebarClassProtocol`
    @inlinable init<T: StackSidebarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StackSidebarClass Record: StackSidebarClassProtocol extension (methods and fields)
public extension StackSidebarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackSidebarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStackSidebarClass>! { return ptr?.assumingMemoryBound(to: GtkStackSidebarClass.self) }


    @inlinable var parentClass: GtkBinClass {
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



/// Metatype/GType declaration for StackSwitcher
public extension StackSwitcherClassRef {
    
    /// This getter returns the GLib type identifier registered for `StackSwitcher`
    static var metatypeReference: GType { gtk_stack_switcher_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStackSwitcherClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStackSwitcherClass.self) }
    
    static var metatype: GtkStackSwitcherClass? { metatypePointer?.pointee } 
    
    static var wrapper: StackSwitcherClassRef? { StackSwitcherClassRef(metatypePointer) }
    
    
}

// MARK: - StackSwitcherClass Record

/// The `StackSwitcherClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackSwitcherClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackSwitcherClass`.
/// Alternatively, use `StackSwitcherClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackSwitcherClassProtocol {
        /// Untyped pointer to the underlying `GtkStackSwitcherClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStackSwitcherClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSwitcherClass>! { get }

    /// Required Initialiser for types conforming to `StackSwitcherClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StackSwitcherClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackSwitcherClass` instance.
/// It exposes methods that can operate on this data type through `StackSwitcherClassProtocol` conformance.
/// Use `StackSwitcherClassRef` only as an `unowned` reference to an existing `GtkStackSwitcherClass` instance.
///

public struct StackSwitcherClassRef: StackSwitcherClassProtocol {
        /// Untyped pointer to the underlying `GtkStackSwitcherClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StackSwitcherClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStackSwitcherClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStackSwitcherClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStackSwitcherClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStackSwitcherClass>?) {
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

    /// Reference intialiser for a related type that implements `StackSwitcherClassProtocol`
    @inlinable init<T: StackSwitcherClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StackSwitcherClass Record: StackSwitcherClassProtocol extension (methods and fields)
public extension StackSwitcherClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackSwitcherClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStackSwitcherClass>! { return ptr?.assumingMemoryBound(to: GtkStackSwitcherClass.self) }


    @inlinable var parentClass: GtkBoxClass {
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



/// Metatype/GType declaration for StatusIcon
public extension StatusIconClassRef {
    
    /// This getter returns the GLib type identifier registered for `StatusIcon`
    static var metatypeReference: GType { gtk_status_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStatusIconClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStatusIconClass.self) }
    
    static var metatype: GtkStatusIconClass? { metatypePointer?.pointee } 
    
    static var wrapper: StatusIconClassRef? { StatusIconClassRef(metatypePointer) }
    
    
}

// MARK: - StatusIconClass Record

/// The `StatusIconClassProtocol` protocol exposes the methods and properties of an underlying `GtkStatusIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusIconClass`.
/// Alternatively, use `StatusIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusIconClassProtocol {
        /// Untyped pointer to the underlying `GtkStatusIconClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStatusIconClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusIconClass>! { get }

    /// Required Initialiser for types conforming to `StatusIconClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StatusIconClassRef` type acts as a lightweight Swift reference to an underlying `GtkStatusIconClass` instance.
/// It exposes methods that can operate on this data type through `StatusIconClassProtocol` conformance.
/// Use `StatusIconClassRef` only as an `unowned` reference to an existing `GtkStatusIconClass` instance.
///

public struct StatusIconClassRef: StatusIconClassProtocol {
        /// Untyped pointer to the underlying `GtkStatusIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StatusIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStatusIconClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStatusIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStatusIconClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStatusIconClass>?) {
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

    /// Reference intialiser for a related type that implements `StatusIconClassProtocol`
    @inlinable init<T: StatusIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StatusIconClass Record: StatusIconClassProtocol extension (methods and fields)
public extension StatusIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusIconClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStatusIconClass>! { return ptr?.assumingMemoryBound(to: GtkStatusIconClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var popupMenu is unavailable because popup_menu is void

    // var sizeChanged is unavailable because size_changed is void

    // var buttonPressEvent is unavailable because button_press_event is void

    // var buttonReleaseEvent is unavailable because button_release_event is void

    // var scrollEvent is unavailable because scroll_event is void

    // var queryTooltip is unavailable because query_tooltip is void

    // var _gtkReserved1 is unavailable because __gtk_reserved1 is void

    // var _gtkReserved2 is unavailable because __gtk_reserved2 is void

    // var _gtkReserved3 is unavailable because __gtk_reserved3 is void

    // var _gtkReserved4 is unavailable because __gtk_reserved4 is void

}



/// Metatype/GType declaration for StatusbarAccessible
public extension StatusbarAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `StatusbarAccessible`
    static var metatypeReference: GType { gtk_statusbar_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStatusbarAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStatusbarAccessibleClass.self) }
    
    static var metatype: GtkStatusbarAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: StatusbarAccessibleClassRef? { StatusbarAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - StatusbarAccessibleClass Record

/// The `StatusbarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkStatusbarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusbarAccessibleClass`.
/// Alternatively, use `StatusbarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusbarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkStatusbarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStatusbarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `StatusbarAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StatusbarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkStatusbarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `StatusbarAccessibleClassProtocol` conformance.
/// Use `StatusbarAccessibleClassRef` only as an `unowned` reference to an existing `GtkStatusbarAccessibleClass` instance.
///

public struct StatusbarAccessibleClassRef: StatusbarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkStatusbarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StatusbarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStatusbarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStatusbarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStatusbarAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStatusbarAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `StatusbarAccessibleClassProtocol`
    @inlinable init<T: StatusbarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StatusbarAccessibleClass Record: StatusbarAccessibleClassProtocol extension (methods and fields)
public extension StatusbarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusbarAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStatusbarAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkStatusbarAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Statusbar
public extension StatusbarClassRef {
    
    /// This getter returns the GLib type identifier registered for `Statusbar`
    static var metatypeReference: GType { gtk_statusbar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStatusbarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStatusbarClass.self) }
    
    static var metatype: GtkStatusbarClass? { metatypePointer?.pointee } 
    
    static var wrapper: StatusbarClassRef? { StatusbarClassRef(metatypePointer) }
    
    
}

// MARK: - StatusbarClass Record

/// The `StatusbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkStatusbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusbarClass`.
/// Alternatively, use `StatusbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusbarClassProtocol {
        /// Untyped pointer to the underlying `GtkStatusbarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStatusbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarClass>! { get }

    /// Required Initialiser for types conforming to `StatusbarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StatusbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkStatusbarClass` instance.
/// It exposes methods that can operate on this data type through `StatusbarClassProtocol` conformance.
/// Use `StatusbarClassRef` only as an `unowned` reference to an existing `GtkStatusbarClass` instance.
///

public struct StatusbarClassRef: StatusbarClassProtocol {
        /// Untyped pointer to the underlying `GtkStatusbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StatusbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStatusbarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStatusbarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStatusbarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStatusbarClass>?) {
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

    /// Reference intialiser for a related type that implements `StatusbarClassProtocol`
    @inlinable init<T: StatusbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StatusbarClass Record: StatusbarClassProtocol extension (methods and fields)
public extension StatusbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusbarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStatusbarClass>! { return ptr?.assumingMemoryBound(to: GtkStatusbarClass.self) }


    @inlinable var parentClass: GtkBoxClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    @inlinable var reserved: gpointer! {
        get {
            let rv = _ptr.pointee.reserved
            return rv
        }
    }

    // var textPushed is unavailable because text_pushed is void

    // var textPopped is unavailable because text_popped is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - StockItem Record

/// The `StockItemProtocol` protocol exposes the methods and properties of an underlying `GtkStockItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StockItem`.
/// Alternatively, use `StockItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StockItemProtocol {
        /// Untyped pointer to the underlying `GtkStockItem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStockItem` instance.
    var _ptr: UnsafeMutablePointer<GtkStockItem>! { get }

    /// Required Initialiser for types conforming to `StockItemProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StockItemRef` type acts as a lightweight Swift reference to an underlying `GtkStockItem` instance.
/// It exposes methods that can operate on this data type through `StockItemProtocol` conformance.
/// Use `StockItemRef` only as an `unowned` reference to an existing `GtkStockItem` instance.
///

public struct StockItemRef: StockItemProtocol {
        /// Untyped pointer to the underlying `GtkStockItem` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StockItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStockItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStockItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStockItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStockItem>?) {
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

    /// Reference intialiser for a related type that implements `StockItemProtocol`
    @inlinable init<T: StockItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StockItem` type acts as an owner of an underlying `GtkStockItem` instance.
/// It provides the methods that can operate on this data type through `StockItemProtocol` conformance.
/// Use `StockItem` as a strong reference or owner of a `GtkStockItem` instance.
///

open class StockItem: StockItemProtocol {
        /// Untyped pointer to the underlying `GtkStockItem` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StockItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkStockItem>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StockItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkStockItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StockItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StockItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StockItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkStockItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StockItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkStockItem>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkStockItem` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StockItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkStockItem>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkStockItem, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `StockItemProtocol`
    /// `GtkStockItem` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StockItemProtocol`
    @inlinable public init<T: StockItemProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkStockItem, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkStockItem`.
    deinit {
        // no reference counting for GtkStockItem, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkStockItem, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkStockItem, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkStockItem, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkStockItem, cannot ref(_ptr)
    }



}

// MARK: no StockItem properties

// MARK: no StockItem signals

// MARK: StockItem has no signals
// MARK: StockItem Record: StockItemProtocol extension (methods and fields)
public extension StockItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStockItem` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStockItem>! { return ptr?.assumingMemoryBound(to: GtkStockItem.self) }

    /// Copies a stock item, mostly useful for language bindings and not in applications.
    ///
    /// **copy is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func copy() -> StockItemRef! {
        guard let rv = StockItemRef(gconstpointer: gconstpointer(gtk_stock_item_copy(_ptr))) else { return nil }
        return rv
    }

    /// Frees a stock item allocated on the heap, such as one returned by
    /// `gtk_stock_item_copy()`. Also frees the fields inside the stock item,
    /// if they are not `nil`.
    ///
    /// **free is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func free() {
        gtk_stock_item_free(_ptr)
    
    }

    /// Fills `item` with the registered values for `stock_id`, returning `true`
    /// if `stock_id` was known.
    ///
    /// **stock_lookup is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func stockLookup(stockID: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_stock_lookup(stockID, _ptr)) != 0)
        return rv
    }

    /// Identifier.
    @inlinable var stockID: UnsafeMutablePointer<gchar>! {
        /// Identifier.
        get {
            let rv = _ptr.pointee.stock_id
            return rv
        }
        /// Identifier.
         set {
            _ptr.pointee.stock_id = newValue
        }
    }

    /// User visible label.
    @inlinable var label: UnsafeMutablePointer<gchar>! {
        /// User visible label.
        get {
            let rv = _ptr.pointee.label
            return rv
        }
        /// User visible label.
         set {
            _ptr.pointee.label = newValue
        }
    }

    /// Modifier type for keyboard accelerator
    @inlinable var modifier: Gdk.ModifierType {
        /// Modifier type for keyboard accelerator
        get {
            let rv = Gdk.ModifierType(_ptr.pointee.modifier)
            return rv
        }
        /// Modifier type for keyboard accelerator
         set {
            _ptr.pointee.modifier = newValue.value
        }
    }

    /// Keyboard accelerator
    @inlinable var keyval: guint {
        /// Keyboard accelerator
        get {
            let rv = _ptr.pointee.keyval
            return rv
        }
        /// Keyboard accelerator
         set {
            _ptr.pointee.keyval = newValue
        }
    }

    /// Translation domain of the menu or toolbar item
    @inlinable var translationDomain: UnsafeMutablePointer<gchar>! {
        /// Translation domain of the menu or toolbar item
        get {
            let rv = _ptr.pointee.translation_domain
            return rv
        }
        /// Translation domain of the menu or toolbar item
         set {
            _ptr.pointee.translation_domain = newValue
        }
    }

}



/// Metatype/GType declaration for Style
public extension StyleClassRef {
    
    /// This getter returns the GLib type identifier registered for `Style`
    static var metatypeReference: GType { gtk_style_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStyleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStyleClass.self) }
    
    static var metatype: GtkStyleClass? { metatypePointer?.pointee } 
    
    static var wrapper: StyleClassRef? { StyleClassRef(metatypePointer) }
    
    
}

// MARK: - StyleClass Record

/// The `StyleClassProtocol` protocol exposes the methods and properties of an underlying `GtkStyleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleClass`.
/// Alternatively, use `StyleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StyleClassProtocol {
        /// Untyped pointer to the underlying `GtkStyleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStyleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleClass>! { get }

    /// Required Initialiser for types conforming to `StyleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StyleClassRef` type acts as a lightweight Swift reference to an underlying `GtkStyleClass` instance.
/// It exposes methods that can operate on this data type through `StyleClassProtocol` conformance.
/// Use `StyleClassRef` only as an `unowned` reference to an existing `GtkStyleClass` instance.
///

public struct StyleClassRef: StyleClassProtocol {
        /// Untyped pointer to the underlying `GtkStyleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StyleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStyleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStyleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStyleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStyleClass>?) {
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

    /// Reference intialiser for a related type that implements `StyleClassProtocol`
    @inlinable init<T: StyleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StyleClass Record: StyleClassProtocol extension (methods and fields)
public extension StyleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStyleClass>! { return ptr?.assumingMemoryBound(to: GtkStyleClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var realize is unavailable because realize is void

    // var unrealize is unavailable because unrealize is void

    // var copy is unavailable because copy is void

    // var clone is unavailable because clone is void

    // var initFromRc is unavailable because init_from_rc is void

    // var setBackground is unavailable because set_background is void

    // var renderIcon is unavailable because render_icon is void

    // var drawHline is unavailable because draw_hline is void

    // var drawVline is unavailable because draw_vline is void

    // var drawShadow is unavailable because draw_shadow is void

    // var drawArrow is unavailable because draw_arrow is void

    // var drawDiamond is unavailable because draw_diamond is void

    // var drawBox is unavailable because draw_box is void

    // var drawFlatBox is unavailable because draw_flat_box is void

    // var drawCheck is unavailable because draw_check is void

    // var drawOption is unavailable because draw_option is void

    // var drawTab is unavailable because draw_tab is void

    // var drawShadowGap is unavailable because draw_shadow_gap is void

    // var drawBoxGap is unavailable because draw_box_gap is void

    // var drawExtension is unavailable because draw_extension is void

    // var drawFocus is unavailable because draw_focus is void

    // var drawSlider is unavailable because draw_slider is void

    // var drawHandle is unavailable because draw_handle is void

    // var drawExpander is unavailable because draw_expander is void

    // var drawLayout is unavailable because draw_layout is void

    // var drawResizeGrip is unavailable because draw_resize_grip is void

    // var drawSpinner is unavailable because draw_spinner is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

    // var GtkReserved9 is unavailable because _gtk_reserved9 is void

    // var GtkReserved10 is unavailable because _gtk_reserved10 is void

    // var GtkReserved11 is unavailable because _gtk_reserved11 is void

}



/// Metatype/GType declaration for StyleContext
public extension StyleContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `StyleContext`
    static var metatypeReference: GType { gtk_style_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStyleContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStyleContextClass.self) }
    
    static var metatype: GtkStyleContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: StyleContextClassRef? { StyleContextClassRef(metatypePointer) }
    
    
}

// MARK: - StyleContextClass Record

/// The `StyleContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkStyleContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleContextClass`.
/// Alternatively, use `StyleContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StyleContextClassProtocol {
        /// Untyped pointer to the underlying `GtkStyleContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStyleContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleContextClass>! { get }

    /// Required Initialiser for types conforming to `StyleContextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StyleContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkStyleContextClass` instance.
/// It exposes methods that can operate on this data type through `StyleContextClassProtocol` conformance.
/// Use `StyleContextClassRef` only as an `unowned` reference to an existing `GtkStyleContextClass` instance.
///

public struct StyleContextClassRef: StyleContextClassProtocol {
        /// Untyped pointer to the underlying `GtkStyleContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StyleContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStyleContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStyleContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStyleContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStyleContextClass>?) {
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

    /// Reference intialiser for a related type that implements `StyleContextClassProtocol`
    @inlinable init<T: StyleContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StyleContextClass Record: StyleContextClassProtocol extension (methods and fields)
public extension StyleContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStyleContextClass>! { return ptr?.assumingMemoryBound(to: GtkStyleContextClass.self) }


    @inlinable var parentClass: GObjectClass {
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



/// Metatype/GType declaration for StyleProperties
public extension StylePropertiesClassRef {
    
    /// This getter returns the GLib type identifier registered for `StyleProperties`
    static var metatypeReference: GType { gtk_style_properties_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStylePropertiesClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStylePropertiesClass.self) }
    
    static var metatype: GtkStylePropertiesClass? { metatypePointer?.pointee } 
    
    static var wrapper: StylePropertiesClassRef? { StylePropertiesClassRef(metatypePointer) }
    
    
}

// MARK: - StylePropertiesClass Record

/// The `StylePropertiesClassProtocol` protocol exposes the methods and properties of an underlying `GtkStylePropertiesClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StylePropertiesClass`.
/// Alternatively, use `StylePropertiesClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StylePropertiesClassProtocol {
        /// Untyped pointer to the underlying `GtkStylePropertiesClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStylePropertiesClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStylePropertiesClass>! { get }

    /// Required Initialiser for types conforming to `StylePropertiesClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StylePropertiesClassRef` type acts as a lightweight Swift reference to an underlying `GtkStylePropertiesClass` instance.
/// It exposes methods that can operate on this data type through `StylePropertiesClassProtocol` conformance.
/// Use `StylePropertiesClassRef` only as an `unowned` reference to an existing `GtkStylePropertiesClass` instance.
///

public struct StylePropertiesClassRef: StylePropertiesClassProtocol {
        /// Untyped pointer to the underlying `GtkStylePropertiesClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StylePropertiesClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStylePropertiesClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStylePropertiesClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStylePropertiesClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStylePropertiesClass>?) {
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

    /// Reference intialiser for a related type that implements `StylePropertiesClassProtocol`
    @inlinable init<T: StylePropertiesClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StylePropertiesClass Record: StylePropertiesClassProtocol extension (methods and fields)
public extension StylePropertiesClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStylePropertiesClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStylePropertiesClass>! { return ptr?.assumingMemoryBound(to: GtkStylePropertiesClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for StyleProvider
public extension StyleProviderIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `StyleProvider`
    static var metatypeReference: GType { gtk_style_provider_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStyleProviderIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStyleProviderIface.self) }
    
    static var metatype: GtkStyleProviderIface? { metatypePointer?.pointee } 
    
    static var wrapper: StyleProviderIfaceRef? { StyleProviderIfaceRef(metatypePointer) }
    
    
}

// MARK: - StyleProviderIface Record

/// The `StyleProviderIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkStyleProviderIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleProviderIface`.
/// Alternatively, use `StyleProviderIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StyleProviderIfaceProtocol {
        /// Untyped pointer to the underlying `GtkStyleProviderIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStyleProviderIface` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleProviderIface>! { get }

    /// Required Initialiser for types conforming to `StyleProviderIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StyleProviderIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkStyleProviderIface` instance.
/// It exposes methods that can operate on this data type through `StyleProviderIfaceProtocol` conformance.
/// Use `StyleProviderIfaceRef` only as an `unowned` reference to an existing `GtkStyleProviderIface` instance.
///

public struct StyleProviderIfaceRef: StyleProviderIfaceProtocol {
        /// Untyped pointer to the underlying `GtkStyleProviderIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StyleProviderIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStyleProviderIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStyleProviderIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStyleProviderIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStyleProviderIface>?) {
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

    /// Reference intialiser for a related type that implements `StyleProviderIfaceProtocol`
    @inlinable init<T: StyleProviderIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StyleProviderIface Record: StyleProviderIfaceProtocol extension (methods and fields)
public extension StyleProviderIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleProviderIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStyleProviderIface>! { return ptr?.assumingMemoryBound(to: GtkStyleProviderIface.self) }


    // var gIface is unavailable because g_iface is private

    // var getStyle is unavailable because get_style is void

    // var getStyleProperty is unavailable because get_style_property is void

    // var getIconFactory is unavailable because get_icon_factory is void

}



/// Metatype/GType declaration for SwitchAccessible
public extension SwitchAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `SwitchAccessible`
    static var metatypeReference: GType { gtk_switch_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSwitchAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSwitchAccessibleClass.self) }
    
    static var metatype: GtkSwitchAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: SwitchAccessibleClassRef? { SwitchAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - SwitchAccessibleClass Record

/// The `SwitchAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkSwitchAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SwitchAccessibleClass`.
/// Alternatively, use `SwitchAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SwitchAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSwitchAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSwitchAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `SwitchAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SwitchAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkSwitchAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `SwitchAccessibleClassProtocol` conformance.
/// Use `SwitchAccessibleClassRef` only as an `unowned` reference to an existing `GtkSwitchAccessibleClass` instance.
///

public struct SwitchAccessibleClassRef: SwitchAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkSwitchAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SwitchAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSwitchAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSwitchAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSwitchAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSwitchAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `SwitchAccessibleClassProtocol`
    @inlinable init<T: SwitchAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SwitchAccessibleClass Record: SwitchAccessibleClassProtocol extension (methods and fields)
public extension SwitchAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSwitchAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSwitchAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkSwitchAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Switch
public extension SwitchClassRef {
    
    /// This getter returns the GLib type identifier registered for `Switch`
    static var metatypeReference: GType { gtk_switch_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSwitchClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSwitchClass.self) }
    
    static var metatype: GtkSwitchClass? { metatypePointer?.pointee } 
    
    static var wrapper: SwitchClassRef? { SwitchClassRef(metatypePointer) }
    
    
}

// MARK: - SwitchClass Record

/// The `SwitchClassProtocol` protocol exposes the methods and properties of an underlying `GtkSwitchClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SwitchClass`.
/// Alternatively, use `SwitchClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SwitchClassProtocol {
        /// Untyped pointer to the underlying `GtkSwitchClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSwitchClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchClass>! { get }

    /// Required Initialiser for types conforming to `SwitchClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SwitchClassRef` type acts as a lightweight Swift reference to an underlying `GtkSwitchClass` instance.
/// It exposes methods that can operate on this data type through `SwitchClassProtocol` conformance.
/// Use `SwitchClassRef` only as an `unowned` reference to an existing `GtkSwitchClass` instance.
///

public struct SwitchClassRef: SwitchClassProtocol {
        /// Untyped pointer to the underlying `GtkSwitchClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SwitchClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSwitchClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSwitchClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSwitchClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSwitchClass>?) {
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

    /// Reference intialiser for a related type that implements `SwitchClassProtocol`
    @inlinable init<T: SwitchClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SwitchClass Record: SwitchClassProtocol extension (methods and fields)
public extension SwitchClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSwitchClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSwitchClass>! { return ptr?.assumingMemoryBound(to: GtkSwitchClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var stateSet is unavailable because state_set is void

    // var SwitchPadding1 is unavailable because _switch_padding_1 is void

    // var SwitchPadding2 is unavailable because _switch_padding_2 is void

    // var SwitchPadding3 is unavailable because _switch_padding_3 is void

    // var SwitchPadding4 is unavailable because _switch_padding_4 is void

    // var SwitchPadding5 is unavailable because _switch_padding_5 is void

}



// MARK: - SymbolicColor Record

/// The `SymbolicColorProtocol` protocol exposes the methods and properties of an underlying `GtkSymbolicColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SymbolicColor`.
/// Alternatively, use `SymbolicColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkSymbolicColor is a boxed type that represents a symbolic color.
/// It is the result of parsing a
/// [color expression](#gtkcssprovider-symbolic-colors).
/// To obtain the color represented by a GtkSymbolicColor, it has to
/// be resolved with `gtk_symbolic_color_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and evaluates mix, shade and other expressions, resulting
/// in a `GdkRGBA` value.
/// 
/// It is not normally necessary to deal directly with `GtkSymbolicColors`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkSymbolicColor` is deprecated. Symbolic colors are considered an
/// implementation detail of GTK+.
public protocol SymbolicColorProtocol {
        /// Untyped pointer to the underlying `GtkSymbolicColor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSymbolicColor` instance.
    var symbolic_color_ptr: UnsafeMutablePointer<GtkSymbolicColor>! { get }

    /// Required Initialiser for types conforming to `SymbolicColorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SymbolicColorRef` type acts as a lightweight Swift reference to an underlying `GtkSymbolicColor` instance.
/// It exposes methods that can operate on this data type through `SymbolicColorProtocol` conformance.
/// Use `SymbolicColorRef` only as an `unowned` reference to an existing `GtkSymbolicColor` instance.
///
/// GtkSymbolicColor is a boxed type that represents a symbolic color.
/// It is the result of parsing a
/// [color expression](#gtkcssprovider-symbolic-colors).
/// To obtain the color represented by a GtkSymbolicColor, it has to
/// be resolved with `gtk_symbolic_color_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and evaluates mix, shade and other expressions, resulting
/// in a `GdkRGBA` value.
/// 
/// It is not normally necessary to deal directly with `GtkSymbolicColors`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkSymbolicColor` is deprecated. Symbolic colors are considered an
/// implementation detail of GTK+.
public struct SymbolicColorRef: SymbolicColorProtocol {
        /// Untyped pointer to the underlying `GtkSymbolicColor` instance.
    /// For type-safe access, use the generated, typed pointer `symbolic_color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SymbolicColorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSymbolicColor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSymbolicColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSymbolicColor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSymbolicColor>?) {
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

    /// Reference intialiser for a related type that implements `SymbolicColorProtocol`
    @inlinable init<T: SymbolicColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable init<RGBAT: Gdk.RGBAProtocol>(literal color: RGBAT) {
        let rv = gtk_symbolic_color_new_literal(color.rgba_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable init(name: UnsafePointer<gchar>!) {
        let rv = gtk_symbolic_color_new_name(name)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable init(win32 themeClass: UnsafePointer<gchar>!, id: Int) {
        let rv = gtk_symbolic_color_new_win32(themeClass, gint(id))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable static func new<RGBAT: Gdk.RGBAProtocol>(literal color: RGBAT) -> SymbolicColorRef! {
        guard let rv = SymbolicColorRef(gconstpointer: gconstpointer(gtk_symbolic_color_new_literal(color.rgba_ptr))) else { return nil }
        return rv
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable static func new(name: UnsafePointer<gchar>!) -> SymbolicColorRef! {
        guard let rv = SymbolicColorRef(gconstpointer: gconstpointer(gtk_symbolic_color_new_name(name))) else { return nil }
        return rv
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable static func new(win32 themeClass: UnsafePointer<gchar>!, id: Int) -> SymbolicColorRef! {
        guard let rv = SymbolicColorRef(gconstpointer: gconstpointer(gtk_symbolic_color_new_win32(themeClass, gint(id)))) else { return nil }
        return rv
    }
}

/// The `SymbolicColor` type acts as a reference-counted owner of an underlying `GtkSymbolicColor` instance.
/// It provides the methods that can operate on this data type through `SymbolicColorProtocol` conformance.
/// Use `SymbolicColor` as a strong reference or owner of a `GtkSymbolicColor` instance.
///
/// GtkSymbolicColor is a boxed type that represents a symbolic color.
/// It is the result of parsing a
/// [color expression](#gtkcssprovider-symbolic-colors).
/// To obtain the color represented by a GtkSymbolicColor, it has to
/// be resolved with `gtk_symbolic_color_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and evaluates mix, shade and other expressions, resulting
/// in a `GdkRGBA` value.
/// 
/// It is not normally necessary to deal directly with `GtkSymbolicColors`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkSymbolicColor` is deprecated. Symbolic colors are considered an
/// implementation detail of GTK+.
open class SymbolicColor: SymbolicColorProtocol {
        /// Untyped pointer to the underlying `GtkSymbolicColor` instance.
    /// For type-safe access, use the generated, typed pointer `symbolic_color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SymbolicColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkSymbolicColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SymbolicColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkSymbolicColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SymbolicColor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SymbolicColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SymbolicColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkSymbolicColor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SymbolicColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkSymbolicColor>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkSymbolicColor`.
    /// i.e., ownership is transferred to the `SymbolicColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkSymbolicColor>) {
        ptr = UnsafeMutableRawPointer(op)
        g_object_ref(ptr.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Reference intialiser for a related type that implements `SymbolicColorProtocol`
    /// Will retain `GtkSymbolicColor`.
    /// - Parameter other: an instance of a related type that implements `SymbolicColorProtocol`
    @inlinable public init<T: SymbolicColorProtocol>(_ other: T) {
        ptr = other.ptr
        g_object_ref(ptr.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Releases the underlying `GtkSymbolicColor` instance using `g_object_unref`.
    deinit {
        g_object_unref(ptr.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_object_ref(ptr.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_object_ref(ptr.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_object_ref(ptr.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_object_ref(ptr.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable public init<RGBAT: Gdk.RGBAProtocol>(literal color: RGBAT) {
        let rv = gtk_symbolic_color_new_literal(color.rgba_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable public init(name: UnsafePointer<gchar>!) {
        let rv = gtk_symbolic_color_new_name(name)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable public init(win32 themeClass: UnsafePointer<gchar>!, id: Int) {
        let rv = gtk_symbolic_color_new_win32(themeClass, gint(id))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable public static func new<RGBAT: Gdk.RGBAProtocol>(literal color: RGBAT) -> SymbolicColor! {
        guard let rv = SymbolicColor(gconstpointer: gconstpointer(gtk_symbolic_color_new_literal(color.rgba_ptr))) else { return nil }
        return rv
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable public static func new(name: UnsafePointer<gchar>!) -> SymbolicColor! {
        guard let rv = SymbolicColor(gconstpointer: gconstpointer(gtk_symbolic_color_new_name(name))) else { return nil }
        return rv
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable public static func new(win32 themeClass: UnsafePointer<gchar>!, id: Int) -> SymbolicColor! {
        guard let rv = SymbolicColor(gconstpointer: gconstpointer(gtk_symbolic_color_new_win32(themeClass, gint(id)))) else { return nil }
        return rv
    }

}

// MARK: no SymbolicColor properties

// MARK: no SymbolicColor signals

// MARK: SymbolicColor has no signals
// MARK: SymbolicColor Record: SymbolicColorProtocol extension (methods and fields)
public extension SymbolicColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSymbolicColor` instance.
    @inlinable var symbolic_color_ptr: UnsafeMutablePointer<GtkSymbolicColor>! { return ptr?.assumingMemoryBound(to: GtkSymbolicColor.self) }

    /// Increases the reference count of `color`
    ///
    /// **ref is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @discardableResult @inlinable func ref() -> SymbolicColorRef! {
        guard let rv = SymbolicColorRef(gconstpointer: gconstpointer(g_object_ref(symbolic_color_ptr))) else { return nil }
        return rv
    }

    /// If `color` is resolvable, `resolved_color` will be filled in
    /// with the resolved color, and `true` will be returned. Generally,
    /// if `color` can’t be resolved, it is due to it being defined on
    /// top of a named color that doesn’t exist in `props`.
    /// 
    /// When `props` is `nil`, resolving of named colors will fail, so if
    /// your `color` is or references such a color, this function will
    /// return `false`.
    ///
    /// **resolve is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable func resolve<RGBAT: Gdk.RGBAProtocol>(props: StylePropertiesRef? = nil, resolvedColor: RGBAT) -> Bool {
        let rv = ((gtk_symbolic_color_resolve(symbolic_color_ptr, props?.style_properties_ptr, resolvedColor.rgba_ptr)) != 0)
        return rv
    }
    /// If `color` is resolvable, `resolved_color` will be filled in
    /// with the resolved color, and `true` will be returned. Generally,
    /// if `color` can’t be resolved, it is due to it being defined on
    /// top of a named color that doesn’t exist in `props`.
    /// 
    /// When `props` is `nil`, resolving of named colors will fail, so if
    /// your `color` is or references such a color, this function will
    /// return `false`.
    ///
    /// **resolve is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable func resolve<RGBAT: Gdk.RGBAProtocol, StylePropertiesT: StylePropertiesProtocol>(props: StylePropertiesT?, resolvedColor: RGBAT) -> Bool {
        let rv = ((gtk_symbolic_color_resolve(symbolic_color_ptr, props?.style_properties_ptr, resolvedColor.rgba_ptr)) != 0)
        return rv
    }

    /// Converts the given `color` to a string representation. This is useful
    /// both for debugging and for serialization of strings. The format of
    /// the string may change between different versions of GTK, but it is
    /// guaranteed that the GTK css parser is able to read the string and
    /// create the same symbolic color from it.
    ///
    /// **to_string is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable func toString() -> String! {
        let rv = gtk_symbolic_color_to_string(symbolic_color_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Decreases the reference count of `color`, freeing its memory if the
    /// reference count reaches 0.
    ///
    /// **unref is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated)
    @inlinable func unref() {
        g_object_unref(symbolic_color_ptr)
    
    }


}



// MARK: - TableChild Record

/// The `TableChildProtocol` protocol exposes the methods and properties of an underlying `GtkTableChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TableChild`.
/// Alternatively, use `TableChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TableChildProtocol {
        /// Untyped pointer to the underlying `GtkTableChild` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTableChild` instance.
    var _ptr: UnsafeMutablePointer<GtkTableChild>! { get }

    /// Required Initialiser for types conforming to `TableChildProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TableChildRef` type acts as a lightweight Swift reference to an underlying `GtkTableChild` instance.
/// It exposes methods that can operate on this data type through `TableChildProtocol` conformance.
/// Use `TableChildRef` only as an `unowned` reference to an existing `GtkTableChild` instance.
///

public struct TableChildRef: TableChildProtocol {
        /// Untyped pointer to the underlying `GtkTableChild` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TableChildRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTableChild>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTableChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTableChild>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTableChild>?) {
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

    /// Reference intialiser for a related type that implements `TableChildProtocol`
    @inlinable init<T: TableChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TableChild` type acts as an owner of an underlying `GtkTableChild` instance.
/// It provides the methods that can operate on this data type through `TableChildProtocol` conformance.
/// Use `TableChild` as a strong reference or owner of a `GtkTableChild` instance.
///

open class TableChild: TableChildProtocol {
        /// Untyped pointer to the underlying `GtkTableChild` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTableChild>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTableChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableChild` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTableChild>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TableChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTableChild>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTableChild` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TableChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTableChild>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTableChild, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TableChildProtocol`
    /// `GtkTableChild` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TableChildProtocol`
    @inlinable public init<T: TableChildProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTableChild, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkTableChild`.
    deinit {
        // no reference counting for GtkTableChild, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTableChild, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTableChild, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTableChild, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTableChild, cannot ref(_ptr)
    }



}

// MARK: no TableChild properties

// MARK: no TableChild signals

// MARK: TableChild has no signals
// MARK: TableChild Record: TableChildProtocol extension (methods and fields)
public extension TableChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTableChild` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTableChild>! { return ptr?.assumingMemoryBound(to: GtkTableChild.self) }


    @inlinable var widget: WidgetRef! {
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(_ptr.pointee.widget))
            return rv
        }
         set {
            _ptr.pointee.widget = UnsafeMutablePointer<GtkWidget>(newValue.widget_ptr)
        }
    }

    @inlinable var leftAttach: guint16 {
        get {
            let rv = _ptr.pointee.left_attach
            return rv
        }
         set {
            _ptr.pointee.left_attach = newValue
        }
    }

    @inlinable var rightAttach: guint16 {
        get {
            let rv = _ptr.pointee.right_attach
            return rv
        }
         set {
            _ptr.pointee.right_attach = newValue
        }
    }

    @inlinable var topAttach: guint16 {
        get {
            let rv = _ptr.pointee.top_attach
            return rv
        }
         set {
            _ptr.pointee.top_attach = newValue
        }
    }

    @inlinable var bottomAttach: guint16 {
        get {
            let rv = _ptr.pointee.bottom_attach
            return rv
        }
         set {
            _ptr.pointee.bottom_attach = newValue
        }
    }

    @inlinable var xpadding: guint16 {
        get {
            let rv = _ptr.pointee.xpadding
            return rv
        }
         set {
            _ptr.pointee.xpadding = newValue
        }
    }

    @inlinable var ypadding: guint16 {
        get {
            let rv = _ptr.pointee.ypadding
            return rv
        }
         set {
            _ptr.pointee.ypadding = newValue
        }
    }

    @inlinable var xexpand: guint {
        get {
            let rv = _ptr.pointee.xexpand
            return rv
        }
         set {
            _ptr.pointee.xexpand = newValue
        }
    }

    @inlinable var yexpand: guint {
        get {
            let rv = _ptr.pointee.yexpand
            return rv
        }
         set {
            _ptr.pointee.yexpand = newValue
        }
    }

    @inlinable var xshrink: guint {
        get {
            let rv = _ptr.pointee.xshrink
            return rv
        }
         set {
            _ptr.pointee.xshrink = newValue
        }
    }

    @inlinable var yshrink: guint {
        get {
            let rv = _ptr.pointee.yshrink
            return rv
        }
         set {
            _ptr.pointee.yshrink = newValue
        }
    }

    @inlinable var xfill: guint {
        get {
            let rv = _ptr.pointee.xfill
            return rv
        }
         set {
            _ptr.pointee.xfill = newValue
        }
    }

    @inlinable var yfill: guint {
        get {
            let rv = _ptr.pointee.yfill
            return rv
        }
         set {
            _ptr.pointee.yfill = newValue
        }
    }

}



