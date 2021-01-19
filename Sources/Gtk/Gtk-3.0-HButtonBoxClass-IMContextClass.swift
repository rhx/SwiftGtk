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

/// Metatype/GType declaration for HButtonBox
public extension HButtonBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `HButtonBox`
    static var metatypeReference: GType { gtk_hbutton_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHButtonBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHButtonBoxClass.self) }
    
    static var metatype: GtkHButtonBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: HButtonBoxClassRef? { HButtonBoxClassRef(metatypePointer) }
    
    
}

// MARK: - HButtonBoxClass Record

/// The `HButtonBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkHButtonBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HButtonBoxClass`.
/// Alternatively, use `HButtonBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HButtonBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkHButtonBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHButtonBoxClass>! { get }

    /// Required Initialiser for types conforming to `HButtonBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HButtonBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkHButtonBoxClass` instance.
/// It exposes methods that can operate on this data type through `HButtonBoxClassProtocol` conformance.
/// Use `HButtonBoxClassRef` only as an `unowned` reference to an existing `GtkHButtonBoxClass` instance.
///

public struct HButtonBoxClassRef: HButtonBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkHButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HButtonBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHButtonBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHButtonBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `HButtonBoxClassProtocol`
    @inlinable init<T: HButtonBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HButtonBoxClass Record: HButtonBoxClassProtocol extension (methods and fields)
public extension HButtonBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHButtonBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHButtonBoxClass>! { return ptr?.assumingMemoryBound(to: GtkHButtonBoxClass.self) }


    @inlinable var parentClass: GtkButtonBoxClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for HPaned
public extension HPanedClassRef {
    
    /// This getter returns the GLib type identifier registered for `HPaned`
    static var metatypeReference: GType { gtk_hpaned_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHPanedClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHPanedClass.self) }
    
    static var metatype: GtkHPanedClass? { metatypePointer?.pointee } 
    
    static var wrapper: HPanedClassRef? { HPanedClassRef(metatypePointer) }
    
    
}

// MARK: - HPanedClass Record

/// The `HPanedClassProtocol` protocol exposes the methods and properties of an underlying `GtkHPanedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HPanedClass`.
/// Alternatively, use `HPanedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HPanedClassProtocol {
        /// Untyped pointer to the underlying `GtkHPanedClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHPanedClass>! { get }

    /// Required Initialiser for types conforming to `HPanedClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HPanedClassRef` type acts as a lightweight Swift reference to an underlying `GtkHPanedClass` instance.
/// It exposes methods that can operate on this data type through `HPanedClassProtocol` conformance.
/// Use `HPanedClassRef` only as an `unowned` reference to an existing `GtkHPanedClass` instance.
///

public struct HPanedClassRef: HPanedClassProtocol {
        /// Untyped pointer to the underlying `GtkHPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HPanedClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHPanedClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHPanedClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHPanedClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHPanedClass>?) {
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

    /// Reference intialiser for a related type that implements `HPanedClassProtocol`
    @inlinable init<T: HPanedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HPanedClass Record: HPanedClassProtocol extension (methods and fields)
public extension HPanedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHPanedClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHPanedClass>! { return ptr?.assumingMemoryBound(to: GtkHPanedClass.self) }


    @inlinable var parentClass: GtkPanedClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for HSV
public extension HSVClassRef {
    
    /// This getter returns the GLib type identifier registered for `HSV`
    static var metatypeReference: GType { gtk_hsv_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHSVClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHSVClass.self) }
    
    static var metatype: GtkHSVClass? { metatypePointer?.pointee } 
    
    static var wrapper: HSVClassRef? { HSVClassRef(metatypePointer) }
    
    
}

// MARK: - HSVClass Record

/// The `HSVClassProtocol` protocol exposes the methods and properties of an underlying `GtkHSVClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HSVClass`.
/// Alternatively, use `HSVClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HSVClassProtocol {
        /// Untyped pointer to the underlying `GtkHSVClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHSVClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHSVClass>! { get }

    /// Required Initialiser for types conforming to `HSVClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HSVClassRef` type acts as a lightweight Swift reference to an underlying `GtkHSVClass` instance.
