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

/// Metatype/GType declaration for Filter
public extension FilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `Filter`
    static var metatypeReference: GType { gtk_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFilterClass.self) }
    
    static var metatype: GtkFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: FilterClassRef? { FilterClassRef(metatypePointer) }
    
    
}

// MARK: - FilterClass Record


///
/// The `FilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterClass`.
/// Alternatively, use `FilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FilterClassProtocol {
        /// Untyped pointer to the underlying `GtkFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFilterClass>! { get }

    /// Required Initialiser for types conforming to `FilterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkFilterClass` instance.
/// It exposes methods that can operate on this data type through `FilterClassProtocol` conformance.
/// Use `FilterClassRef` only as an `unowned` reference to an existing `GtkFilterClass` instance.
///
public struct FilterClassRef: FilterClassProtocol {
        /// Untyped pointer to the underlying `GtkFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `FilterClassProtocol`
    @inlinable init<T: FilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FilterClass Record: FilterClassProtocol extension (methods and fields)
public extension FilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFilterClass>! { return ptr?.assumingMemoryBound(to: GtkFilterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var match is unavailable because match is void

    // var getStrictness is unavailable because get_strictness is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for FilterListModel
public extension FilterListModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `FilterListModel`
    static var metatypeReference: GType { gtk_filter_list_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFilterListModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFilterListModelClass.self) }
    
    static var metatype: GtkFilterListModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: FilterListModelClassRef? { FilterListModelClassRef(metatypePointer) }
    
    
}

// MARK: - FilterListModelClass Record


///
/// The `FilterListModelClassProtocol` protocol exposes the methods and properties of an underlying `GtkFilterListModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterListModelClass`.
/// Alternatively, use `FilterListModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FilterListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkFilterListModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFilterListModelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFilterListModelClass>! { get }

    /// Required Initialiser for types conforming to `FilterListModelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FilterListModelClassRef` type acts as a lightweight Swift reference to an underlying `GtkFilterListModelClass` instance.
/// It exposes methods that can operate on this data type through `FilterListModelClassProtocol` conformance.
/// Use `FilterListModelClassRef` only as an `unowned` reference to an existing `GtkFilterListModelClass` instance.
///
public struct FilterListModelClassRef: FilterListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkFilterListModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterListModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFilterListModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFilterListModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFilterListModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFilterListModelClass>?) {
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

    /// Reference intialiser for a related type that implements `FilterListModelClassProtocol`
    @inlinable init<T: FilterListModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FilterListModelClass Record: FilterListModelClassProtocol extension (methods and fields)
public extension FilterListModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFilterListModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFilterListModelClass>! { return ptr?.assumingMemoryBound(to: GtkFilterListModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Fixed
public extension FixedClassRef {
    
    /// This getter returns the GLib type identifier registered for `Fixed`
    static var metatypeReference: GType { gtk_fixed_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFixedClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFixedClass.self) }
    
    static var metatype: GtkFixedClass? { metatypePointer?.pointee } 
    
    static var wrapper: FixedClassRef? { FixedClassRef(metatypePointer) }
    
    
}

// MARK: - FixedClass Record


///
/// The `FixedClassProtocol` protocol exposes the methods and properties of an underlying `GtkFixedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedClass`.
/// Alternatively, use `FixedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FixedClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedClass>! { get }

    /// Required Initialiser for types conforming to `FixedClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FixedClassRef` type acts as a lightweight Swift reference to an underlying `GtkFixedClass` instance.
/// It exposes methods that can operate on this data type through `FixedClassProtocol` conformance.
/// Use `FixedClassRef` only as an `unowned` reference to an existing `GtkFixedClass` instance.
///
public struct FixedClassRef: FixedClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixedClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixedClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixedClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixedClass>?) {
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

    /// Reference intialiser for a related type that implements `FixedClassProtocol`
    @inlinable init<T: FixedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FixedClass Record: FixedClassProtocol extension (methods and fields)
public extension FixedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFixedClass>! { return ptr?.assumingMemoryBound(to: GtkFixedClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for FixedLayoutChild
public extension FixedLayoutChildClassRef {
    
    /// This getter returns the GLib type identifier registered for `FixedLayoutChild`
    static var metatypeReference: GType { gtk_fixed_layout_child_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFixedLayoutChildClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFixedLayoutChildClass.self) }
    
    static var metatype: GtkFixedLayoutChildClass? { metatypePointer?.pointee } 
    
    static var wrapper: FixedLayoutChildClassRef? { FixedLayoutChildClassRef(metatypePointer) }
    
    
}

// MARK: - FixedLayoutChildClass Record


///
/// The `FixedLayoutChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkFixedLayoutChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedLayoutChildClass`.
/// Alternatively, use `FixedLayoutChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FixedLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedLayoutChildClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixedLayoutChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedLayoutChildClass>! { get }

