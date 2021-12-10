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

/// Metatype/GType declaration for MenuBar
public extension MenuBarClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuBar`
    static var metatypeReference: GType { gtk_menu_bar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuBarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuBarClass.self) }
    
    static var metatype: GtkMenuBarClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuBarClassRef? { MenuBarClassRef(metatypePointer) }
    
    
}

// MARK: - MenuBarClass Record


///
/// The `MenuBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuBarClass`.
/// Alternatively, use `MenuBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuBarClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuBarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuBarClass>! { get }

    /// Required Initialiser for types conforming to `MenuBarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuBarClass` instance.
/// It exposes methods that can operate on this data type through `MenuBarClassProtocol` conformance.
/// Use `MenuBarClassRef` only as an `unowned` reference to an existing `GtkMenuBarClass` instance.
///
public struct MenuBarClassRef: MenuBarClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuBarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuBarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuBarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuBarClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuBarClassProtocol`
    @inlinable init<T: MenuBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuBarClass Record: MenuBarClassProtocol extension (methods and fields)
public extension MenuBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuBarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuBarClass>! { return ptr?.assumingMemoryBound(to: GtkMenuBarClass.self) }


    @inlinable var parentClass: GtkMenuShellClass {
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



/// Metatype/GType declaration for MenuButtonAccessible
public extension MenuButtonAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuButtonAccessible`
    static var metatypeReference: GType { gtk_menu_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuButtonAccessibleClass.self) }
    
    static var metatype: GtkMenuButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuButtonAccessibleClassRef? { MenuButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - MenuButtonAccessibleClass Record


///
/// The `MenuButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButtonAccessibleClass`.
/// Alternatively, use `MenuButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `MenuButtonAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuButtonAccessibleClassProtocol` conformance.
/// Use `MenuButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuButtonAccessibleClass` instance.
///
public struct MenuButtonAccessibleClassRef: MenuButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuButtonAccessibleClassProtocol`
    @inlinable init<T: MenuButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuButtonAccessibleClass Record: MenuButtonAccessibleClassProtocol extension (methods and fields)
public extension MenuButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkMenuButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkToggleButtonAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for MenuButton
public extension MenuButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuButton`
    static var metatypeReference: GType { gtk_menu_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuButtonClass.self) }
    
    static var metatype: GtkMenuButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuButtonClassRef? { MenuButtonClassRef(metatypePointer) }
    
    
}

// MARK: - MenuButtonClass Record


///
/// The `MenuButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButtonClass`.
/// Alternatively, use `MenuButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonClass>! { get }

    /// Required Initialiser for types conforming to `MenuButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButtonClass` instance.
/// It exposes methods that can operate on this data type through `MenuButtonClassProtocol` conformance.
/// Use `MenuButtonClassRef` only as an `unowned` reference to an existing `GtkMenuButtonClass` instance.
///
public struct MenuButtonClassRef: MenuButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuButtonClassProtocol`
    @inlinable init<T: MenuButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuButtonClass Record: MenuButtonClassProtocol extension (methods and fields)
public extension MenuButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuButtonClass>! { return ptr?.assumingMemoryBound(to: GtkMenuButtonClass.self) }


    @inlinable var parentClass: GtkToggleButtonClass {
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



/// Metatype/GType declaration for Menu
public extension MenuClassRef {
    
    /// This getter returns the GLib type identifier registered for `Menu`
    static var metatypeReference: GType { gtk_menu_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuClass.self) }
    
    static var metatype: GtkMenuClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuClassRef? { MenuClassRef(metatypePointer) }
    
    
}

// MARK: - MenuClass Record


///
/// The `MenuClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuClass`.
/// Alternatively, use `MenuClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuClass>! { get }

    /// Required Initialiser for types conforming to `MenuClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuClass` instance.
