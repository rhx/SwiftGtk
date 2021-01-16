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

/// Metatype/GType declaration for IMContextSimple
public extension IMContextSimpleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_im_context_simple_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIMContextSimpleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIMContextSimpleClass.self) }
    
    static var metatype: GtkIMContextSimpleClass? { metatypePointer?.pointee } 
    
    static var wrapper: IMContextSimpleClassRef? { IMContextSimpleClassRef(metatypePointer) }
    
    
}

// MARK: - IMContextSimpleClass Record

/// The `IMContextSimpleClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextSimpleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextSimpleClass`.
/// Alternatively, use `IMContextSimpleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMContextSimpleClassProtocol {
        /// Untyped pointer to the underlying `GtkIMContextSimpleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContextSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextSimpleClass>! { get }

}

/// The `IMContextSimpleClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextSimpleClass` instance.
/// It exposes methods that can operate on this data type through `IMContextSimpleClassProtocol` conformance.
/// Use `IMContextSimpleClassRef` only as an `unowned` reference to an existing `GtkIMContextSimpleClass` instance.
///

public struct IMContextSimpleClassRef: IMContextSimpleClassProtocol {
        /// Untyped pointer to the underlying `GtkIMContextSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextSimpleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContextSimpleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContextSimpleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContextSimpleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContextSimpleClass>?) {
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

    /// Reference intialiser for a related type that implements `IMContextSimpleClassProtocol`
    @inlinable init<T: IMContextSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IMContextSimpleClass Record: IMContextSimpleClassProtocol extension (methods and fields)
public extension IMContextSimpleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextSimpleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIMContextSimpleClass>! { return ptr?.assumingMemoryBound(to: GtkIMContextSimpleClass.self) }


    @inlinable var parentClass: GtkIMContextClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for IMMulticontext
public extension IMMulticontextClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_im_multicontext_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIMMulticontextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIMMulticontextClass.self) }
    
    static var metatype: GtkIMMulticontextClass? { metatypePointer?.pointee } 
    
    static var wrapper: IMMulticontextClassRef? { IMMulticontextClassRef(metatypePointer) }
    
    
}

// MARK: - IMMulticontextClass Record

/// The `IMMulticontextClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMMulticontextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMMulticontextClass`.
/// Alternatively, use `IMMulticontextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMMulticontextClassProtocol {
        /// Untyped pointer to the underlying `GtkIMMulticontextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMMulticontextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMMulticontextClass>! { get }

}

/// The `IMMulticontextClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMMulticontextClass` instance.
/// It exposes methods that can operate on this data type through `IMMulticontextClassProtocol` conformance.
/// Use `IMMulticontextClassRef` only as an `unowned` reference to an existing `GtkIMMulticontextClass` instance.
///

public struct IMMulticontextClassRef: IMMulticontextClassProtocol {
        /// Untyped pointer to the underlying `GtkIMMulticontextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMMulticontextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMMulticontextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMMulticontextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMMulticontextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMMulticontextClass>?) {
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

    /// Reference intialiser for a related type that implements `IMMulticontextClassProtocol`
    @inlinable init<T: IMMulticontextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IMMulticontextClass Record: IMMulticontextClassProtocol extension (methods and fields)
public extension IMMulticontextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMMulticontextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIMMulticontextClass>! { return ptr?.assumingMemoryBound(to: GtkIMMulticontextClass.self) }


    @inlinable var parentClass: GtkIMContextClass {
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



/// Metatype/GType declaration for KeyvalTrigger
public extension KeyvalTriggerClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_keyval_trigger_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkKeyvalTriggerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkKeyvalTriggerClass.self) }
    
    static var metatype: GtkKeyvalTriggerClass? { metatypePointer?.pointee } 
    
    static var wrapper: KeyvalTriggerClassRef? { KeyvalTriggerClassRef(metatypePointer) }
    
    
}

// MARK: - KeyvalTriggerClass Record

/// The `KeyvalTriggerClassProtocol` protocol exposes the methods and properties of an underlying `GtkKeyvalTriggerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `KeyvalTriggerClass`.
/// Alternatively, use `KeyvalTriggerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol KeyvalTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkKeyvalTriggerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkKeyvalTriggerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkKeyvalTriggerClass>! { get }

}

/// The `KeyvalTriggerClassRef` type acts as a lightweight Swift reference to an underlying `GtkKeyvalTriggerClass` instance.
/// It exposes methods that can operate on this data type through `KeyvalTriggerClassProtocol` conformance.
/// Use `KeyvalTriggerClassRef` only as an `unowned` reference to an existing `GtkKeyvalTriggerClass` instance.
///

public struct KeyvalTriggerClassRef: KeyvalTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkKeyvalTriggerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension KeyvalTriggerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkKeyvalTriggerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkKeyvalTriggerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkKeyvalTriggerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkKeyvalTriggerClass>?) {
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

    /// Reference intialiser for a related type that implements `KeyvalTriggerClassProtocol`
    @inlinable init<T: KeyvalTriggerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyvalTriggerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: KeyvalTriggerClass Record: KeyvalTriggerClassProtocol extension (methods and fields)
public extension KeyvalTriggerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkKeyvalTriggerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkKeyvalTriggerClass>! { return ptr?.assumingMemoryBound(to: GtkKeyvalTriggerClass.self) }



}



