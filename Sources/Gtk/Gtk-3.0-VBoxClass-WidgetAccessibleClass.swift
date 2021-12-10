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

/// Metatype/GType declaration for VBox
public extension VBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `VBox`
    static var metatypeReference: GType { gtk_vbox_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVBoxClass.self) }
    
    static var metatype: GtkVBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: VBoxClassRef? { VBoxClassRef(metatypePointer) }
    
    
}

// MARK: - VBoxClass Record


///
/// The `VBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkVBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VBoxClass`.
/// Alternatively, use `VBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkVBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVBoxClass>! { get }

    /// Required Initialiser for types conforming to `VBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkVBoxClass` instance.
/// It exposes methods that can operate on this data type through `VBoxClassProtocol` conformance.
/// Use `VBoxClassRef` only as an `unowned` reference to an existing `GtkVBoxClass` instance.
///
public struct VBoxClassRef: VBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkVBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `VBoxClassProtocol`
    @inlinable init<T: VBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VBoxClass Record: VBoxClassProtocol extension (methods and fields)
public extension VBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVBoxClass>! { return ptr?.assumingMemoryBound(to: GtkVBoxClass.self) }


    @inlinable var parentClass: GtkBoxClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for VButtonBox
public extension VButtonBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `VButtonBox`
    static var metatypeReference: GType { gtk_vbutton_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVButtonBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVButtonBoxClass.self) }
    
    static var metatype: GtkVButtonBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: VButtonBoxClassRef? { VButtonBoxClassRef(metatypePointer) }
    
    
}

// MARK: - VButtonBoxClass Record


///
/// The `VButtonBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkVButtonBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VButtonBoxClass`.
/// Alternatively, use `VButtonBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VButtonBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkVButtonBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVButtonBoxClass>! { get }

    /// Required Initialiser for types conforming to `VButtonBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VButtonBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkVButtonBoxClass` instance.
/// It exposes methods that can operate on this data type through `VButtonBoxClassProtocol` conformance.
/// Use `VButtonBoxClassRef` only as an `unowned` reference to an existing `GtkVButtonBoxClass` instance.
///
public struct VButtonBoxClassRef: VButtonBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkVButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VButtonBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVButtonBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVButtonBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `VButtonBoxClassProtocol`
    @inlinable init<T: VButtonBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VButtonBoxClass Record: VButtonBoxClassProtocol extension (methods and fields)
public extension VButtonBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVButtonBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVButtonBoxClass>! { return ptr?.assumingMemoryBound(to: GtkVButtonBoxClass.self) }


    @inlinable var parentClass: GtkButtonBoxClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for VPaned
public extension VPanedClassRef {
    
    /// This getter returns the GLib type identifier registered for `VPaned`
    static var metatypeReference: GType { gtk_vpaned_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVPanedClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVPanedClass.self) }
    
    static var metatype: GtkVPanedClass? { metatypePointer?.pointee } 
    
    static var wrapper: VPanedClassRef? { VPanedClassRef(metatypePointer) }
    
    
}

// MARK: - VPanedClass Record


///
/// The `VPanedClassProtocol` protocol exposes the methods and properties of an underlying `GtkVPanedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VPanedClass`.
/// Alternatively, use `VPanedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VPanedClassProtocol {
        /// Untyped pointer to the underlying `GtkVPanedClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVPanedClass>! { get }

    /// Required Initialiser for types conforming to `VPanedClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VPanedClassRef` type acts as a lightweight Swift reference to an underlying `GtkVPanedClass` instance.
/// It exposes methods that can operate on this data type through `VPanedClassProtocol` conformance.
/// Use `VPanedClassRef` only as an `unowned` reference to an existing `GtkVPanedClass` instance.
///
public struct VPanedClassRef: VPanedClassProtocol {
        /// Untyped pointer to the underlying `GtkVPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VPanedClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVPanedClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVPanedClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVPanedClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVPanedClass>?) {
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

    /// Reference intialiser for a related type that implements `VPanedClassProtocol`
    @inlinable init<T: VPanedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VPanedClass Record: VPanedClassProtocol extension (methods and fields)
public extension VPanedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVPanedClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVPanedClass>! { return ptr?.assumingMemoryBound(to: GtkVPanedClass.self) }


    @inlinable var parentClass: GtkPanedClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for VScale
public extension VScaleClassRef {
    
    /// This getter returns the GLib type identifier registered for `VScale`
    static var metatypeReference: GType { gtk_vscale_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVScaleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVScaleClass.self) }
    
    static var metatype: GtkVScaleClass? { metatypePointer?.pointee } 
    