/// It exposes methods that can operate on this data type through `MenuClassProtocol` conformance.
/// Use `MenuClassRef` only as an `unowned` reference to an existing `GtkMenuClass` instance.
///
public struct MenuClassRef: MenuClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuClassProtocol`
    @inlinable init<T: MenuClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuClass Record: MenuClassProtocol extension (methods and fields)
public extension MenuClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuClass>! { return ptr?.assumingMemoryBound(to: GtkMenuClass.self) }


    @inlinable var parentClass: GtkMenuShellClass {
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



/// Metatype/GType declaration for MenuItemAccessible
public extension MenuItemAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuItemAccessible`
    static var metatypeReference: GType { gtk_menu_item_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuItemAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuItemAccessibleClass.self) }
    
    static var metatype: GtkMenuItemAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuItemAccessibleClassRef? { MenuItemAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - MenuItemAccessibleClass Record


///
/// The `MenuItemAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItemAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItemAccessibleClass`.
/// Alternatively, use `MenuItemAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuItemAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuItemAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `MenuItemAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuItemAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItemAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuItemAccessibleClassProtocol` conformance.
/// Use `MenuItemAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuItemAccessibleClass` instance.
///
public struct MenuItemAccessibleClassRef: MenuItemAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuItemAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuItemAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuItemAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuItemAccessibleClassProtocol`
    @inlinable init<T: MenuItemAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuItemAccessibleClass Record: MenuItemAccessibleClassProtocol extension (methods and fields)
public extension MenuItemAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItemAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuItemAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkMenuItemAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for MenuItem
public extension MenuItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuItem`
    static var metatypeReference: GType { gtk_menu_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuItemClass.self) }
    
    static var metatype: GtkMenuItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuItemClassRef? { MenuItemClassRef(metatypePointer) }
    
    
}

// MARK: - MenuItemClass Record


///
/// The `MenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItemClass`.
/// Alternatively, use `MenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemClass>! { get }

    /// Required Initialiser for types conforming to `MenuItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `MenuItemClassProtocol` conformance.
/// Use `MenuItemClassRef` only as an `unowned` reference to an existing `GtkMenuItemClass` instance.
///
public struct MenuItemClassRef: MenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuItemClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuItemClassProtocol`
    @inlinable init<T: MenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuItemClass Record: MenuItemClassProtocol extension (methods and fields)
public extension MenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuItemClass>! { return ptr?.assumingMemoryBound(to: GtkMenuItemClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    /// If `true`, then we should always
    ///    hide the menu when the `GtkMenuItem` is activated. Otherwise,
    ///    it is up to the caller.
    @inlinable var hideOnActivate: guint {
        /// If `true`, then we should always
        ///    hide the menu when the `GtkMenuItem` is activated. Otherwise,
        ///    it is up to the caller.
        get {
            let rv = _ptr.pointee.hide_on_activate
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var activateItem is unavailable because activate_item is void

    // var toggleSizeRequest is unavailable because toggle_size_request is void

    // var toggleSizeAllocate is unavailable because toggle_size_allocate is void

    // var setLabel is unavailable because set_label is void

    // var getLabel is unavailable because get_label is void

    // var select is unavailable because select is void

    // var deselect is unavailable because deselect is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for MenuShellAccessible
public extension MenuShellAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuShellAccessible`
    static var metatypeReference: GType { gtk_menu_shell_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuShellAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuShellAccessibleClass.self) }
    
    static var metatype: GtkMenuShellAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuShellAccessibleClassRef? { MenuShellAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - MenuShellAccessibleClass Record


///
/// The `MenuShellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShellAccessibleClass`.
/// Alternatively, use `MenuShellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuShellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuShellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuShellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `MenuShellAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuShellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuShellAccessibleClassProtocol` conformance.
/// Use `MenuShellAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuShellAccessibleClass` instance.
///
public struct MenuShellAccessibleClassRef: MenuShellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuShellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuShellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuShellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuShellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuShellAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuShellAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuShellAccessibleClassProtocol`
    @inlinable init<T: MenuShellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuShellAccessibleClass Record: MenuShellAccessibleClassProtocol extension (methods and fields)
public extension MenuShellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShellAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuShellAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkMenuShellAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for MenuShell
public extension MenuShellClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuShell`
    static var metatypeReference: GType { gtk_menu_shell_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuShellClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuShellClass.self) }
    
    static var metatype: GtkMenuShellClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuShellClassRef? { MenuShellClassRef(metatypePointer) }
    
    
}

// MARK: - MenuShellClass Record


///
/// The `MenuShellClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShellClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShellClass`.
/// Alternatively, use `MenuShellClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuShellClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuShellClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuShellClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellClass>! { get }

    /// Required Initialiser for types conforming to `MenuShellClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuShellClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShellClass` instance.
