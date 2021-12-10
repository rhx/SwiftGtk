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

/// Metatype/GType declaration for Gesture
public extension GestureClassRef {
    
    /// This getter returns the GLib type identifier registered for `Gesture`
    static var metatypeReference: GType { gtk_gesture_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureClass.self) }
    
    static var metatype: GtkGestureClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureClassRef? { GestureClassRef(metatypePointer) }
    
    
}

// MARK: - GestureClass Record


///
/// The `GestureClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureClass`.
/// Alternatively, use `GestureClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureClass>! { get }

    /// Required Initialiser for types conforming to `GestureClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureClass` instance.
/// It exposes methods that can operate on this data type through `GestureClassProtocol` conformance.
/// Use `GestureClassRef` only as an `unowned` reference to an existing `GtkGestureClass` instance.
///
public struct GestureClassRef: GestureClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureClassProtocol`
    @inlinable init<T: GestureClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureClass Record: GestureClassProtocol extension (methods and fields)
public extension GestureClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureClass>! { return ptr?.assumingMemoryBound(to: GtkGestureClass.self) }



}



/// Metatype/GType declaration for GestureDrag
public extension GestureDragClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureDrag`
    static var metatypeReference: GType { gtk_gesture_drag_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureDragClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureDragClass.self) }
    
    static var metatype: GtkGestureDragClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureDragClassRef? { GestureDragClassRef(metatypePointer) }
    
    
}

// MARK: - GestureDragClass Record


///
/// The `GestureDragClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureDragClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureDragClass`.
/// Alternatively, use `GestureDragClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureDragClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureDragClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureDragClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureDragClass>! { get }

    /// Required Initialiser for types conforming to `GestureDragClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureDragClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureDragClass` instance.
/// It exposes methods that can operate on this data type through `GestureDragClassProtocol` conformance.
/// Use `GestureDragClassRef` only as an `unowned` reference to an existing `GtkGestureDragClass` instance.
///
public struct GestureDragClassRef: GestureDragClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureDragClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureDragClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureDragClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureDragClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureDragClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureDragClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureDragClassProtocol`
    @inlinable init<T: GestureDragClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureDragClass Record: GestureDragClassProtocol extension (methods and fields)
public extension GestureDragClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureDragClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureDragClass>! { return ptr?.assumingMemoryBound(to: GtkGestureDragClass.self) }



}



/// Metatype/GType declaration for GestureLongPress
public extension GestureLongPressClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureLongPress`
    static var metatypeReference: GType { gtk_gesture_long_press_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureLongPressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureLongPressClass.self) }
    
    static var metatype: GtkGestureLongPressClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureLongPressClassRef? { GestureLongPressClassRef(metatypePointer) }
    
    
}

// MARK: - GestureLongPressClass Record


///
/// The `GestureLongPressClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureLongPressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureLongPressClass`.
/// Alternatively, use `GestureLongPressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureLongPressClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureLongPressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureLongPressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureLongPressClass>! { get }

    /// Required Initialiser for types conforming to `GestureLongPressClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureLongPressClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureLongPressClass` instance.
/// It exposes methods that can operate on this data type through `GestureLongPressClassProtocol` conformance.
/// Use `GestureLongPressClassRef` only as an `unowned` reference to an existing `GtkGestureLongPressClass` instance.
///
public struct GestureLongPressClassRef: GestureLongPressClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureLongPressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureLongPressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureLongPressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureLongPressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureLongPressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureLongPressClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureLongPressClassProtocol`
    @inlinable init<T: GestureLongPressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureLongPressClass Record: GestureLongPressClassProtocol extension (methods and fields)
public extension GestureLongPressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureLongPressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureLongPressClass>! { return ptr?.assumingMemoryBound(to: GtkGestureLongPressClass.self) }



}



/// Metatype/GType declaration for GestureMultiPress
public extension GestureMultiPressClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureMultiPress`
    static var metatypeReference: GType { gtk_gesture_multi_press_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureMultiPressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureMultiPressClass.self) }
    
    static var metatype: GtkGestureMultiPressClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureMultiPressClassRef? { GestureMultiPressClassRef(metatypePointer) }
    
    
}