    static var wrapper: VScaleClassRef? { VScaleClassRef(metatypePointer) }
    
    
}

// MARK: - VScaleClass Record


///
/// The `VScaleClassProtocol` protocol exposes the methods and properties of an underlying `GtkVScaleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VScaleClass`.
/// Alternatively, use `VScaleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkVScaleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVScaleClass>! { get }

    /// Required Initialiser for types conforming to `VScaleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VScaleClassRef` type acts as a lightweight Swift reference to an underlying `GtkVScaleClass` instance.
/// It exposes methods that can operate on this data type through `VScaleClassProtocol` conformance.
/// Use `VScaleClassRef` only as an `unowned` reference to an existing `GtkVScaleClass` instance.
///
public struct VScaleClassRef: VScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkVScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VScaleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVScaleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVScaleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVScaleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVScaleClass>?) {
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

    /// Reference intialiser for a related type that implements `VScaleClassProtocol`
    @inlinable init<T: VScaleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VScaleClass Record: VScaleClassProtocol extension (methods and fields)
public extension VScaleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVScaleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVScaleClass>! { return ptr?.assumingMemoryBound(to: GtkVScaleClass.self) }


    @inlinable var parentClass: GtkScaleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for VScrollbar
public extension VScrollbarClassRef {
    
    /// This getter returns the GLib type identifier registered for `VScrollbar`
    static var metatypeReference: GType { gtk_vscrollbar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVScrollbarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVScrollbarClass.self) }
    
    static var metatype: GtkVScrollbarClass? { metatypePointer?.pointee } 
    
    static var wrapper: VScrollbarClassRef? { VScrollbarClassRef(metatypePointer) }
    
    
}

// MARK: - VScrollbarClass Record


///
/// The `VScrollbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkVScrollbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VScrollbarClass`.
/// Alternatively, use `VScrollbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VScrollbarClassProtocol {
        /// Untyped pointer to the underlying `GtkVScrollbarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVScrollbarClass>! { get }

    /// Required Initialiser for types conforming to `VScrollbarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VScrollbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkVScrollbarClass` instance.
/// It exposes methods that can operate on this data type through `VScrollbarClassProtocol` conformance.
/// Use `VScrollbarClassRef` only as an `unowned` reference to an existing `GtkVScrollbarClass` instance.
///
public struct VScrollbarClassRef: VScrollbarClassProtocol {
        /// Untyped pointer to the underlying `GtkVScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VScrollbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVScrollbarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVScrollbarClass>?) {
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

    /// Reference intialiser for a related type that implements `VScrollbarClassProtocol`
    @inlinable init<T: VScrollbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VScrollbarClass Record: VScrollbarClassProtocol extension (methods and fields)
public extension VScrollbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVScrollbarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVScrollbarClass>! { return ptr?.assumingMemoryBound(to: GtkVScrollbarClass.self) }


    @inlinable var parentClass: GtkScrollbarClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for VSeparator
public extension VSeparatorClassRef {
    
    /// This getter returns the GLib type identifier registered for `VSeparator`
    static var metatypeReference: GType { gtk_vseparator_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVSeparatorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVSeparatorClass.self) }
    
    static var metatype: GtkVSeparatorClass? { metatypePointer?.pointee } 
    
    static var wrapper: VSeparatorClassRef? { VSeparatorClassRef(metatypePointer) }
    
    
}

// MARK: - VSeparatorClass Record


///
/// The `VSeparatorClassProtocol` protocol exposes the methods and properties of an underlying `GtkVSeparatorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VSeparatorClass`.
/// Alternatively, use `VSeparatorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VSeparatorClassProtocol {
        /// Untyped pointer to the underlying `GtkVSeparatorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVSeparatorClass>! { get }

    /// Required Initialiser for types conforming to `VSeparatorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VSeparatorClassRef` type acts as a lightweight Swift reference to an underlying `GtkVSeparatorClass` instance.
/// It exposes methods that can operate on this data type through `VSeparatorClassProtocol` conformance.
/// Use `VSeparatorClassRef` only as an `unowned` reference to an existing `GtkVSeparatorClass` instance.
///
public struct VSeparatorClassRef: VSeparatorClassProtocol {
        /// Untyped pointer to the underlying `GtkVSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VSeparatorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVSeparatorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVSeparatorClass>?) {
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

    /// Reference intialiser for a related type that implements `VSeparatorClassProtocol`
    @inlinable init<T: VSeparatorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VSeparatorClass Record: VSeparatorClassProtocol extension (methods and fields)
public extension VSeparatorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVSeparatorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVSeparatorClass>! { return ptr?.assumingMemoryBound(to: GtkVSeparatorClass.self) }


