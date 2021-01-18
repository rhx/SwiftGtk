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

/// Metatype/GType declaration for Gesture
public extension GestureClassRef {
    
    /// This getter returns the GLib type identifier registered for `Gesture`
    static var metatypeReference: GType { gtk_gesture_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureClass.self) }
    
    static var metatype: GtkGestureClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureClassRef? { GestureClassRef(metatypePointer) }
    
    
}

// MARK: - GestureClass Record

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



/// Metatype/GType declaration for GestureClick
public extension GestureClickClassRef {
    
    /// This getter returns the GLib type identifier registered for `GestureClick`
    static var metatypeReference: GType { gtk_gesture_click_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGestureClickClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGestureClickClass.self) }
    
    static var metatype: GtkGestureClickClass? { metatypePointer?.pointee } 
    
    static var wrapper: GestureClickClassRef? { GestureClickClassRef(metatypePointer) }
    
    
}

// MARK: - GestureClickClass Record

/// The `GestureClickClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureClickClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureClickClass`.
/// Alternatively, use `GestureClickClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureClickClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureClickClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureClickClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureClickClass>! { get }

    /// Required Initialiser for types conforming to `GestureClickClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GestureClickClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureClickClass` instance.
/// It exposes methods that can operate on this data type through `GestureClickClassProtocol` conformance.
/// Use `GestureClickClassRef` only as an `unowned` reference to an existing `GtkGestureClickClass` instance.
///

public struct GestureClickClassRef: GestureClickClassProtocol {
        /// Untyped pointer to the underlying `GtkGestureClickClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureClickClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureClickClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureClickClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureClickClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureClickClass>?) {
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

    /// Reference intialiser for a related type that implements `GestureClickClassProtocol`
    @inlinable init<T: GestureClickClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GestureClickClass Record: GestureClickClassProtocol extension (methods and fields)
public extension GestureClickClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureClickClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGestureClickClass>! { return ptr?.assumingMemoryBound(to: GtkGestureClickClass.self) }



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



/// Metatype/GType declaration for GesturePan
public extension GesturePanClassRef {
    
    /// This getter returns the GLib type identifier registered for `GesturePan`
    static var metatypeReference: GType { gtk_gesture_pan_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGesturePanClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGesturePanClass.self) }
    
    static var metatype: GtkGesturePanClass? { metatypePointer?.pointee } 
    
    static var wrapper: GesturePanClassRef? { GesturePanClassRef(metatypePointer) }
    
    
}

// MARK: - GesturePanClass Record

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



/// Metatype/GType declaration for Grid
public extension GridClassRef {
    
    /// This getter returns the GLib type identifier registered for `Grid`
    static var metatypeReference: GType { gtk_grid_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGridClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGridClass.self) }
    
    static var metatype: GtkGridClass? { metatypePointer?.pointee } 
    
    static var wrapper: GridClassRef? { GridClassRef(metatypePointer) }
    
    
}

// MARK: - GridClass Record

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
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for GridLayoutChild
public extension GridLayoutChildClassRef {
    
    /// This getter returns the GLib type identifier registered for `GridLayoutChild`
    static var metatypeReference: GType { gtk_grid_layout_child_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGridLayoutChildClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGridLayoutChildClass.self) }
    
    static var metatype: GtkGridLayoutChildClass? { metatypePointer?.pointee } 
    
    static var wrapper: GridLayoutChildClassRef? { GridLayoutChildClassRef(metatypePointer) }
    
    
}

// MARK: - GridLayoutChildClass Record

/// The `GridLayoutChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkGridLayoutChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridLayoutChildClass`.
/// Alternatively, use `GridLayoutChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GridLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkGridLayoutChildClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGridLayoutChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGridLayoutChildClass>! { get }

    /// Required Initialiser for types conforming to `GridLayoutChildClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GridLayoutChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkGridLayoutChildClass` instance.
/// It exposes methods that can operate on this data type through `GridLayoutChildClassProtocol` conformance.
/// Use `GridLayoutChildClassRef` only as an `unowned` reference to an existing `GtkGridLayoutChildClass` instance.
///

public struct GridLayoutChildClassRef: GridLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkGridLayoutChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridLayoutChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGridLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGridLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGridLayoutChildClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGridLayoutChildClass>?) {
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

    /// Reference intialiser for a related type that implements `GridLayoutChildClassProtocol`
    @inlinable init<T: GridLayoutChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GridLayoutChildClass Record: GridLayoutChildClassProtocol extension (methods and fields)
public extension GridLayoutChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridLayoutChildClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGridLayoutChildClass>! { return ptr?.assumingMemoryBound(to: GtkGridLayoutChildClass.self) }


    @inlinable var parentClass: GtkLayoutChildClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for GridLayout
public extension GridLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `GridLayout`
    static var metatypeReference: GType { gtk_grid_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGridLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGridLayoutClass.self) }
    
    static var metatype: GtkGridLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: GridLayoutClassRef? { GridLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - GridLayoutClass Record

/// The `GridLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkGridLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridLayoutClass`.
/// Alternatively, use `GridLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GridLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkGridLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGridLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGridLayoutClass>! { get }

    /// Required Initialiser for types conforming to `GridLayoutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GridLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkGridLayoutClass` instance.
/// It exposes methods that can operate on this data type through `GridLayoutClassProtocol` conformance.
/// Use `GridLayoutClassRef` only as an `unowned` reference to an existing `GtkGridLayoutClass` instance.
///

public struct GridLayoutClassRef: GridLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkGridLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGridLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGridLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGridLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGridLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `GridLayoutClassProtocol`
    @inlinable init<T: GridLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GridLayoutClass Record: GridLayoutClassProtocol extension (methods and fields)
public extension GridLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGridLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkGridLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for GridView
public extension GridViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `GridView`
    static var metatypeReference: GType { gtk_grid_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGridViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGridViewClass.self) }
    
    static var metatype: GtkGridViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: GridViewClassRef? { GridViewClassRef(metatypePointer) }
    
    
}

// MARK: - GridViewClass Record

/// The `GridViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkGridViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridViewClass`.
/// Alternatively, use `GridViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GridViewClassProtocol {
        /// Untyped pointer to the underlying `GtkGridViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGridViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGridViewClass>! { get }

    /// Required Initialiser for types conforming to `GridViewClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GridViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkGridViewClass` instance.
/// It exposes methods that can operate on this data type through `GridViewClassProtocol` conformance.
/// Use `GridViewClassRef` only as an `unowned` reference to an existing `GtkGridViewClass` instance.
///

public struct GridViewClassRef: GridViewClassProtocol {
        /// Untyped pointer to the underlying `GtkGridViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGridViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGridViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGridViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGridViewClass>?) {
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

    /// Reference intialiser for a related type that implements `GridViewClassProtocol`
    @inlinable init<T: GridViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GridViewClass Record: GridViewClassProtocol extension (methods and fields)
public extension GridViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGridViewClass>! { return ptr?.assumingMemoryBound(to: GtkGridViewClass.self) }



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

    // var setClientWidget is unavailable because set_client_widget is void

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



