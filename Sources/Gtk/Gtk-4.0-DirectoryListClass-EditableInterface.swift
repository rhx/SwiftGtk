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

/// Metatype/GType declaration for DirectoryList
public extension DirectoryListClassRef {
    
    /// This getter returns the GLib type identifier registered for `DirectoryList`
    static var metatypeReference: GType { gtk_directory_list_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDirectoryListClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDirectoryListClass.self) }
    
    static var metatype: GtkDirectoryListClass? { metatypePointer?.pointee } 
    
    static var wrapper: DirectoryListClassRef? { DirectoryListClassRef(metatypePointer) }
    
    
}

// MARK: - DirectoryListClass Record

/// The `DirectoryListClassProtocol` protocol exposes the methods and properties of an underlying `GtkDirectoryListClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DirectoryListClass`.
/// Alternatively, use `DirectoryListClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DirectoryListClassProtocol {
        /// Untyped pointer to the underlying `GtkDirectoryListClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDirectoryListClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDirectoryListClass>! { get }

}

/// The `DirectoryListClassRef` type acts as a lightweight Swift reference to an underlying `GtkDirectoryListClass` instance.
/// It exposes methods that can operate on this data type through `DirectoryListClassProtocol` conformance.
/// Use `DirectoryListClassRef` only as an `unowned` reference to an existing `GtkDirectoryListClass` instance.
///

public struct DirectoryListClassRef: DirectoryListClassProtocol {
        /// Untyped pointer to the underlying `GtkDirectoryListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DirectoryListClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDirectoryListClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDirectoryListClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDirectoryListClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDirectoryListClass>?) {
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

    /// Reference intialiser for a related type that implements `DirectoryListClassProtocol`
    @inlinable init<T: DirectoryListClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirectoryListClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DirectoryListClass Record: DirectoryListClassProtocol extension (methods and fields)
public extension DirectoryListClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDirectoryListClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDirectoryListClass>! { return ptr?.assumingMemoryBound(to: GtkDirectoryListClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for DragIcon
public extension DragIconClassRef {
    
    /// This getter returns the GLib type identifier registered for `DragIcon`
    static var metatypeReference: GType { gtk_drag_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDragIconClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDragIconClass.self) }
    
    static var metatype: GtkDragIconClass? { metatypePointer?.pointee } 
    
    static var wrapper: DragIconClassRef? { DragIconClassRef(metatypePointer) }
    
    
}

// MARK: - DragIconClass Record

/// The `DragIconClassProtocol` protocol exposes the methods and properties of an underlying `GtkDragIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragIconClass`.
/// Alternatively, use `DragIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DragIconClassProtocol {
        /// Untyped pointer to the underlying `GtkDragIconClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDragIconClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDragIconClass>! { get }

}

/// The `DragIconClassRef` type acts as a lightweight Swift reference to an underlying `GtkDragIconClass` instance.
/// It exposes methods that can operate on this data type through `DragIconClassProtocol` conformance.
/// Use `DragIconClassRef` only as an `unowned` reference to an existing `GtkDragIconClass` instance.
///

public struct DragIconClassRef: DragIconClassProtocol {
        /// Untyped pointer to the underlying `GtkDragIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DragIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDragIconClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDragIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDragIconClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDragIconClass>?) {
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