    /// Required Initialiser for types conforming to `FixedLayoutChildClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FixedLayoutChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkFixedLayoutChildClass` instance.
/// It exposes methods that can operate on this data type through `FixedLayoutChildClassProtocol` conformance.
/// Use `FixedLayoutChildClassRef` only as an `unowned` reference to an existing `GtkFixedLayoutChildClass` instance.
///
public struct FixedLayoutChildClassRef: FixedLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedLayoutChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedLayoutChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixedLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixedLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixedLayoutChildClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixedLayoutChildClass>?) {
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

    /// Reference intialiser for a related type that implements `FixedLayoutChildClassProtocol`
    @inlinable init<T: FixedLayoutChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FixedLayoutChildClass Record: FixedLayoutChildClassProtocol extension (methods and fields)
public extension FixedLayoutChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedLayoutChildClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFixedLayoutChildClass>! { return ptr?.assumingMemoryBound(to: GtkFixedLayoutChildClass.self) }


    @inlinable var parentClass: GtkLayoutChildClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for FixedLayout
public extension FixedLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `FixedLayout`
    static var metatypeReference: GType { gtk_fixed_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFixedLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFixedLayoutClass.self) }
    
    static var metatype: GtkFixedLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: FixedLayoutClassRef? { FixedLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - FixedLayoutClass Record


///
/// The `FixedLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkFixedLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedLayoutClass`.
/// Alternatively, use `FixedLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FixedLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixedLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedLayoutClass>! { get }

    /// Required Initialiser for types conforming to `FixedLayoutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FixedLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkFixedLayoutClass` instance.
/// It exposes methods that can operate on this data type through `FixedLayoutClassProtocol` conformance.
/// Use `FixedLayoutClassRef` only as an `unowned` reference to an existing `GtkFixedLayoutClass` instance.
///
public struct FixedLayoutClassRef: FixedLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixedLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixedLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixedLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixedLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `FixedLayoutClassProtocol`
    @inlinable init<T: FixedLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FixedLayoutClass Record: FixedLayoutClassProtocol extension (methods and fields)
public extension FixedLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFixedLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkFixedLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for FlattenListModel
public extension FlattenListModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `FlattenListModel`
    static var metatypeReference: GType { gtk_flatten_list_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFlattenListModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFlattenListModelClass.self) }
    
    static var metatype: GtkFlattenListModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: FlattenListModelClassRef? { FlattenListModelClassRef(metatypePointer) }
    
    
}

// MARK: - FlattenListModelClass Record


///
/// The `FlattenListModelClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlattenListModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlattenListModelClass`.
/// Alternatively, use `FlattenListModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FlattenListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkFlattenListModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlattenListModelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlattenListModelClass>! { get }

    /// Required Initialiser for types conforming to `FlattenListModelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FlattenListModelClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlattenListModelClass` instance.
/// It exposes methods that can operate on this data type through `FlattenListModelClassProtocol` conformance.
/// Use `FlattenListModelClassRef` only as an `unowned` reference to an existing `GtkFlattenListModelClass` instance.
///
public struct FlattenListModelClassRef: FlattenListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkFlattenListModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlattenListModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlattenListModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlattenListModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlattenListModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlattenListModelClass>?) {
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

    /// Reference intialiser for a related type that implements `FlattenListModelClassProtocol`
    @inlinable init<T: FlattenListModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FlattenListModelClass Record: FlattenListModelClassProtocol extension (methods and fields)
public extension FlattenListModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlattenListModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFlattenListModelClass>! { return ptr?.assumingMemoryBound(to: GtkFlattenListModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for FlowBoxChild
public extension FlowBoxChildClassRef {
    
    /// This getter returns the GLib type identifier registered for `FlowBoxChild`
    static var metatypeReference: GType { gtk_flow_box_child_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFlowBoxChildClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFlowBoxChildClass.self) }
    
    static var metatype: GtkFlowBoxChildClass? { metatypePointer?.pointee } 
    
    static var wrapper: FlowBoxChildClassRef? { FlowBoxChildClassRef(metatypePointer) }
    
    
}

// MARK: - FlowBoxChildClass Record


///
/// The `FlowBoxChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChildClass`.
/// Alternatively, use `FlowBoxChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FlowBoxChildClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChildClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxChildClass>! { get }

    /// Required Initialiser for types conforming to `FlowBoxChildClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FlowBoxChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxChildClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxChildClassProtocol` conformance.
/// Use `FlowBoxChildClassRef` only as an `unowned` reference to an existing `GtkFlowBoxChildClass` instance.
///
public struct FlowBoxChildClassRef: FlowBoxChildClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxChildClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxChildClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxChildClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxChildClass>?) {
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

    /// Reference intialiser for a related type that implements `FlowBoxChildClassProtocol`
    @inlinable init<T: FlowBoxChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FlowBoxChildClass Record: FlowBoxChildClassProtocol extension (methods and fields)
public extension FlowBoxChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxChildClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFlowBoxChildClass>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxChildClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var activate is unavailable because activate is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for FontChooser
public extension FontChooserIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `FontChooser`
    static var metatypeReference: GType { gtk_font_chooser_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFontChooserIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFontChooserIface.self) }
    