/// It exposes methods that can operate on this data type through `HSVClassProtocol` conformance.
/// Use `HSVClassRef` only as an `unowned` reference to an existing `GtkHSVClass` instance.
///

public struct HSVClassRef: HSVClassProtocol {
        /// Untyped pointer to the underlying `GtkHSVClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HSVClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHSVClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHSVClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHSVClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHSVClass>?) {
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

    /// Reference intialiser for a related type that implements `HSVClassProtocol`
    @inlinable init<T: HSVClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HSVClass Record: HSVClassProtocol extension (methods and fields)
public extension HSVClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHSVClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHSVClass>! { return ptr?.assumingMemoryBound(to: GtkHSVClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var move is unavailable because move is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for HScale
public extension HScaleClassRef {
    
    /// This getter returns the GLib type identifier registered for `HScale`
    static var metatypeReference: GType { gtk_hscale_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHScaleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHScaleClass.self) }
    
    static var metatype: GtkHScaleClass? { metatypePointer?.pointee } 
    
    static var wrapper: HScaleClassRef? { HScaleClassRef(metatypePointer) }
    
    
}

// MARK: - HScaleClass Record

/// The `HScaleClassProtocol` protocol exposes the methods and properties of an underlying `GtkHScaleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HScaleClass`.
/// Alternatively, use `HScaleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkHScaleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHScaleClass>! { get }

    /// Required Initialiser for types conforming to `HScaleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HScaleClassRef` type acts as a lightweight Swift reference to an underlying `GtkHScaleClass` instance.
/// It exposes methods that can operate on this data type through `HScaleClassProtocol` conformance.
/// Use `HScaleClassRef` only as an `unowned` reference to an existing `GtkHScaleClass` instance.
///

public struct HScaleClassRef: HScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkHScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HScaleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHScaleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHScaleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHScaleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHScaleClass>?) {
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

    /// Reference intialiser for a related type that implements `HScaleClassProtocol`
    @inlinable init<T: HScaleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HScaleClass Record: HScaleClassProtocol extension (methods and fields)
public extension HScaleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHScaleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHScaleClass>! { return ptr?.assumingMemoryBound(to: GtkHScaleClass.self) }


    @inlinable var parentClass: GtkScaleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for HScrollbar
public extension HScrollbarClassRef {
    
    /// This getter returns the GLib type identifier registered for `HScrollbar`
    static var metatypeReference: GType { gtk_hscrollbar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHScrollbarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHScrollbarClass.self) }
    
    static var metatype: GtkHScrollbarClass? { metatypePointer?.pointee } 
    
    static var wrapper: HScrollbarClassRef? { HScrollbarClassRef(metatypePointer) }
    
    
}

// MARK: - HScrollbarClass Record

/// The `HScrollbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkHScrollbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HScrollbarClass`.
/// Alternatively, use `HScrollbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HScrollbarClassProtocol {
        /// Untyped pointer to the underlying `GtkHScrollbarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHScrollbarClass>! { get }

    /// Required Initialiser for types conforming to `HScrollbarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HScrollbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkHScrollbarClass` instance.
/// It exposes methods that can operate on this data type through `HScrollbarClassProtocol` conformance.
/// Use `HScrollbarClassRef` only as an `unowned` reference to an existing `GtkHScrollbarClass` instance.
///

public struct HScrollbarClassRef: HScrollbarClassProtocol {
        /// Untyped pointer to the underlying `GtkHScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HScrollbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHScrollbarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHScrollbarClass>?) {
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

    /// Reference intialiser for a related type that implements `HScrollbarClassProtocol`
    @inlinable init<T: HScrollbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HScrollbarClass Record: HScrollbarClassProtocol extension (methods and fields)
public extension HScrollbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHScrollbarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHScrollbarClass>! { return ptr?.assumingMemoryBound(to: GtkHScrollbarClass.self) }


    @inlinable var parentClass: GtkScrollbarClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for HSeparator
public extension HSeparatorClassRef {
    
