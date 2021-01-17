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

/// Metatype/GType declaration for LayoutChild
public extension LayoutChildClassRef {
    
    /// This getter returns the GLib type identifier registered for `LayoutChild`
    static var metatypeReference: GType { gtk_layout_child_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLayoutChildClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLayoutChildClass.self) }
    
    static var metatype: GtkLayoutChildClass? { metatypePointer?.pointee } 
    
    static var wrapper: LayoutChildClassRef? { LayoutChildClassRef(metatypePointer) }
    
    
}

// MARK: - LayoutChildClass Record

/// The `LayoutChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkLayoutChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutChildClass`.
/// Alternatively, use `LayoutChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkLayoutChildClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLayoutChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLayoutChildClass>! { get }

}

/// The `LayoutChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkLayoutChildClass` instance.
/// It exposes methods that can operate on this data type through `LayoutChildClassProtocol` conformance.
/// Use `LayoutChildClassRef` only as an `unowned` reference to an existing `GtkLayoutChildClass` instance.
///

public struct LayoutChildClassRef: LayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkLayoutChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLayoutChildClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLayoutChildClass>?) {
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

    /// Reference intialiser for a related type that implements `LayoutChildClassProtocol`
    @inlinable init<T: LayoutChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LayoutChildClass Record: LayoutChildClassProtocol extension (methods and fields)
public extension LayoutChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayoutChildClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLayoutChildClass>! { return ptr?.assumingMemoryBound(to: GtkLayoutChildClass.self) }


    // var parentClass is unavailable because parent_class is private

}



/// Metatype/GType declaration for LayoutManager
public extension LayoutManagerClassRef {
    
    /// This getter returns the GLib type identifier registered for `LayoutManager`
    static var metatypeReference: GType { gtk_layout_manager_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLayoutManagerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLayoutManagerClass.self) }
    
    static var metatype: GtkLayoutManagerClass? { metatypePointer?.pointee } 
    
    static var wrapper: LayoutManagerClassRef? { LayoutManagerClassRef(metatypePointer) }
    
    
}

// MARK: - LayoutManagerClass Record

/// The `LayoutManagerClassProtocol` protocol exposes the methods and properties of an underlying `GtkLayoutManagerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutManagerClass`.
/// Alternatively, use `LayoutManagerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkLayoutManagerClass` structure contains only private data, and
/// should only be accessed through the provided API, or when subclassing
/// `GtkLayoutManager`.
public protocol LayoutManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkLayoutManagerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLayoutManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLayoutManagerClass>! { get }

}

/// The `LayoutManagerClassRef` type acts as a lightweight Swift reference to an underlying `GtkLayoutManagerClass` instance.
/// It exposes methods that can operate on this data type through `LayoutManagerClassProtocol` conformance.
/// Use `LayoutManagerClassRef` only as an `unowned` reference to an existing `GtkLayoutManagerClass` instance.
///
/// The `GtkLayoutManagerClass` structure contains only private data, and
/// should only be accessed through the provided API, or when subclassing
/// `GtkLayoutManager`.
public struct LayoutManagerClassRef: LayoutManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkLayoutManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutManagerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLayoutManagerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLayoutManagerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLayoutManagerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLayoutManagerClass>?) {
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

    /// Reference intialiser for a related type that implements `LayoutManagerClassProtocol`
    @inlinable init<T: LayoutManagerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LayoutManagerClass Record: LayoutManagerClassProtocol extension (methods and fields)
public extension LayoutManagerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayoutManagerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLayoutManagerClass>! { return ptr?.assumingMemoryBound(to: GtkLayoutManagerClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var getRequestMode is unavailable because get_request_mode is void

    // var measure is unavailable because measure is void

    // var allocate is unavailable because allocate is void

    /// the type of `GtkLayoutChild` used by this layout manager
    @inlinable var layoutChildType: GType {
        /// the type of `GtkLayoutChild` used by this layout manager
        get {
            let rv = _ptr.pointee.layout_child_type
            return rv
        }
    }

    // var createLayoutChild is unavailable because create_layout_child is void

    // var root is unavailable because root is void

    // var unroot is unavailable because unroot is void

    // var Padding is unavailable because _padding is private

}



/// Metatype/GType declaration for ListBase
public extension ListBaseClassRef {
    
    /// This getter returns the GLib type identifier registered for `ListBase`
    static var metatypeReference: GType { gtk_list_base_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListBaseClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListBaseClass.self) }
    
    static var metatype: GtkListBaseClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListBaseClassRef? { ListBaseClassRef(metatypePointer) }
    
    
}

// MARK: - ListBaseClass Record

/// The `ListBaseClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBaseClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBaseClass`.
/// Alternatively, use `ListBaseClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBaseClassProtocol {
        /// Untyped pointer to the underlying `GtkListBaseClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBaseClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBaseClass>! { get }

}