    static var metatype: GtkFontChooserIface? { metatypePointer?.pointee } 
    
    static var wrapper: FontChooserIfaceRef? { FontChooserIfaceRef(metatypePointer) }
    
    
}

// MARK: - FontChooserIface Record


///
/// The `FontChooserIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserIface`.
/// Alternatively, use `FontChooserIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontChooserIfaceProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontChooserIface` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserIface>! { get }

    /// Required Initialiser for types conforming to `FontChooserIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontChooserIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserIface` instance.
/// It exposes methods that can operate on this data type through `FontChooserIfaceProtocol` conformance.
/// Use `FontChooserIfaceRef` only as an `unowned` reference to an existing `GtkFontChooserIface` instance.
///
public struct FontChooserIfaceRef: FontChooserIfaceProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontChooserIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontChooserIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontChooserIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontChooserIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontChooserIface>?) {
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

    /// Reference intialiser for a related type that implements `FontChooserIfaceProtocol`
    @inlinable init<T: FontChooserIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontChooserIface Record: FontChooserIfaceProtocol extension (methods and fields)
public extension FontChooserIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFontChooserIface>! { return ptr?.assumingMemoryBound(to: GtkFontChooserIface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

    // var getFontFamily is unavailable because get_font_family is void

    // var getFontFace is unavailable because get_font_face is void

    // var getFontSize is unavailable because get_font_size is void

    // var setFilterFunc is unavailable because set_filter_func is void

    // var fontActivated is unavailable because font_activated is void

    // var setFontMap is unavailable because set_font_map is void

    // var getFontMap is unavailable because get_font_map is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for Frame
public extension FrameClassRef {
    
    /// This getter returns the GLib type identifier registered for `Frame`
    static var metatypeReference: GType { gtk_frame_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFrameClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFrameClass.self) }
    
    static var metatype: GtkFrameClass? { metatypePointer?.pointee } 
    
    static var wrapper: FrameClassRef? { FrameClassRef(metatypePointer) }
    
    
}

// MARK: - FrameClass Record


///
/// The `FrameClassProtocol` protocol exposes the methods and properties of an underlying `GtkFrameClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameClass`.
/// Alternatively, use `FrameClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FrameClassProtocol {
        /// Untyped pointer to the underlying `GtkFrameClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFrameClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameClass>! { get }

    /// Required Initialiser for types conforming to `FrameClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FrameClassRef` type acts as a lightweight Swift reference to an underlying `GtkFrameClass` instance.
/// It exposes methods that can operate on this data type through `FrameClassProtocol` conformance.
/// Use `FrameClassRef` only as an `unowned` reference to an existing `GtkFrameClass` instance.
///
public struct FrameClassRef: FrameClassProtocol {
        /// Untyped pointer to the underlying `GtkFrameClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFrameClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFrameClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFrameClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFrameClass>?) {
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

    /// Reference intialiser for a related type that implements `FrameClassProtocol`
    @inlinable init<T: FrameClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FrameClass Record: FrameClassProtocol extension (methods and fields)
public extension FrameClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrameClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFrameClass>! { return ptr?.assumingMemoryBound(to: GtkFrameClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var computeChildAllocation is unavailable because compute_child_allocation is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for GLArea
public extension GLAreaClassRef {
    
    /// This getter returns the GLib type identifier registered for `GLArea`
    static var metatypeReference: GType { gtk_gl_area_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGLAreaClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGLAreaClass.self) }
    
    static var metatype: GtkGLAreaClass? { metatypePointer?.pointee } 
    
    static var wrapper: GLAreaClassRef? { GLAreaClassRef(metatypePointer) }
    
    
}

// MARK: - GLAreaClass Record

/// The `GtkGLAreaClass` structure contains only private data.
///
/// The `GLAreaClassProtocol` protocol exposes the methods and properties of an underlying `GtkGLAreaClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLAreaClass`.
/// Alternatively, use `GLAreaClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GLAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkGLAreaClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGLAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGLAreaClass>! { get }

    /// Required Initialiser for types conforming to `GLAreaClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GtkGLAreaClass` structure contains only private data.
///
/// The `GLAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkGLAreaClass` instance.
/// It exposes methods that can operate on this data type through `GLAreaClassProtocol` conformance.
/// Use `GLAreaClassRef` only as an `unowned` reference to an existing `GtkGLAreaClass` instance.
///
public struct GLAreaClassRef: GLAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkGLAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GLAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGLAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGLAreaClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGLAreaClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGLAreaClass>?) {
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

    /// Reference intialiser for a related type that implements `GLAreaClassProtocol`
    @inlinable init<T: GLAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GLAreaClass Record: GLAreaClassProtocol extension (methods and fields)
public extension GLAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGLAreaClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGLAreaClass>! { return ptr?.assumingMemoryBound(to: GtkGLAreaClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var render is unavailable because render is void

    // var resize is unavailable because resize is void

    // var createContext is unavailable because create_context is void

    // var Padding is unavailable because _padding is private

}