    /// This getter returns the GLib type identifier registered for `HSeparator`
    static var metatypeReference: GType { gtk_hseparator_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHSeparatorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHSeparatorClass.self) }
    
    static var metatype: GtkHSeparatorClass? { metatypePointer?.pointee } 
    
    static var wrapper: HSeparatorClassRef? { HSeparatorClassRef(metatypePointer) }
    
    
}

// MARK: - HSeparatorClass Record

/// The `HSeparatorClassProtocol` protocol exposes the methods and properties of an underlying `GtkHSeparatorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HSeparatorClass`.
/// Alternatively, use `HSeparatorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HSeparatorClassProtocol {
        /// Untyped pointer to the underlying `GtkHSeparatorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHSeparatorClass>! { get }

    /// Required Initialiser for types conforming to `HSeparatorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HSeparatorClassRef` type acts as a lightweight Swift reference to an underlying `GtkHSeparatorClass` instance.
/// It exposes methods that can operate on this data type through `HSeparatorClassProtocol` conformance.
/// Use `HSeparatorClassRef` only as an `unowned` reference to an existing `GtkHSeparatorClass` instance.
///

public struct HSeparatorClassRef: HSeparatorClassProtocol {
        /// Untyped pointer to the underlying `GtkHSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HSeparatorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHSeparatorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHSeparatorClass>?) {
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

    /// Reference intialiser for a related type that implements `HSeparatorClassProtocol`
    @inlinable init<T: HSeparatorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HSeparatorClass Record: HSeparatorClassProtocol extension (methods and fields)
public extension HSeparatorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHSeparatorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHSeparatorClass>! { return ptr?.assumingMemoryBound(to: GtkHSeparatorClass.self) }


    @inlinable var parentClass: GtkSeparatorClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for HandleBox
public extension HandleBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `HandleBox`
    static var metatypeReference: GType { gtk_handle_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHandleBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHandleBoxClass.self) }
    
    static var metatype: GtkHandleBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: HandleBoxClassRef? { HandleBoxClassRef(metatypePointer) }
    
    
}

// MARK: - HandleBoxClass Record

/// The `HandleBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkHandleBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HandleBoxClass`.
/// Alternatively, use `HandleBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HandleBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkHandleBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHandleBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHandleBoxClass>! { get }

    /// Required Initialiser for types conforming to `HandleBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HandleBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkHandleBoxClass` instance.
/// It exposes methods that can operate on this data type through `HandleBoxClassProtocol` conformance.
/// Use `HandleBoxClassRef` only as an `unowned` reference to an existing `GtkHandleBoxClass` instance.
///

public struct HandleBoxClassRef: HandleBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkHandleBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HandleBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHandleBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHandleBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHandleBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHandleBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `HandleBoxClassProtocol`
    @inlinable init<T: HandleBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HandleBoxClass Record: HandleBoxClassProtocol extension (methods and fields)
public extension HandleBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHandleBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHandleBoxClass>! { return ptr?.assumingMemoryBound(to: GtkHandleBoxClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var childAttached is unavailable because child_attached is void

    // var childDetached is unavailable because child_detached is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for HeaderBarAccessible
public extension HeaderBarAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `HeaderBarAccessible`
    static var metatypeReference: GType { gtk_header_bar_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHeaderBarAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHeaderBarAccessibleClass.self) }
    