// MARK: - GestureMultiPressClass Record


///
/// The `GestureMultiPressClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureMultiPressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureMultiPressClass`.
/// Alternatively, use `GestureMultiPressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureMultiPressClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureMultiPressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureMultiPressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureMultiPressClass>! { get }

    /// Required Initialiser for types conforming to `GestureMultiPressClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureMultiPressClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureMultiPressClass` instance.
/// It exposes methods that can operate on this data type through `GestureMultiPressClassProtocol` conformance.
/// Use `GestureMultiPressClassRef` only as an `unowned` reference to an existing `GtkGestureMultiPressClass` instance.
///
public struct GestureMultiPressClassRef: GestureMultiPressClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureMultiPressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureMultiPressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureMultiPressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureMultiPressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureMultiPressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureMultiPressClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureMultiPressClassProtocol`
    @inlinable init<T: GestureMultiPressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureMultiPressClass Record: GestureMultiPressClassProtocol extension (methods and fields)
public extension GestureMultiPressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureMultiPressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureMultiPressClass>! { return ptr?.assumingMemoryBound(to: GtkGestureMultiPressClass.self) }



}



/// Metatype/GType declaration for GesturePan
public extension GesturePanClassRef {
    
    /// This getter returns the GLib type identifier registered for `GesturePan`
    static var metatypeReference: GType { gtk_gesture_pan_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGesturePanClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGesturePanClass.self) }
    
    static var metatype: GtkGesturePanClass? { metatypePointer?.pointee } 
    
    static var wrapper: GesturePanClassRef? { GesturePanClassRef(metatypePointer) }
    
    
}

// MARK: - GesturePanClass Record


///
/// The `GesturePanClassProtocol` protocol exposes the methods and properties of an underlying `GtkGesturePanClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GesturePanClass`.
/// Alternatively, use `GesturePanClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GesturePanClassProtocol {
        /// Untyped pointer to the underlying `GtkGesturePanClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGesturePanClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGesturePanClass>! { get }

    /// Required Initialiser for types conforming to `GesturePanClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GesturePanClassRef` type acts as a lightweight Swift reference to an underlying `GtkGesturePanClass` instance.
/// It exposes methods that can operate on this data type through `GesturePanClassProtocol` conformance.
/// Use `GesturePanClassRef` only as an `unowned` reference to an existing `GtkGesturePanClass` instance.
///
public struct GesturePanClassRef: GesturePanClassProtocol {
        /// Untyped pointer to the underlying `GtkGesturePanClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GesturePanClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGesturePanClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGesturePanClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGesturePanClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGesturePanClass>?) {
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

    /// Reference intialiser for a related type that implements `GesturePanClassProtocol`
    @inlinable init<T: GesturePanClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GesturePanClass Record: GesturePanClassProtocol extension (methods and fields)
public extension GesturePanClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGesturePanClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGesturePanClass>! { return ptr?.assumingMemoryBound(to: GtkGesturePanClass.self) }



}



/// Metatype/GType declaration for GestureRotate
public extension GestureRotateClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureRotate`
    static var metatypeReference: GType { gtk_gesture_rotate_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureRotateClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureRotateClass.self) }
    
    static var metatype: GtkGestureRotateClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureRotateClassRef? { GestureRotateClassRef(metatypePointer) }
    
    
}

// MARK: - GestureRotateClass Record


///
/// The `GestureRotateClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureRotateClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureRotateClass`.
/// Alternatively, use `GestureRotateClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureRotateClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureRotateClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureRotateClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureRotateClass>! { get }

    /// Required Initialiser for types conforming to `GestureRotateClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureRotateClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureRotateClass` instance.
/// It exposes methods that can operate on this data type through `GestureRotateClassProtocol` conformance.
/// Use `GestureRotateClassRef` only as an `unowned` reference to an existing `GtkGestureRotateClass` instance.
///
public struct GestureRotateClassRef: GestureRotateClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureRotateClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureRotateClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureRotateClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureRotateClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureRotateClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureRotateClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureRotateClassProtocol`
    @inlinable init<T: GestureRotateClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureRotateClass Record: GestureRotateClassProtocol extension (methods and fields)
public extension GestureRotateClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureRotateClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureRotateClass>! { return ptr?.assumingMemoryBound(to: GtkGestureRotateClass.self) }



}



/// Metatype/GType declaration for GestureSingle
public extension GestureSingleClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureSingle`
    static var metatypeReference: GType { gtk_gesture_single_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureSingleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureSingleClass.self) }
    
    static var metatype: GtkGestureSingleClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureSingleClassRef? { GestureSingleClassRef(metatypePointer) }
    
    
}

