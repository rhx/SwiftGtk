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

/// Metatype/GType declaration for NotebookAccessible
public extension NotebookAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `NotebookAccessible`
    static var metatypeReference: GType { gtk_notebook_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNotebookAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNotebookAccessibleClass.self) }
    
    static var metatype: GtkNotebookAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: NotebookAccessibleClassRef? { NotebookAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - NotebookAccessibleClass Record

/// The `NotebookAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookAccessibleClass`.
/// Alternatively, use `NotebookAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkNotebookAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebookAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `NotebookAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `NotebookAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `NotebookAccessibleClassProtocol` conformance.
/// Use `NotebookAccessibleClassRef` only as an `unowned` reference to an existing `GtkNotebookAccessibleClass` instance.
///

public struct NotebookAccessibleClassRef: NotebookAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkNotebookAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotebookAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNotebookAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNotebookAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNotebookAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNotebookAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `NotebookAccessibleClassProtocol`
    @inlinable init<T: NotebookAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NotebookAccessibleClass Record: NotebookAccessibleClassProtocol extension (methods and fields)
public extension NotebookAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNotebookAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkNotebookAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Notebook
public extension NotebookClassRef {
    
    /// This getter returns the GLib type identifier registered for `Notebook`
    static var metatypeReference: GType { gtk_notebook_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNotebookClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNotebookClass.self) }
    
    static var metatype: GtkNotebookClass? { metatypePointer?.pointee } 
    
    static var wrapper: NotebookClassRef? { NotebookClassRef(metatypePointer) }
    
    
}

// MARK: - NotebookClass Record

/// The `NotebookClassProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookClass`.
/// Alternatively, use `NotebookClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookClassProtocol {
        /// Untyped pointer to the underlying `GtkNotebookClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebookClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookClass>! { get }

    /// Required Initialiser for types conforming to `NotebookClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `NotebookClassRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookClass` instance.
/// It exposes methods that can operate on this data type through `NotebookClassProtocol` conformance.
/// Use `NotebookClassRef` only as an `unowned` reference to an existing `GtkNotebookClass` instance.
///

public struct NotebookClassRef: NotebookClassProtocol {
        /// Untyped pointer to the underlying `GtkNotebookClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotebookClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNotebookClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNotebookClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNotebookClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNotebookClass>?) {
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

    /// Reference intialiser for a related type that implements `NotebookClassProtocol`
    @inlinable init<T: NotebookClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NotebookClass Record: NotebookClassProtocol extension (methods and fields)
public extension NotebookClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNotebookClass>! { return ptr?.assumingMemoryBound(to: GtkNotebookClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var switchPage is unavailable because switch_page is void

    // var selectPage is unavailable because select_page is void

    // var focusTab is unavailable because focus_tab is void

    // var changeCurrentPage is unavailable because change_current_page is void

    // var moveFocusOut is unavailable because move_focus_out is void

    // var reorderTab is unavailable because reorder_tab is void

    // var insertPage is unavailable because insert_page is void

    // var createWindow is unavailable because create_window is void

    // var pageReordered is unavailable because page_reordered is void

    // var pageRemoved is unavailable because page_removed is void

    // var pageAdded is unavailable because page_added is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for NotebookPageAccessible
public extension NotebookPageAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `NotebookPageAccessible`
    static var metatypeReference: GType { gtk_notebook_page_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNotebookPageAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNotebookPageAccessibleClass.self) }
    
    static var metatype: GtkNotebookPageAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: NotebookPageAccessibleClassRef? { NotebookPageAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - NotebookPageAccessibleClass Record

/// The `NotebookPageAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookPageAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookPageAccessibleClass`.
/// Alternatively, use `NotebookPageAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookPageAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkNotebookPageAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebookPageAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookPageAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `NotebookPageAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `NotebookPageAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookPageAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `NotebookPageAccessibleClassProtocol` conformance.
/// Use `NotebookPageAccessibleClassRef` only as an `unowned` reference to an existing `GtkNotebookPageAccessibleClass` instance.
///

public struct NotebookPageAccessibleClassRef: NotebookPageAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkNotebookPageAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotebookPageAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNotebookPageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNotebookPageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNotebookPageAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNotebookPageAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `NotebookPageAccessibleClassProtocol`
    @inlinable init<T: NotebookPageAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NotebookPageAccessibleClass Record: NotebookPageAccessibleClassProtocol extension (methods and fields)
public extension NotebookPageAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookPageAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNotebookPageAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkNotebookPageAccessibleClass.self) }


    @inlinable var parentClass: AtkObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for NumerableIcon
public extension NumerableIconClassRef {
    
    /// This getter returns the GLib type identifier registered for `NumerableIcon`
    static var metatypeReference: GType { gtk_numerable_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNumerableIconClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNumerableIconClass.self) }
    
    static var metatype: GtkNumerableIconClass? { metatypePointer?.pointee } 
    
    static var wrapper: NumerableIconClassRef? { NumerableIconClassRef(metatypePointer) }
    
    
}

// MARK: - NumerableIconClass Record

/// The `NumerableIconClassProtocol` protocol exposes the methods and properties of an underlying `GtkNumerableIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NumerableIconClass`.
/// Alternatively, use `NumerableIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NumerableIconClassProtocol {
        /// Untyped pointer to the underlying `GtkNumerableIconClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNumerableIconClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNumerableIconClass>! { get }

    /// Required Initialiser for types conforming to `NumerableIconClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `NumerableIconClassRef` type acts as a lightweight Swift reference to an underlying `GtkNumerableIconClass` instance.
/// It exposes methods that can operate on this data type through `NumerableIconClassProtocol` conformance.
/// Use `NumerableIconClassRef` only as an `unowned` reference to an existing `GtkNumerableIconClass` instance.
///

public struct NumerableIconClassRef: NumerableIconClassProtocol {
        /// Untyped pointer to the underlying `GtkNumerableIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NumerableIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNumerableIconClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNumerableIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNumerableIconClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNumerableIconClass>?) {
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

    /// Reference intialiser for a related type that implements `NumerableIconClassProtocol`
    @inlinable init<T: NumerableIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NumerableIconClass Record: NumerableIconClassProtocol extension (methods and fields)
public extension NumerableIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNumerableIconClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNumerableIconClass>! { return ptr?.assumingMemoryBound(to: GtkNumerableIconClass.self) }


    @inlinable var parentClass: GEmblemedIconClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    @inlinable var padding: (gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?) {
        get {
            let rv = _ptr.pointee.padding
            return rv
        }
    }

}



/// Metatype/GType declaration for OffscreenWindow
public extension OffscreenWindowClassRef {
    
    /// This getter returns the GLib type identifier registered for `OffscreenWindow`
    static var metatypeReference: GType { gtk_offscreen_window_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkOffscreenWindowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkOffscreenWindowClass.self) }
    
    static var metatype: GtkOffscreenWindowClass? { metatypePointer?.pointee } 
    
    static var wrapper: OffscreenWindowClassRef? { OffscreenWindowClassRef(metatypePointer) }
    
    
}

// MARK: - OffscreenWindowClass Record

/// The `OffscreenWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkOffscreenWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OffscreenWindowClass`.
/// Alternatively, use `OffscreenWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OffscreenWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkOffscreenWindowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOffscreenWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOffscreenWindowClass>! { get }

    /// Required Initialiser for types conforming to `OffscreenWindowClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `OffscreenWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkOffscreenWindowClass` instance.
/// It exposes methods that can operate on this data type through `OffscreenWindowClassProtocol` conformance.
/// Use `OffscreenWindowClassRef` only as an `unowned` reference to an existing `GtkOffscreenWindowClass` instance.
///

public struct OffscreenWindowClassRef: OffscreenWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkOffscreenWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OffscreenWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOffscreenWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOffscreenWindowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOffscreenWindowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOffscreenWindowClass>?) {
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

    /// Reference intialiser for a related type that implements `OffscreenWindowClassProtocol`
    @inlinable init<T: OffscreenWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: OffscreenWindowClass Record: OffscreenWindowClassProtocol extension (methods and fields)
public extension OffscreenWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOffscreenWindowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkOffscreenWindowClass>! { return ptr?.assumingMemoryBound(to: GtkOffscreenWindowClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWindowClass {
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