/// It exposes methods that can operate on this data type through `MenuShellClassProtocol` conformance.
/// Use `MenuShellClassRef` only as an `unowned` reference to an existing `GtkMenuShellClass` instance.
///
public struct MenuShellClassRef: MenuShellClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuShellClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuShellClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuShellClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuShellClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuShellClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuShellClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuShellClassProtocol`
    @inlinable init<T: MenuShellClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuShellClass Record: MenuShellClassProtocol extension (methods and fields)
public extension MenuShellClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShellClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuShellClass>! { return ptr?.assumingMemoryBound(to: GtkMenuShellClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    @inlinable var submenuPlacement: guint {
        get {
            let rv = _ptr.pointee.submenu_placement
            return rv
        }
    }

    // var deactivate is unavailable because deactivate is void

    // var selectionDone is unavailable because selection_done is void

    // var moveCurrent is unavailable because move_current is void

    // var activateCurrent is unavailable because activate_current is void

    // var cancel is unavailable because cancel is void

    // var selectItem is unavailable because select_item is void

    // var insert is unavailable because insert is void

    // var getPopupDelay is unavailable because get_popup_delay is void

    // var moveSelected is unavailable because move_selected is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for MenuToolButton
public extension MenuToolButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuToolButton`
    static var metatypeReference: GType { gtk_menu_tool_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuToolButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuToolButtonClass.self) }
    
    static var metatype: GtkMenuToolButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuToolButtonClassRef? { MenuToolButtonClassRef(metatypePointer) }
    
    
}

// MARK: - MenuToolButtonClass Record


///
/// The `MenuToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuToolButtonClass`.
/// Alternatively, use `MenuToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuToolButtonClass>! { get }

    /// Required Initialiser for types conforming to `MenuToolButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MenuToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `MenuToolButtonClassProtocol` conformance.
/// Use `MenuToolButtonClassRef` only as an `unowned` reference to an existing `GtkMenuToolButtonClass` instance.
///
public struct MenuToolButtonClassRef: MenuToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuToolButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuToolButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuToolButtonClassProtocol`
    @inlinable init<T: MenuToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuToolButtonClass Record: MenuToolButtonClassProtocol extension (methods and fields)
public extension MenuToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuToolButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuToolButtonClass>! { return ptr?.assumingMemoryBound(to: GtkMenuToolButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkToolButtonClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var showMenu is unavailable because show_menu is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for MessageDialog
public extension MessageDialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `MessageDialog`
    static var metatypeReference: GType { gtk_message_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMessageDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMessageDialogClass.self) }
    
    static var metatype: GtkMessageDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: MessageDialogClassRef? { MessageDialogClassRef(metatypePointer) }
    
    
}

// MARK: - MessageDialogClass Record


///
/// The `MessageDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkMessageDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MessageDialogClass`.
/// Alternatively, use `MessageDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MessageDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkMessageDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMessageDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMessageDialogClass>! { get }

    /// Required Initialiser for types conforming to `MessageDialogClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MessageDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkMessageDialogClass` instance.
/// It exposes methods that can operate on this data type through `MessageDialogClassProtocol` conformance.
/// Use `MessageDialogClassRef` only as an `unowned` reference to an existing `GtkMessageDialogClass` instance.
///
public struct MessageDialogClassRef: MessageDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkMessageDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MessageDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMessageDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMessageDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMessageDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMessageDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `MessageDialogClassProtocol`
    @inlinable init<T: MessageDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MessageDialogClass Record: MessageDialogClassProtocol extension (methods and fields)
public extension MessageDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMessageDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMessageDialogClass>! { return ptr?.assumingMemoryBound(to: GtkMessageDialogClass.self) }


    @inlinable var parentClass: GtkDialogClass {
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



/// Metatype/GType declaration for Misc
public extension MiscClassRef {
    
    /// This getter returns the GLib type identifier registered for `Misc`
    static var metatypeReference: GType { gtk_misc_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMiscClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMiscClass.self) }
    
    static var metatype: GtkMiscClass? { metatypePointer?.pointee } 
    
    static var wrapper: MiscClassRef? { MiscClassRef(metatypePointer) }
    
    
}