// MARK: - GestureSingleClass Record


///
/// The `GestureSingleClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSingleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSingleClass`.
/// Alternatively, use `GestureSingleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureSingleClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureSingleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureSingleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureSingleClass>! { get }

    /// Required Initialiser for types conforming to `GestureSingleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureSingleClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSingleClass` instance.
/// It exposes methods that can operate on this data type through `GestureSingleClassProtocol` conformance.
/// Use `GestureSingleClassRef` only as an `unowned` reference to an existing `GtkGestureSingleClass` instance.
///
public struct GestureSingleClassRef: GestureSingleClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureSingleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureSingleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureSingleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureSingleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureSingleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureSingleClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureSingleClassProtocol`
    @inlinable init<T: GestureSingleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureSingleClass Record: GestureSingleClassProtocol extension (methods and fields)
public extension GestureSingleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSingleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureSingleClass>! { return ptr?.assumingMemoryBound(to: GtkGestureSingleClass.self) }



}



/// Metatype/GType declaration for GestureStylus
public extension GestureStylusClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureStylus`
    static var metatypeReference: GType { gtk_gesture_stylus_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureStylusClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureStylusClass.self) }
    
    static var metatype: GtkGestureStylusClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureStylusClassRef? { GestureStylusClassRef(metatypePointer) }
    
    
}

// MARK: - GestureStylusClass Record


///
/// The `GestureStylusClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureStylusClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureStylusClass`.
/// Alternatively, use `GestureStylusClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureStylusClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureStylusClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureStylusClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureStylusClass>! { get }

    /// Required Initialiser for types conforming to `GestureStylusClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureStylusClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureStylusClass` instance.
/// It exposes methods that can operate on this data type through `GestureStylusClassProtocol` conformance.
/// Use `GestureStylusClassRef` only as an `unowned` reference to an existing `GtkGestureStylusClass` instance.
///
public struct GestureStylusClassRef: GestureStylusClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureStylusClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureStylusClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureStylusClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureStylusClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureStylusClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureStylusClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureStylusClassProtocol`
    @inlinable init<T: GestureStylusClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureStylusClass Record: GestureStylusClassProtocol extension (methods and fields)
public extension GestureStylusClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureStylusClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureStylusClass>! { return ptr?.assumingMemoryBound(to: GtkGestureStylusClass.self) }



}



/// Metatype/GType declaration for GestureSwipe
public extension GestureSwipeClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureSwipe`
    static var metatypeReference: GType { gtk_gesture_swipe_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureSwipeClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureSwipeClass.self) }
    
    static var metatype: GtkGestureSwipeClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureSwipeClassRef? { GestureSwipeClassRef(metatypePointer) }
    
    
}

// MARK: - GestureSwipeClass Record


///
/// The `GestureSwipeClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSwipeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSwipeClass`.
/// Alternatively, use `GestureSwipeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureSwipeClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureSwipeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureSwipeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureSwipeClass>! { get }

    /// Required Initialiser for types conforming to `GestureSwipeClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureSwipeClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSwipeClass` instance.
/// It exposes methods that can operate on this data type through `GestureSwipeClassProtocol` conformance.
/// Use `GestureSwipeClassRef` only as an `unowned` reference to an existing `GtkGestureSwipeClass` instance.
///
public struct GestureSwipeClassRef: GestureSwipeClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureSwipeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureSwipeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureSwipeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureSwipeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureSwipeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureSwipeClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureSwipeClassProtocol`
    @inlinable init<T: GestureSwipeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureSwipeClass Record: GestureSwipeClassProtocol extension (methods and fields)
public extension GestureSwipeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSwipeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureSwipeClass>! { return ptr?.assumingMemoryBound(to: GtkGestureSwipeClass.self) }



}



/// Metatype/GType declaration for GestureZoom
public extension GestureZoomClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureZoom`
    static var metatypeReference: GType { gtk_gesture_zoom_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureZoomClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureZoomClass.self) }
    
    static var metatype: GtkGestureZoomClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureZoomClassRef? { GestureZoomClassRef(metatypePointer) }
    
    
}