/// The `ListBaseClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBaseClass` instance.
/// It exposes methods that can operate on this data type through `ListBaseClassProtocol` conformance.
/// Use `ListBaseClassRef` only as an `unowned` reference to an existing `GtkListBaseClass` instance.
///

public struct ListBaseClassRef: ListBaseClassProtocol {
        /// Untyped pointer to the underlying `GtkListBaseClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBaseClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBaseClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBaseClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBaseClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBaseClass>?) {
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

    /// Reference intialiser for a related type that implements `ListBaseClassProtocol`
    @inlinable init<T: ListBaseClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListBaseClass Record: ListBaseClassProtocol extension (methods and fields)
public extension ListBaseClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBaseClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListBaseClass>! { return ptr?.assumingMemoryBound(to: GtkListBaseClass.self) }



}



/// Metatype/GType declaration for ListBoxRow
public extension ListBoxRowClassRef {
    
    /// This getter returns the GLib type identifier registered for `ListBoxRow`
    static var metatypeReference: GType { gtk_list_box_row_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListBoxRowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListBoxRowClass.self) }
    
    static var metatype: GtkListBoxRowClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListBoxRowClassRef? { ListBoxRowClassRef(metatypePointer) }
    
    
}

// MARK: - ListBoxRowClass Record

/// The `ListBoxRowClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRowClass`.
/// Alternatively, use `ListBoxRowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxRowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxRowClass>! { get }

}

/// The `ListBoxRowClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRowClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowClassProtocol` conformance.
/// Use `ListBoxRowClassRef` only as an `unowned` reference to an existing `GtkListBoxRowClass` instance.
///

public struct ListBoxRowClassRef: ListBoxRowClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxRowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxRowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxRowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxRowClass>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxRowClassProtocol`
    @inlinable init<T: ListBoxRowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListBoxRowClass Record: ListBoxRowClassProtocol extension (methods and fields)
public extension ListBoxRowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListBoxRowClass>! { return ptr?.assumingMemoryBound(to: GtkListBoxRowClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ListItem
public extension ListItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `ListItem`
    static var metatypeReference: GType { gtk_list_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListItemClass.self) }
    
    static var metatype: GtkListItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListItemClassRef? { ListItemClassRef(metatypePointer) }
    
    
}

// MARK: - ListItemClass Record

/// The `ListItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkListItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListItemClass`.
/// Alternatively, use `ListItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListItemClassProtocol {
        /// Untyped pointer to the underlying `GtkListItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListItemClass>! { get }

}

/// The `ListItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkListItemClass` instance.
/// It exposes methods that can operate on this data type through `ListItemClassProtocol` conformance.
/// Use `ListItemClassRef` only as an `unowned` reference to an existing `GtkListItemClass` instance.
///

public struct ListItemClassRef: ListItemClassProtocol {
        /// Untyped pointer to the underlying `GtkListItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListItemClass>?) {
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

    /// Reference intialiser for a related type that implements `ListItemClassProtocol`
    @inlinable init<T: ListItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListItemClass Record: ListItemClassProtocol extension (methods and fields)
public extension ListItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListItemClass>! { return ptr?.assumingMemoryBound(to: GtkListItemClass.self) }



}



/// Metatype/GType declaration for ListItemFactory
public extension ListItemFactoryClassRef {
    
    /// This getter returns the GLib type identifier registered for `ListItemFactory`
    static var metatypeReference: GType { gtk_list_item_factory_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListItemFactoryClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListItemFactoryClass.self) }
    
    static var metatype: GtkListItemFactoryClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListItemFactoryClassRef? { ListItemFactoryClassRef(metatypePointer) }
    
    
}

// MARK: - ListItemFactoryClass Record

/// The `ListItemFactoryClassProtocol` protocol exposes the methods and properties of an underlying `GtkListItemFactoryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListItemFactoryClass`.
/// Alternatively, use `ListItemFactoryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListItemFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkListItemFactoryClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListItemFactoryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListItemFactoryClass>! { get }

}

/// The `ListItemFactoryClassRef` type acts as a lightweight Swift reference to an underlying `GtkListItemFactoryClass` instance.
/// It exposes methods that can operate on this data type through `ListItemFactoryClassProtocol` conformance.
/// Use `ListItemFactoryClassRef` only as an `unowned` reference to an existing `GtkListItemFactoryClass` instance.
///