// MARK: - MiscClass Record


///
/// The `MiscClassProtocol` protocol exposes the methods and properties of an underlying `GtkMiscClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MiscClass`.
/// Alternatively, use `MiscClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MiscClassProtocol {
        /// Untyped pointer to the underlying `GtkMiscClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMiscClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMiscClass>! { get }

    /// Required Initialiser for types conforming to `MiscClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MiscClassRef` type acts as a lightweight Swift reference to an underlying `GtkMiscClass` instance.
/// It exposes methods that can operate on this data type through `MiscClassProtocol` conformance.
/// Use `MiscClassRef` only as an `unowned` reference to an existing `GtkMiscClass` instance.
///
public struct MiscClassRef: MiscClassProtocol {
        /// Untyped pointer to the underlying `GtkMiscClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MiscClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMiscClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMiscClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMiscClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMiscClass>?) {
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

    /// Reference intialiser for a related type that implements `MiscClassProtocol`
    @inlinable init<T: MiscClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MiscClass Record: MiscClassProtocol extension (methods and fields)
public extension MiscClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMiscClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMiscClass>! { return ptr?.assumingMemoryBound(to: GtkMiscClass.self) }


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



/// Metatype/GType declaration for MountOperation
public extension MountOperationClassRef {
    
    /// This getter returns the GLib type identifier registered for `MountOperation`
    static var metatypeReference: GType { gtk_mount_operation_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMountOperationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMountOperationClass.self) }
    
    static var metatype: GtkMountOperationClass? { metatypePointer?.pointee } 
    
    static var wrapper: MountOperationClassRef? { MountOperationClassRef(metatypePointer) }
    
    
}

// MARK: - MountOperationClass Record


///
/// The `MountOperationClassProtocol` protocol exposes the methods and properties of an underlying `GtkMountOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperationClass`.
/// Alternatively, use `MountOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkMountOperationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMountOperationClass>! { get }

    /// Required Initialiser for types conforming to `MountOperationClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MountOperationClassRef` type acts as a lightweight Swift reference to an underlying `GtkMountOperationClass` instance.
/// It exposes methods that can operate on this data type through `MountOperationClassProtocol` conformance.
/// Use `MountOperationClassRef` only as an `unowned` reference to an existing `GtkMountOperationClass` instance.
///
public struct MountOperationClassRef: MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkMountOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MountOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMountOperationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMountOperationClass>?) {
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

    /// Reference intialiser for a related type that implements `MountOperationClassProtocol`
    @inlinable init<T: MountOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MountOperationClass Record: MountOperationClassProtocol extension (methods and fields)
public extension MountOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMountOperationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMountOperationClass>! { return ptr?.assumingMemoryBound(to: GtkMountOperationClass.self) }


    /// The parent class.
    @inlinable var parentClass: GMountOperationClass {
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



/// Metatype/GType declaration for NativeDialog
public extension NativeDialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `NativeDialog`
    static var metatypeReference: GType { gtk_native_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNativeDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNativeDialogClass.self) }
    
    static var metatype: GtkNativeDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: NativeDialogClassRef? { NativeDialogClassRef(metatypePointer) }
    
    
}

// MARK: - NativeDialogClass Record


///
/// The `NativeDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkNativeDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeDialogClass`.
/// Alternatively, use `NativeDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NativeDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkNativeDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNativeDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNativeDialogClass>! { get }

    /// Required Initialiser for types conforming to `NativeDialogClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `NativeDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkNativeDialogClass` instance.
/// It exposes methods that can operate on this data type through `NativeDialogClassProtocol` conformance.
/// Use `NativeDialogClassRef` only as an `unowned` reference to an existing `GtkNativeDialogClass` instance.
///
public struct NativeDialogClassRef: NativeDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkNativeDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNativeDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNativeDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNativeDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNativeDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `NativeDialogClassProtocol`
    @inlinable init<T: NativeDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NativeDialogClass Record: NativeDialogClassProtocol extension (methods and fields)
public extension NativeDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNativeDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNativeDialogClass>! { return ptr?.assumingMemoryBound(to: GtkNativeDialogClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var response is unavailable because response is void

    // var show is unavailable because show is void

    // var hide is unavailable because hide is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