// MARK: - GestureZoomClass Record


///
/// The `GestureZoomClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureZoomClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureZoomClass`.
/// Alternatively, use `GestureZoomClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureZoomClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureZoomClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureZoomClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureZoomClass>! { get }

    /// Required Initialiser for types conforming to `GestureZoomClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GestureZoomClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureZoomClass` instance.
/// It exposes methods that can operate on this data type through `GestureZoomClassProtocol` conformance.
/// Use `GestureZoomClassRef` only as an `unowned` reference to an existing `GtkGestureZoomClass` instance.
///
public struct GestureZoomClassRef: GestureZoomClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureZoomClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureZoomClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureZoomClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureZoomClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureZoomClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureZoomClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureZoomClassProtocol`
    @inlinable init<T: GestureZoomClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureZoomClass Record: GestureZoomClassProtocol extension (methods and fields)
public extension GestureZoomClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureZoomClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureZoomClass>! { return ptr?.assumingMemoryBound(to: GtkGestureZoomClass.self) }



}



// MARK: - Gradient Record

/// GtkGradient is a boxed type that represents a gradient.
/// It is the result of parsing a
/// [gradient expression](#gtkcssprovider-gradients).
/// To obtain the gradient represented by a GtkGradient, it has to
/// be resolved with `gtk_gradient_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and constructs a `cairo_pattern_t` value.
/// 
/// It is not normally necessary to deal directly with `GtkGradients`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkGradient` is deprecated. It was used internally by GTK’s CSS engine
/// to represent gradients. As its handling is not conforming to modern
/// web standards, it is not used anymore. If you want to use gradients in
/// your own code, please use Cairo directly.
///
/// The `GradientProtocol` protocol exposes the methods and properties of an underlying `GtkGradient` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Gradient`.
/// Alternatively, use `GradientRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GradientProtocol {
        /// Untyped pointer to the underlying `GtkGradient` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGradient` instance.
    var gradient_ptr: UnsafeMutablePointer<GtkGradient>! { get }

    /// Required Initialiser for types conforming to `GradientProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// GtkGradient is a boxed type that represents a gradient.
/// It is the result of parsing a
/// [gradient expression](#gtkcssprovider-gradients).
/// To obtain the gradient represented by a GtkGradient, it has to
/// be resolved with `gtk_gradient_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and constructs a `cairo_pattern_t` value.
/// 
/// It is not normally necessary to deal directly with `GtkGradients`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkGradient` is deprecated. It was used internally by GTK’s CSS engine
/// to represent gradients. As its handling is not conforming to modern
/// web standards, it is not used anymore. If you want to use gradients in
/// your own code, please use Cairo directly.
///
/// The `GradientRef` type acts as a lightweight Swift reference to an underlying `GtkGradient` instance.
/// It exposes methods that can operate on this data type through `GradientProtocol` conformance.
/// Use `GradientRef` only as an `unowned` reference to an existing `GtkGradient` instance.
///
public struct GradientRef: GradientProtocol {
        /// Untyped pointer to the underlying `GtkGradient` instance.
    /// For type-safe access, use the generated, typed pointer `gradient_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GradientRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGradient>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGradient>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGradient>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGradient>?) {
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