    /// Reference intialiser for a related type that implements `DragIconClassProtocol`
    @inlinable init<T: DragIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragIconClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DragIconClass Record: DragIconClassProtocol extension (methods and fields)
public extension DragIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDragIconClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDragIconClass>! { return ptr?.assumingMemoryBound(to: GtkDragIconClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for DragSource
public extension DragSourceClassRef {
    
    /// This getter returns the GLib type identifier registered for `DragSource`
    static var metatypeReference: GType { gtk_drag_source_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDragSourceClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDragSourceClass.self) }
    
    static var metatype: GtkDragSourceClass? { metatypePointer?.pointee } 
    
    static var wrapper: DragSourceClassRef? { DragSourceClassRef(metatypePointer) }
    
    
}

// MARK: - DragSourceClass Record

/// The `DragSourceClassProtocol` protocol exposes the methods and properties of an underlying `GtkDragSourceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragSourceClass`.
/// Alternatively, use `DragSourceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DragSourceClassProtocol {
        /// Untyped pointer to the underlying `GtkDragSourceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDragSourceClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDragSourceClass>! { get }

}

/// The `DragSourceClassRef` type acts as a lightweight Swift reference to an underlying `GtkDragSourceClass` instance.
/// It exposes methods that can operate on this data type through `DragSourceClassProtocol` conformance.
/// Use `DragSourceClassRef` only as an `unowned` reference to an existing `GtkDragSourceClass` instance.
///

public struct DragSourceClassRef: DragSourceClassProtocol {
        /// Untyped pointer to the underlying `GtkDragSourceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DragSourceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDragSourceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDragSourceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDragSourceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDragSourceClass>?) {
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

    /// Reference intialiser for a related type that implements `DragSourceClassProtocol`
    @inlinable init<T: DragSourceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSourceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DragSourceClass Record: DragSourceClassProtocol extension (methods and fields)
public extension DragSourceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDragSourceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDragSourceClass>! { return ptr?.assumingMemoryBound(to: GtkDragSourceClass.self) }



}



/// Metatype/GType declaration for DrawingArea
public extension DrawingAreaClassRef {
    
    /// This getter returns the GLib type identifier registered for `DrawingArea`
    static var metatypeReference: GType { gtk_drawing_area_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDrawingAreaClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDrawingAreaClass.self) }
    
    static var metatype: GtkDrawingAreaClass? { metatypePointer?.pointee } 
    
    static var wrapper: DrawingAreaClassRef? { DrawingAreaClassRef(metatypePointer) }
    
    
}

// MARK: - DrawingAreaClass Record

/// The `DrawingAreaClassProtocol` protocol exposes the methods and properties of an underlying `GtkDrawingAreaClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingAreaClass`.
/// Alternatively, use `DrawingAreaClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DrawingAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkDrawingAreaClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDrawingAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDrawingAreaClass>! { get }

}

/// The `DrawingAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkDrawingAreaClass` instance.
/// It exposes methods that can operate on this data type through `DrawingAreaClassProtocol` conformance.
/// Use `DrawingAreaClassRef` only as an `unowned` reference to an existing `GtkDrawingAreaClass` instance.
///

public struct DrawingAreaClassRef: DrawingAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkDrawingAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DrawingAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDrawingAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDrawingAreaClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDrawingAreaClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDrawingAreaClass>?) {
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

    /// Reference intialiser for a related type that implements `DrawingAreaClassProtocol`
    @inlinable init<T: DrawingAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DrawingAreaClass Record: DrawingAreaClassProtocol extension (methods and fields)
public extension DrawingAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDrawingAreaClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDrawingAreaClass>! { return ptr?.assumingMemoryBound(to: GtkDrawingAreaClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var resize is unavailable because resize is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for DropControllerMotion
public extension DropControllerMotionClassRef {
    
    /// This getter returns the GLib type identifier registered for `DropControllerMotion`
    static var metatypeReference: GType { gtk_drop_controller_motion_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDropControllerMotionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDropControllerMotionClass.self) }
    
    static var metatype: GtkDropControllerMotionClass? { metatypePointer?.pointee } 
    
    static var wrapper: DropControllerMotionClassRef? { DropControllerMotionClassRef(metatypePointer) }
    
    
}

// MARK: - DropControllerMotionClass Record

/// The `DropControllerMotionClassProtocol` protocol exposes the methods and properties of an underlying `GtkDropControllerMotionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropControllerMotionClass`.
/// Alternatively, use `DropControllerMotionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DropControllerMotionClassProtocol {
        /// Untyped pointer to the underlying `GtkDropControllerMotionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropControllerMotionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDropControllerMotionClass>! { get }

}

/// The `DropControllerMotionClassRef` type acts as a lightweight Swift reference to an underlying `GtkDropControllerMotionClass` instance.
/// It exposes methods that can operate on this data type through `DropControllerMotionClassProtocol` conformance.
/// Use `DropControllerMotionClassRef` only as an `unowned` reference to an existing `GtkDropControllerMotionClass` instance.
///

public struct DropControllerMotionClassRef: DropControllerMotionClassProtocol {
        /// Untyped pointer to the underlying `GtkDropControllerMotionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropControllerMotionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropControllerMotionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropControllerMotionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropControllerMotionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropControllerMotionClass>?) {
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