    static var metatype: GtkHeaderBarAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: HeaderBarAccessibleClassRef? { HeaderBarAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - HeaderBarAccessibleClass Record

/// The `HeaderBarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBarAccessibleClass`.
/// Alternatively, use `HeaderBarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HeaderBarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkHeaderBarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHeaderBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `HeaderBarAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HeaderBarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `HeaderBarAccessibleClassProtocol` conformance.
/// Use `HeaderBarAccessibleClassRef` only as an `unowned` reference to an existing `GtkHeaderBarAccessibleClass` instance.
///

public struct HeaderBarAccessibleClassRef: HeaderBarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkHeaderBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HeaderBarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHeaderBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHeaderBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHeaderBarAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHeaderBarAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `HeaderBarAccessibleClassProtocol`
    @inlinable init<T: HeaderBarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HeaderBarAccessibleClass Record: HeaderBarAccessibleClassProtocol extension (methods and fields)
public extension HeaderBarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBarAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHeaderBarAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkHeaderBarAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for HeaderBar
public extension HeaderBarClassRef {
    
    /// This getter returns the GLib type identifier registered for `HeaderBar`
    static var metatypeReference: GType { gtk_header_bar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHeaderBarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHeaderBarClass.self) }
    
    static var metatype: GtkHeaderBarClass? { metatypePointer?.pointee } 
    
    static var wrapper: HeaderBarClassRef? { HeaderBarClassRef(metatypePointer) }
    
    
}

// MARK: - HeaderBarClass Record

/// The `HeaderBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBarClass`.
/// Alternatively, use `HeaderBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HeaderBarClassProtocol {
        /// Untyped pointer to the underlying `GtkHeaderBarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHeaderBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarClass>! { get }

    /// Required Initialiser for types conforming to `HeaderBarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `HeaderBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBarClass` instance.
/// It exposes methods that can operate on this data type through `HeaderBarClassProtocol` conformance.
/// Use `HeaderBarClassRef` only as an `unowned` reference to an existing `GtkHeaderBarClass` instance.
///

public struct HeaderBarClassRef: HeaderBarClassProtocol {
        /// Untyped pointer to the underlying `GtkHeaderBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HeaderBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHeaderBarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHeaderBarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHeaderBarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHeaderBarClass>?) {
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

    /// Reference intialiser for a related type that implements `HeaderBarClassProtocol`
    @inlinable init<T: HeaderBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HeaderBarClass Record: HeaderBarClassProtocol extension (methods and fields)
public extension HeaderBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHeaderBarClass>! { return ptr?.assumingMemoryBound(to: GtkHeaderBarClass.self) }


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



/// Metatype/GType declaration for IMContext
public extension IMContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `IMContext`
    static var metatypeReference: GType { gtk_im_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIMContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIMContextClass.self) }
    
    static var metatype: GtkIMContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: IMContextClassRef? { IMContextClassRef(metatypePointer) }
    
    
}

// MARK: - IMContextClass Record

/// The `IMContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextClass`.
/// Alternatively, use `IMContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMContextClassProtocol {
        /// Untyped pointer to the underlying `GtkIMContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextClass>! { get }

    /// Required Initialiser for types conforming to `IMContextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IMContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextClass` instance.
/// It exposes methods that can operate on this data type through `IMContextClassProtocol` conformance.
/// Use `IMContextClassRef` only as an `unowned` reference to an existing `GtkIMContextClass` instance.
///

public struct IMContextClassRef: IMContextClassProtocol {
        /// Untyped pointer to the underlying `GtkIMContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContextClass>?) {
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

    /// Reference intialiser for a related type that implements `IMContextClassProtocol`
    @inlinable init<T: IMContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IMContextClass Record: IMContextClassProtocol extension (methods and fields)
public extension IMContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIMContextClass>! { return ptr?.assumingMemoryBound(to: GtkIMContextClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var preeditStart is unavailable because preedit_start is void

    // var preeditEnd is unavailable because preedit_end is void

    // var preeditChanged is unavailable because preedit_changed is void

    // var commit is unavailable because commit is void

    // var retrieveSurrounding is unavailable because retrieve_surrounding is void

    // var deleteSurrounding is unavailable because delete_surrounding is void

    // var setClientWindow is unavailable because set_client_window is void

    // var getPreeditString is unavailable because get_preedit_string is void

    // var filterKeypress is unavailable because filter_keypress is void

    // var focusIn is unavailable because focus_in is void

    // var focusOut is unavailable because focus_out is void

    // var reset is unavailable because reset is void

    // var setCursorLocation is unavailable because set_cursor_location is void

    // var setUsePreedit is unavailable because set_use_preedit is void

    // var setSurrounding is unavailable because set_surrounding is void

    // var getSurrounding is unavailable because get_surrounding is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

}