    @inlinable var parentClass: GtkSeparatorClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Viewport
public extension ViewportClassRef {
    
    /// This getter returns the GLib type identifier registered for `Viewport`
    static var metatypeReference: GType { gtk_viewport_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkViewportClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkViewportClass.self) }
    
    static var metatype: GtkViewportClass? { metatypePointer?.pointee } 
    
    static var wrapper: ViewportClassRef? { ViewportClassRef(metatypePointer) }
    
    
}

// MARK: - ViewportClass Record


///
/// The `ViewportClassProtocol` protocol exposes the methods and properties of an underlying `GtkViewportClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ViewportClass`.
/// Alternatively, use `ViewportClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ViewportClassProtocol {
        /// Untyped pointer to the underlying `GtkViewportClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkViewportClass` instance.
    var _ptr: UnsafeMutablePointer<GtkViewportClass>! { get }

    /// Required Initialiser for types conforming to `ViewportClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ViewportClassRef` type acts as a lightweight Swift reference to an underlying `GtkViewportClass` instance.
/// It exposes methods that can operate on this data type through `ViewportClassProtocol` conformance.
/// Use `ViewportClassRef` only as an `unowned` reference to an existing `GtkViewportClass` instance.
///
public struct ViewportClassRef: ViewportClassProtocol {
        /// Untyped pointer to the underlying `GtkViewportClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ViewportClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkViewportClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkViewportClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkViewportClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkViewportClass>?) {
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

    /// Reference intialiser for a related type that implements `ViewportClassProtocol`
    @inlinable init<T: ViewportClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ViewportClass Record: ViewportClassProtocol extension (methods and fields)
public extension ViewportClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkViewportClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkViewportClass>! { return ptr?.assumingMemoryBound(to: GtkViewportClass.self) }


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



/// Metatype/GType declaration for VolumeButton
public extension VolumeButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `VolumeButton`
    static var metatypeReference: GType { gtk_volume_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVolumeButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVolumeButtonClass.self) }
    
    static var metatype: GtkVolumeButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: VolumeButtonClassRef? { VolumeButtonClassRef(metatypePointer) }
    
    
}

// MARK: - VolumeButtonClass Record


///
/// The `VolumeButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkVolumeButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeButtonClass`.
/// Alternatively, use `VolumeButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VolumeButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkVolumeButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVolumeButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVolumeButtonClass>! { get }

    /// Required Initialiser for types conforming to `VolumeButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VolumeButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkVolumeButtonClass` instance.
/// It exposes methods that can operate on this data type through `VolumeButtonClassProtocol` conformance.
/// Use `VolumeButtonClassRef` only as an `unowned` reference to an existing `GtkVolumeButtonClass` instance.
///
public struct VolumeButtonClassRef: VolumeButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkVolumeButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VolumeButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVolumeButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVolumeButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVolumeButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVolumeButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `VolumeButtonClassProtocol`
    @inlinable init<T: VolumeButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VolumeButtonClass Record: VolumeButtonClassProtocol extension (methods and fields)
public extension VolumeButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVolumeButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVolumeButtonClass>! { return ptr?.assumingMemoryBound(to: GtkVolumeButtonClass.self) }


    @inlinable var parentClass: GtkScaleButtonClass {
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



/// Metatype/GType declaration for WidgetAccessible
public extension WidgetAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `WidgetAccessible`
    static var metatypeReference: GType { gtk_widget_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWidgetAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWidgetAccessibleClass.self) }
    
    static var metatype: GtkWidgetAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: WidgetAccessibleClassRef? { WidgetAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - WidgetAccessibleClass Record


///
/// The `WidgetAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetAccessibleClass`.
/// Alternatively, use `WidgetAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WidgetAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkWidgetAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `WidgetAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `WidgetAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `WidgetAccessibleClassProtocol` conformance.
/// Use `WidgetAccessibleClassRef` only as an `unowned` reference to an existing `GtkWidgetAccessibleClass` instance.
///
public struct WidgetAccessibleClassRef: WidgetAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkWidgetAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidgetAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidgetAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidgetAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidgetAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `WidgetAccessibleClassProtocol`
    @inlinable init<T: WidgetAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WidgetAccessibleClass Record: WidgetAccessibleClassProtocol extension (methods and fields)
public extension WidgetAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWidgetAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkWidgetAccessibleClass.self) }


    @inlinable var parentClass: GtkAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var notifyGtk is unavailable because notify_gtk is void

}