    /// Reference intialiser for a related type that implements `DropControllerMotionClassProtocol`
    @inlinable init<T: DropControllerMotionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropControllerMotionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DropControllerMotionClass Record: DropControllerMotionClassProtocol extension (methods and fields)
public extension DropControllerMotionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropControllerMotionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDropControllerMotionClass>! { return ptr?.assumingMemoryBound(to: GtkDropControllerMotionClass.self) }



}



/// Metatype/GType declaration for DropDown
public extension DropDownClassRef {
    
    /// This getter returns the GLib type identifier registered for `DropDown`
    static var metatypeReference: GType { gtk_drop_down_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDropDownClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDropDownClass.self) }
    
    static var metatype: GtkDropDownClass? { metatypePointer?.pointee } 
    
    static var wrapper: DropDownClassRef? { DropDownClassRef(metatypePointer) }
    
    
}

// MARK: - DropDownClass Record

/// The `DropDownClassProtocol` protocol exposes the methods and properties of an underlying `GtkDropDownClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropDownClass`.
/// Alternatively, use `DropDownClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DropDownClassProtocol {
        /// Untyped pointer to the underlying `GtkDropDownClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropDownClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDropDownClass>! { get }

}

/// The `DropDownClassRef` type acts as a lightweight Swift reference to an underlying `GtkDropDownClass` instance.
/// It exposes methods that can operate on this data type through `DropDownClassProtocol` conformance.
/// Use `DropDownClassRef` only as an `unowned` reference to an existing `GtkDropDownClass` instance.
///

public struct DropDownClassRef: DropDownClassProtocol {
        /// Untyped pointer to the underlying `GtkDropDownClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropDownClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropDownClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropDownClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropDownClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropDownClass>?) {
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

    /// Reference intialiser for a related type that implements `DropDownClassProtocol`
    @inlinable init<T: DropDownClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropDownClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DropDownClass Record: DropDownClassProtocol extension (methods and fields)
public extension DropDownClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropDownClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDropDownClass>! { return ptr?.assumingMemoryBound(to: GtkDropDownClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for DropTargetAsync
public extension DropTargetAsyncClassRef {
    
    /// This getter returns the GLib type identifier registered for `DropTargetAsync`
    static var metatypeReference: GType { gtk_drop_target_async_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDropTargetAsyncClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDropTargetAsyncClass.self) }
    
    static var metatype: GtkDropTargetAsyncClass? { metatypePointer?.pointee } 
    
    static var wrapper: DropTargetAsyncClassRef? { DropTargetAsyncClassRef(metatypePointer) }
    
    
}

// MARK: - DropTargetAsyncClass Record

/// The `DropTargetAsyncClassProtocol` protocol exposes the methods and properties of an underlying `GtkDropTargetAsyncClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropTargetAsyncClass`.
/// Alternatively, use `DropTargetAsyncClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DropTargetAsyncClassProtocol {
        /// Untyped pointer to the underlying `GtkDropTargetAsyncClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropTargetAsyncClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDropTargetAsyncClass>! { get }

}

/// The `DropTargetAsyncClassRef` type acts as a lightweight Swift reference to an underlying `GtkDropTargetAsyncClass` instance.
/// It exposes methods that can operate on this data type through `DropTargetAsyncClassProtocol` conformance.
/// Use `DropTargetAsyncClassRef` only as an `unowned` reference to an existing `GtkDropTargetAsyncClass` instance.
///

public struct DropTargetAsyncClassRef: DropTargetAsyncClassProtocol {
        /// Untyped pointer to the underlying `GtkDropTargetAsyncClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropTargetAsyncClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropTargetAsyncClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropTargetAsyncClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropTargetAsyncClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropTargetAsyncClass>?) {
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