public struct ListItemFactoryClassRef: ListItemFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkListItemFactoryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListItemFactoryClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListItemFactoryClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListItemFactoryClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListItemFactoryClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListItemFactoryClass>?) {
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

    /// Reference intialiser for a related type that implements `ListItemFactoryClassProtocol`
    @inlinable init<T: ListItemFactoryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListItemFactoryClass Record: ListItemFactoryClassProtocol extension (methods and fields)
public extension ListItemFactoryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListItemFactoryClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListItemFactoryClass>! { return ptr?.assumingMemoryBound(to: GtkListItemFactoryClass.self) }



}



/// Metatype/GType declaration for ListStore
public extension ListStoreClassRef {
    
    /// This getter returns the GLib type identifier registered for `ListStore`
    static var metatypeReference: GType { gtk_list_store_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListStoreClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListStoreClass.self) }
    
    static var metatype: GtkListStoreClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListStoreClassRef? { ListStoreClassRef(metatypePointer) }
    
    
}

// MARK: - ListStoreClass Record

/// The `ListStoreClassProtocol` protocol exposes the methods and properties of an underlying `GtkListStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStoreClass`.
/// Alternatively, use `ListStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkListStoreClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListStoreClass>! { get }

}

/// The `ListStoreClassRef` type acts as a lightweight Swift reference to an underlying `GtkListStoreClass` instance.
/// It exposes methods that can operate on this data type through `ListStoreClassProtocol` conformance.
/// Use `ListStoreClassRef` only as an `unowned` reference to an existing `GtkListStoreClass` instance.
///

public struct ListStoreClassRef: ListStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkListStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListStoreClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListStoreClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListStoreClass>?) {
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

    /// Reference intialiser for a related type that implements `ListStoreClassProtocol`
    @inlinable init<T: ListStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListStoreClass Record: ListStoreClassProtocol extension (methods and fields)
public extension ListStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListStoreClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListStoreClass>! { return ptr?.assumingMemoryBound(to: GtkListStoreClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ListView
public extension ListViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `ListView`
    static var metatypeReference: GType { gtk_list_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListViewClass.self) }
    
    static var metatype: GtkListViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListViewClassRef? { ListViewClassRef(metatypePointer) }
    
    
}

// MARK: - ListViewClass Record

/// The `ListViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkListViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListViewClass`.
/// Alternatively, use `ListViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListViewClassProtocol {
        /// Untyped pointer to the underlying `GtkListViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListViewClass>! { get }

}

/// The `ListViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkListViewClass` instance.
/// It exposes methods that can operate on this data type through `ListViewClassProtocol` conformance.
/// Use `ListViewClassRef` only as an `unowned` reference to an existing `GtkListViewClass` instance.
///

public struct ListViewClassRef: ListViewClassProtocol {
        /// Untyped pointer to the underlying `GtkListViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListViewClass>?) {
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

    /// Reference intialiser for a related type that implements `ListViewClassProtocol`
    @inlinable init<T: ListViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListViewClass Record: ListViewClassProtocol extension (methods and fields)
public extension ListViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListViewClass>! { return ptr?.assumingMemoryBound(to: GtkListViewClass.self) }



}



/// Metatype/GType declaration for MapListModel
public extension MapListModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `MapListModel`
    static var metatypeReference: GType { gtk_map_list_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMapListModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMapListModelClass.self) }
    
    static var metatype: GtkMapListModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: MapListModelClassRef? { MapListModelClassRef(metatypePointer) }
    
    
}

// MARK: - MapListModelClass Record

/// The `MapListModelClassProtocol` protocol exposes the methods and properties of an underlying `GtkMapListModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MapListModelClass`.
/// Alternatively, use `MapListModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MapListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkMapListModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMapListModelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMapListModelClass>! { get }

}

/// The `MapListModelClassRef` type acts as a lightweight Swift reference to an underlying `GtkMapListModelClass` instance.
/// It exposes methods that can operate on this data type through `MapListModelClassProtocol` conformance.
/// Use `MapListModelClassRef` only as an `unowned` reference to an existing `GtkMapListModelClass` instance.
///

public struct MapListModelClassRef: MapListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkMapListModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MapListModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMapListModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMapListModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMapListModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMapListModelClass>?) {
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

    /// Reference intialiser for a related type that implements `MapListModelClassProtocol`
    @inlinable init<T: MapListModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MapListModelClass Record: MapListModelClassProtocol extension (methods and fields)
public extension MapListModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMapListModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMapListModelClass>! { return ptr?.assumingMemoryBound(to: GtkMapListModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