    /// Reference intialiser for a related type that implements `GradientProtocol`
    @inlinable init<T: GradientProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable init(linear x0: Double, y0: Double, x1: Double, y1: Double) {
        let rv = gtk_gradient_new_linear(gdouble(x0), gdouble(y0), gdouble(x1), gdouble(y1))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable init(radial x0: Double, y0: Double, radius0: Double, x1: Double, y1: Double, radius1: Double) {
        let rv = gtk_gradient_new_radial(gdouble(x0), gdouble(y0), gdouble(radius0), gdouble(x1), gdouble(y1), gdouble(radius1))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable static func new(linear x0: Double, y0: Double, x1: Double, y1: Double) -> GradientRef! {
        guard let rv = GradientRef(gconstpointer: gconstpointer(gtk_gradient_new_linear(gdouble(x0), gdouble(y0), gdouble(x1), gdouble(y1)))) else { return nil }
        return rv
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable static func new(radial x0: Double, y0: Double, radius0: Double, x1: Double, y1: Double, radius1: Double) -> GradientRef! {
        guard let rv = GradientRef(gconstpointer: gconstpointer(gtk_gradient_new_radial(gdouble(x0), gdouble(y0), gdouble(radius0), gdouble(x1), gdouble(y1), gdouble(radius1)))) else { return nil }
        return rv
    }
}

/// GtkGradient is a boxed type that represents a gradient.
/// It is the result of parsing a
/// [gradient expression](#gtkcssprovider-gradients).
/// To obtain the gradient represented by a GtkGradient, it has to
/// be resolved with `gtk_gradient_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and constructs a `cairo_pattern_t` value.
/// 
/// It is not normally necessary to deal directly with `GtkGradients`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkGradient` is deprecated. It was used internally by GTK’s CSS engine
/// to represent gradients. As its handling is not conforming to modern
/// web standards, it is not used anymore. If you want to use gradients in
/// your own code, please use Cairo directly.
///
/// The `Gradient` type acts as a reference-counted owner of an underlying `GtkGradient` instance.
/// It provides the methods that can operate on this data type through `GradientProtocol` conformance.
/// Use `Gradient` as a strong reference or owner of a `GtkGradient` instance.
///
open class Gradient: GradientProtocol {
        /// Untyped pointer to the underlying `GtkGradient` instance.
    /// For type-safe access, use the generated, typed pointer `gradient_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gradient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGradient>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gradient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGradient>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gradient` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gradient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gradient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGradient>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gradient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGradient>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGradient`.
    /// i.e., ownership is transferred to the `Gradient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGradient>) {
        ptr = UnsafeMutableRawPointer(op)
        g_object_ref(ptr.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Reference intialiser for a related type that implements `GradientProtocol`
    /// Will retain `GtkGradient`.
    /// - Parameter other: an instance of a related type that implements `GradientProtocol`
    @inlinable public init<T: GradientProtocol>(_ other: T) {
        ptr = other.ptr
        g_object_ref(ptr.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Releases the underlying `GtkGradient` instance using `g_object_unref`.
    deinit {
        g_object_unref(ptr.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_object_ref(ptr.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_object_ref(ptr.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_object_ref(ptr.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_object_ref(ptr.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable public init(linear x0: Double, y0: Double, x1: Double, y1: Double) {
        let rv = gtk_gradient_new_linear(gdouble(x0), gdouble(y0), gdouble(x1), gdouble(y1))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable public init(radial x0: Double, y0: Double, radius0: Double, x1: Double, y1: Double, radius1: Double) {
        let rv = gtk_gradient_new_radial(gdouble(x0), gdouble(y0), gdouble(radius0), gdouble(x1), gdouble(y1), gdouble(radius1))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable public static func new(linear x0: Double, y0: Double, x1: Double, y1: Double) -> Gradient! {
        guard let rv = Gradient(gconstpointer: gconstpointer(gtk_gradient_new_linear(gdouble(x0), gdouble(y0), gdouble(x1), gdouble(y1)))) else { return nil }
        return rv
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable public static func new(radial x0: Double, y0: Double, radius0: Double, x1: Double, y1: Double, radius1: Double) -> Gradient! {
        guard let rv = Gradient(gconstpointer: gconstpointer(gtk_gradient_new_radial(gdouble(x0), gdouble(y0), gdouble(radius0), gdouble(x1), gdouble(y1), gdouble(radius1)))) else { return nil }
        return rv
    }

}

// MARK: no Gradient properties

// MARK: no Gradient signals

// MARK: Gradient has no signals
// MARK: Gradient Record: GradientProtocol extension (methods and fields)
public extension GradientProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGradient` instance.
    @inlinable var gradient_ptr: UnsafeMutablePointer<GtkGradient>! { return ptr?.assumingMemoryBound(to: GtkGradient.self) }

    /// Adds a stop color to `gradient`.
    ///
    /// **add_color_stop is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable func addColorStop<SymbolicColorT: SymbolicColorProtocol>(offset: Double, color: SymbolicColorT) {
        gtk_gradient_add_color_stop(gradient_ptr, gdouble(offset), color.symbolic_color_ptr)
    
    }

    /// Increases the reference count of `gradient`.
    ///
    /// **ref is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @discardableResult @inlinable func ref() -> GradientRef! {
        guard let rv = GradientRef(gconstpointer: gconstpointer(g_object_ref(gradient_ptr))) else { return nil }
        return rv
    }

    /// If `gradient` is resolvable, `resolved_gradient` will be filled in
    /// with the resolved gradient as a cairo_pattern_t, and `true` will
    /// be returned. Generally, if `gradient` can’t be resolved, it is
    /// due to it being defined on top of a named color that doesn't
    /// exist in `props`.
    ///
    /// **resolve is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable func resolve<StylePropertiesT: StylePropertiesProtocol>(props: StylePropertiesT, resolvedGradient: UnsafeMutablePointer<UnsafeMutablePointer<cairo_pattern_t>?>!) -> Bool {
        let rv = ((gtk_gradient_resolve(gradient_ptr, props.style_properties_ptr, resolvedGradient)) != 0)
        return rv
    }

    @inlinable func resolveFor<StyleContextT: StyleContextProtocol>(context: StyleContextT) -> Cairo.PatternRef! {
        let rv = Cairo.PatternRef(gtk_gradient_resolve_for_context(gradient_ptr, context.style_context_ptr))
        return rv
    }

    /// Creates a string representation for `gradient` that is suitable
    /// for using in GTK CSS files.
    ///
    /// **to_string is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable func toString() -> String! {
        let rv = gtk_gradient_to_string(gradient_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Decreases the reference count of `gradient`, freeing its memory
    /// if the reference count reaches 0.
    ///
    /// **unref is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated)
    @inlinable func unref() {
        g_object_unref(gradient_ptr)
    
    }


}



/// Metatype/GType declaration for Grid
public extension GridClassRef {
    
    /// This getter returns the GLib type identifier registered for `Grid`
    static var metatypeReference: GType { gtk_grid_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGridClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGridClass.self) }
    
    static var metatype: GtkGridClass? { metatypePointer?.pointee } 
    
    static var wrapper: GridClassRef? { GridClassRef(metatypePointer) }
    
    
}

// MARK: - GridClass Record


///
/// The `GridClassProtocol` protocol exposes the methods and properties of an underlying `GtkGridClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridClass`.
/// Alternatively, use `GridClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GridClassProtocol {
        /// Untyped pointer to the underlying `GtkGridClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGridClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGridClass>! { get }

    /// Required Initialiser for types conforming to `GridClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `GridClassRef` type acts as a lightweight Swift reference to an underlying `GtkGridClass` instance.
/// It exposes methods that can operate on this data type through `GridClassProtocol` conformance.
/// Use `GridClassRef` only as an `unowned` reference to an existing `GtkGridClass` instance.
///
public struct GridClassRef: GridClassProtocol {
        /// Untyped pointer to the underlying `GtkGridClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGridClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGridClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGridClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGridClass>?) {
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

    /// Reference intialiser for a related type that implements `GridClassProtocol`
    @inlinable init<T: GridClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GridClass Record: GridClassProtocol extension (methods and fields)
public extension GridClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGridClass>! { return ptr?.assumingMemoryBound(to: GtkGridClass.self) }


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

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for HBox
public extension HBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `HBox`
    static var metatypeReference: GType { gtk_hbox_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkHBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkHBoxClass.self) }
    
    static var metatype: GtkHBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: HBoxClassRef? { HBoxClassRef(metatypePointer) }
    
    
}

// MARK: - HBoxClass Record


///
/// The `HBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkHBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HBoxClass`.
/// Alternatively, use `HBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol HBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkHBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHBoxClass>! { get }

    /// Required Initialiser for types conforming to `HBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `HBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkHBoxClass` instance.
/// It exposes methods that can operate on this data type through `HBoxClassProtocol` conformance.
/// Use `HBoxClassRef` only as an `unowned` reference to an existing `GtkHBoxClass` instance.
///
public struct HBoxClassRef: HBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkHBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `HBoxClassProtocol`
    @inlinable init<T: HBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: HBoxClass Record: HBoxClassProtocol extension (methods and fields)
public extension HBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkHBoxClass>! { return ptr?.assumingMemoryBound(to: GtkHBoxClass.self) }


    @inlinable var parentClass: GtkBoxClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