    /// Reference intialiser for a related type that implements `DropTargetAsyncClassProtocol`
    @inlinable init<T: DropTargetAsyncClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetAsyncClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DropTargetAsyncClass Record: DropTargetAsyncClassProtocol extension (methods and fields)
public extension DropTargetAsyncClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropTargetAsyncClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDropTargetAsyncClass>! { return ptr?.assumingMemoryBound(to: GtkDropTargetAsyncClass.self) }



}



/// Metatype/GType declaration for DropTarget
public extension DropTargetClassRef {
    
    /// This getter returns the GLib type identifier registered for `DropTarget`
    static var metatypeReference: GType { gtk_drop_target_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDropTargetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDropTargetClass.self) }
    
    static var metatype: GtkDropTargetClass? { metatypePointer?.pointee } 
    
    static var wrapper: DropTargetClassRef? { DropTargetClassRef(metatypePointer) }
    
    
}

// MARK: - DropTargetClass Record

/// The `DropTargetClassProtocol` protocol exposes the methods and properties of an underlying `GtkDropTargetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DropTargetClass`.
/// Alternatively, use `DropTargetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DropTargetClassProtocol {
        /// Untyped pointer to the underlying `GtkDropTargetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDropTargetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDropTargetClass>! { get }

}

/// The `DropTargetClassRef` type acts as a lightweight Swift reference to an underlying `GtkDropTargetClass` instance.
/// It exposes methods that can operate on this data type through `DropTargetClassProtocol` conformance.
/// Use `DropTargetClassRef` only as an `unowned` reference to an existing `GtkDropTargetClass` instance.
///

public struct DropTargetClassRef: DropTargetClassProtocol {
        /// Untyped pointer to the underlying `GtkDropTargetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropTargetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDropTargetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDropTargetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDropTargetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDropTargetClass>?) {
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

    /// Reference intialiser for a related type that implements `DropTargetClassProtocol`
    @inlinable init<T: DropTargetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropTargetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DropTargetClass Record: DropTargetClassProtocol extension (methods and fields)
public extension DropTargetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDropTargetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDropTargetClass>! { return ptr?.assumingMemoryBound(to: GtkDropTargetClass.self) }



}



/// Metatype/GType declaration for Editable
public extension EditableInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Editable`
    static var metatypeReference: GType { gtk_editable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEditableInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEditableInterface.self) }
    
    static var metatype: GtkEditableInterface? { metatypePointer?.pointee } 
    
    static var wrapper: EditableInterfaceRef? { EditableInterfaceRef(metatypePointer) }
    
    
}

// MARK: - EditableInterface Record

/// The `EditableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkEditableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EditableInterface`.
/// Alternatively, use `EditableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EditableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkEditableInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEditableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkEditableInterface>! { get }

}

/// The `EditableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkEditableInterface` instance.
/// It exposes methods that can operate on this data type through `EditableInterfaceProtocol` conformance.
/// Use `EditableInterfaceRef` only as an `unowned` reference to an existing `GtkEditableInterface` instance.
///

public struct EditableInterfaceRef: EditableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkEditableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EditableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEditableInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEditableInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEditableInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEditableInterface>?) {
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

    /// Reference intialiser for a related type that implements `EditableInterfaceProtocol`
    @inlinable init<T: EditableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EditableInterface Record: EditableInterfaceProtocol extension (methods and fields)
public extension EditableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEditableInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEditableInterface>! { return ptr?.assumingMemoryBound(to: GtkEditableInterface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

    // var insertText is unavailable because insert_text is void

    // var deleteText is unavailable because delete_text is void

    // var changed is unavailable because changed is void

    // var getText is unavailable because get_text is void

    // var doInsertText is unavailable because do_insert_text is void

    // var doDeleteText is unavailable because do_delete_text is void

    // var getSelectionBounds is unavailable because get_selection_bounds is void

    // var setSelectionBounds is unavailable because set_selection_bounds is void

    // var getDelegate is unavailable because get_delegate is void

}



