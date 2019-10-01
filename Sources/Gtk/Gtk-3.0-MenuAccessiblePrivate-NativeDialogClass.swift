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

// MARK: - MenuAccessiblePrivate Record

/// The `MenuAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAccessiblePrivate`.
/// Alternatively, use `MenuAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuAccessiblePrivate> { get }
}

/// The `MenuAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `MenuAccessiblePrivateProtocol` conformance.
/// Use `MenuAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkMenuAccessiblePrivate` instance.
///

public struct MenuAccessiblePrivateRef: MenuAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuAccessiblePrivateProtocol`
    init<T: MenuAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuAccessiblePrivate` type acts as an owner of an underlying `GtkMenuAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `MenuAccessiblePrivateProtocol` conformance.
/// Use `MenuAccessiblePrivate` as a strong reference or owner of a `GtkMenuAccessiblePrivate` instance.
///

open class MenuAccessiblePrivate: MenuAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuAccessiblePrivateProtocol`
    /// `GtkMenuAccessiblePrivate` does not allow reference counting.
    public convenience init<T: MenuAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuAccessiblePrivate`.
    deinit {
        // no reference counting for GtkMenuAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no MenuAccessiblePrivate properties

// MARK: - no signals


public extension MenuAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkMenuAccessiblePrivate.self) }

}



// MARK: - MenuBarClass Record

/// The `MenuBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuBarClass`.
/// Alternatively, use `MenuBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuBarClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuBarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuBarClass> { get }
}

/// The `MenuBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuBarClass` instance.
/// It exposes methods that can operate on this data type through `MenuBarClassProtocol` conformance.
/// Use `MenuBarClassRef` only as an `unowned` reference to an existing `GtkMenuBarClass` instance.
///

public struct MenuBarClassRef: MenuBarClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuBarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuBarClassProtocol`
    init<T: MenuBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuBarClass` type acts as an owner of an underlying `GtkMenuBarClass` instance.
/// It provides the methods that can operate on this data type through `MenuBarClassProtocol` conformance.
/// Use `MenuBarClass` as a strong reference or owner of a `GtkMenuBarClass` instance.
///

open class MenuBarClass: MenuBarClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuBarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuBarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuBarClassProtocol`
    /// `GtkMenuBarClass` does not allow reference counting.
    public convenience init<T: MenuBarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuBarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuBarClass`.
    deinit {
        // no reference counting for GtkMenuBarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuBarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuBarClass>(opaquePointer))
    }



}

// MARK: - no MenuBarClass properties

// MARK: - no signals


public extension MenuBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuBarClass> { return ptr.assumingMemoryBound(to: GtkMenuBarClass.self) }

}



// MARK: - MenuBarPrivate Record

/// The `MenuBarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuBarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuBarPrivate`.
/// Alternatively, use `MenuBarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuBarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuBarPrivate> { get }
}

/// The `MenuBarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuBarPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuBarPrivateProtocol` conformance.
/// Use `MenuBarPrivateRef` only as an `unowned` reference to an existing `GtkMenuBarPrivate` instance.
///

public struct MenuBarPrivateRef: MenuBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuBarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuBarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuBarPrivateProtocol`
    init<T: MenuBarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuBarPrivate` type acts as an owner of an underlying `GtkMenuBarPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuBarPrivateProtocol` conformance.
/// Use `MenuBarPrivate` as a strong reference or owner of a `GtkMenuBarPrivate` instance.
///

open class MenuBarPrivate: MenuBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuBarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuBarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuBarPrivateProtocol`
    /// `GtkMenuBarPrivate` does not allow reference counting.
    public convenience init<T: MenuBarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuBarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuBarPrivate`.
    deinit {
        // no reference counting for GtkMenuBarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuBarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuBarPrivate>(opaquePointer))
    }



}

// MARK: - no MenuBarPrivate properties

// MARK: - no signals


public extension MenuBarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuBarPrivate> { return ptr.assumingMemoryBound(to: GtkMenuBarPrivate.self) }

}



// MARK: - MenuButtonAccessibleClass Record

/// The `MenuButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButtonAccessibleClass`.
/// Alternatively, use `MenuButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonAccessibleClass> { get }
}

/// The `MenuButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuButtonAccessibleClassProtocol` conformance.
/// Use `MenuButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuButtonAccessibleClass` instance.
///

public struct MenuButtonAccessibleClassRef: MenuButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuButtonAccessibleClassProtocol`
    init<T: MenuButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuButtonAccessibleClass` type acts as an owner of an underlying `GtkMenuButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `MenuButtonAccessibleClassProtocol` conformance.
/// Use `MenuButtonAccessibleClass` as a strong reference or owner of a `GtkMenuButtonAccessibleClass` instance.
///

open class MenuButtonAccessibleClass: MenuButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuButtonAccessibleClassProtocol`
    /// `GtkMenuButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: MenuButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkMenuButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no MenuButtonAccessibleClass properties

// MARK: - no signals


public extension MenuButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkMenuButtonAccessibleClass.self) }

}



// MARK: - MenuButtonAccessiblePrivate Record

/// The `MenuButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButtonAccessiblePrivate`.
/// Alternatively, use `MenuButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonAccessiblePrivate> { get }
}

/// The `MenuButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `MenuButtonAccessiblePrivateProtocol` conformance.
/// Use `MenuButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkMenuButtonAccessiblePrivate` instance.
///

public struct MenuButtonAccessiblePrivateRef: MenuButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuButtonAccessiblePrivateProtocol`
    init<T: MenuButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuButtonAccessiblePrivate` type acts as an owner of an underlying `GtkMenuButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `MenuButtonAccessiblePrivateProtocol` conformance.
/// Use `MenuButtonAccessiblePrivate` as a strong reference or owner of a `GtkMenuButtonAccessiblePrivate` instance.
///

open class MenuButtonAccessiblePrivate: MenuButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuButtonAccessiblePrivateProtocol`
    /// `GtkMenuButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: MenuButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkMenuButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no MenuButtonAccessiblePrivate properties

// MARK: - no signals


public extension MenuButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkMenuButtonAccessiblePrivate.self) }

}



// MARK: - MenuButtonClass Record

/// The `MenuButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButtonClass`.
/// Alternatively, use `MenuButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonClass> { get }
}

/// The `MenuButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButtonClass` instance.
/// It exposes methods that can operate on this data type through `MenuButtonClassProtocol` conformance.
/// Use `MenuButtonClassRef` only as an `unowned` reference to an existing `GtkMenuButtonClass` instance.
///

public struct MenuButtonClassRef: MenuButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuButtonClassProtocol`
    init<T: MenuButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuButtonClass` type acts as an owner of an underlying `GtkMenuButtonClass` instance.
/// It provides the methods that can operate on this data type through `MenuButtonClassProtocol` conformance.
/// Use `MenuButtonClass` as a strong reference or owner of a `GtkMenuButtonClass` instance.
///

open class MenuButtonClass: MenuButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuButtonClassProtocol`
    /// `GtkMenuButtonClass` does not allow reference counting.
    public convenience init<T: MenuButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuButtonClass`.
    deinit {
        // no reference counting for GtkMenuButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuButtonClass>(opaquePointer))
    }



}

// MARK: - no MenuButtonClass properties

// MARK: - no signals


public extension MenuButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonClass> { return ptr.assumingMemoryBound(to: GtkMenuButtonClass.self) }

}



// MARK: - MenuButtonPrivate Record

/// The `MenuButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButtonPrivate`.
/// Alternatively, use `MenuButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonPrivate> { get }
}

/// The `MenuButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuButtonPrivateProtocol` conformance.
/// Use `MenuButtonPrivateRef` only as an `unowned` reference to an existing `GtkMenuButtonPrivate` instance.
///

public struct MenuButtonPrivateRef: MenuButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuButtonPrivateProtocol`
    init<T: MenuButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuButtonPrivate` type acts as an owner of an underlying `GtkMenuButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuButtonPrivateProtocol` conformance.
/// Use `MenuButtonPrivate` as a strong reference or owner of a `GtkMenuButtonPrivate` instance.
///

open class MenuButtonPrivate: MenuButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuButtonPrivateProtocol`
    /// `GtkMenuButtonPrivate` does not allow reference counting.
    public convenience init<T: MenuButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuButtonPrivate`.
    deinit {
        // no reference counting for GtkMenuButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuButtonPrivate>(opaquePointer))
    }



}

// MARK: - no MenuButtonPrivate properties

// MARK: - no signals


public extension MenuButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuButtonPrivate> { return ptr.assumingMemoryBound(to: GtkMenuButtonPrivate.self) }

}



// MARK: - MenuClass Record

/// The `MenuClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuClass`.
/// Alternatively, use `MenuClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuClass> { get }
}

/// The `MenuClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuClass` instance.
/// It exposes methods that can operate on this data type through `MenuClassProtocol` conformance.
/// Use `MenuClassRef` only as an `unowned` reference to an existing `GtkMenuClass` instance.
///

public struct MenuClassRef: MenuClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuClassProtocol`
    init<T: MenuClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuClass` type acts as an owner of an underlying `GtkMenuClass` instance.
/// It provides the methods that can operate on this data type through `MenuClassProtocol` conformance.
/// Use `MenuClass` as a strong reference or owner of a `GtkMenuClass` instance.
///

open class MenuClass: MenuClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuClassProtocol`
    /// `GtkMenuClass` does not allow reference counting.
    public convenience init<T: MenuClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuClass`.
    deinit {
        // no reference counting for GtkMenuClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuClass>(opaquePointer))
    }



}

// MARK: - no MenuClass properties

// MARK: - no signals


public extension MenuClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuClass> { return ptr.assumingMemoryBound(to: GtkMenuClass.self) }

}



// MARK: - MenuItemAccessibleClass Record

/// The `MenuItemAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItemAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItemAccessibleClass`.
/// Alternatively, use `MenuItemAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemAccessibleClass> { get }
}

/// The `MenuItemAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItemAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuItemAccessibleClassProtocol` conformance.
/// Use `MenuItemAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuItemAccessibleClass` instance.
///

public struct MenuItemAccessibleClassRef: MenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuItemAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuItemAccessibleClassProtocol`
    init<T: MenuItemAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuItemAccessibleClass` type acts as an owner of an underlying `GtkMenuItemAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `MenuItemAccessibleClassProtocol` conformance.
/// Use `MenuItemAccessibleClass` as a strong reference or owner of a `GtkMenuItemAccessibleClass` instance.
///

open class MenuItemAccessibleClass: MenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuItemAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuItemAccessibleClassProtocol`
    /// `GtkMenuItemAccessibleClass` does not allow reference counting.
    public convenience init<T: MenuItemAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuItemAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuItemAccessibleClass`.
    deinit {
        // no reference counting for GtkMenuItemAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuItemAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuItemAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuItemAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuItemAccessibleClass>(opaquePointer))
    }



}

// MARK: - no MenuItemAccessibleClass properties

// MARK: - no signals


public extension MenuItemAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemAccessibleClass> { return ptr.assumingMemoryBound(to: GtkMenuItemAccessibleClass.self) }

}



// MARK: - MenuItemAccessiblePrivate Record

/// The `MenuItemAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItemAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItemAccessiblePrivate`.
/// Alternatively, use `MenuItemAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuItemAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemAccessiblePrivate> { get }
}

/// The `MenuItemAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItemAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `MenuItemAccessiblePrivateProtocol` conformance.
/// Use `MenuItemAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkMenuItemAccessiblePrivate` instance.
///

public struct MenuItemAccessiblePrivateRef: MenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuItemAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuItemAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuItemAccessiblePrivateProtocol`
    init<T: MenuItemAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuItemAccessiblePrivate` type acts as an owner of an underlying `GtkMenuItemAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `MenuItemAccessiblePrivateProtocol` conformance.
/// Use `MenuItemAccessiblePrivate` as a strong reference or owner of a `GtkMenuItemAccessiblePrivate` instance.
///

open class MenuItemAccessiblePrivate: MenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuItemAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuItemAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuItemAccessiblePrivateProtocol`
    /// `GtkMenuItemAccessiblePrivate` does not allow reference counting.
    public convenience init<T: MenuItemAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuItemAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuItemAccessiblePrivate`.
    deinit {
        // no reference counting for GtkMenuItemAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuItemAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuItemAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuItemAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuItemAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no MenuItemAccessiblePrivate properties

// MARK: - no signals


public extension MenuItemAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItemAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkMenuItemAccessiblePrivate.self) }

}



// MARK: - MenuItemClass Record

/// The `MenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItemClass`.
/// Alternatively, use `MenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemClass> { get }
}

/// The `MenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `MenuItemClassProtocol` conformance.
/// Use `MenuItemClassRef` only as an `unowned` reference to an existing `GtkMenuItemClass` instance.
///

public struct MenuItemClassRef: MenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuItemClassProtocol`
    init<T: MenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuItemClass` type acts as an owner of an underlying `GtkMenuItemClass` instance.
/// It provides the methods that can operate on this data type through `MenuItemClassProtocol` conformance.
/// Use `MenuItemClass` as a strong reference or owner of a `GtkMenuItemClass` instance.
///

open class MenuItemClass: MenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuItemClassProtocol`
    /// `GtkMenuItemClass` does not allow reference counting.
    public convenience init<T: MenuItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuItemClass`.
    deinit {
        // no reference counting for GtkMenuItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuItemClass>(opaquePointer))
    }



}

// MARK: - no MenuItemClass properties

// MARK: - no signals


public extension MenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemClass> { return ptr.assumingMemoryBound(to: GtkMenuItemClass.self) }

}



// MARK: - MenuItemPrivate Record

/// The `MenuItemPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItemPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItemPrivate`.
/// Alternatively, use `MenuItemPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemPrivate> { get }
}

/// The `MenuItemPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItemPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuItemPrivateProtocol` conformance.
/// Use `MenuItemPrivateRef` only as an `unowned` reference to an existing `GtkMenuItemPrivate` instance.
///

public struct MenuItemPrivateRef: MenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuItemPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuItemPrivateProtocol`
    init<T: MenuItemPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuItemPrivate` type acts as an owner of an underlying `GtkMenuItemPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuItemPrivateProtocol` conformance.
/// Use `MenuItemPrivate` as a strong reference or owner of a `GtkMenuItemPrivate` instance.
///

open class MenuItemPrivate: MenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuItemPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuItemPrivateProtocol`
    /// `GtkMenuItemPrivate` does not allow reference counting.
    public convenience init<T: MenuItemPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuItemPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuItemPrivate`.
    deinit {
        // no reference counting for GtkMenuItemPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuItemPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuItemPrivate>(opaquePointer))
    }



}

// MARK: - no MenuItemPrivate properties

// MARK: - no signals


public extension MenuItemPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuItemPrivate> { return ptr.assumingMemoryBound(to: GtkMenuItemPrivate.self) }

}



// MARK: - MenuPrivate Record

/// The `MenuPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuPrivate`.
/// Alternatively, use `MenuPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuPrivate> { get }
}

/// The `MenuPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuPrivateProtocol` conformance.
/// Use `MenuPrivateRef` only as an `unowned` reference to an existing `GtkMenuPrivate` instance.
///

public struct MenuPrivateRef: MenuPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuPrivateProtocol`
    init<T: MenuPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuPrivate` type acts as an owner of an underlying `GtkMenuPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuPrivateProtocol` conformance.
/// Use `MenuPrivate` as a strong reference or owner of a `GtkMenuPrivate` instance.
///

open class MenuPrivate: MenuPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuPrivateProtocol`
    /// `GtkMenuPrivate` does not allow reference counting.
    public convenience init<T: MenuPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuPrivate`.
    deinit {
        // no reference counting for GtkMenuPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuPrivate>(opaquePointer))
    }



}

// MARK: - no MenuPrivate properties

// MARK: - no signals


public extension MenuPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuPrivate> { return ptr.assumingMemoryBound(to: GtkMenuPrivate.self) }

}



// MARK: - MenuShellAccessibleClass Record

/// The `MenuShellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShellAccessibleClass`.
/// Alternatively, use `MenuShellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuShellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuShellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellAccessibleClass> { get }
}

/// The `MenuShellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuShellAccessibleClassProtocol` conformance.
/// Use `MenuShellAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuShellAccessibleClass` instance.
///

public struct MenuShellAccessibleClassRef: MenuShellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuShellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuShellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuShellAccessibleClassProtocol`
    init<T: MenuShellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuShellAccessibleClass` type acts as an owner of an underlying `GtkMenuShellAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `MenuShellAccessibleClassProtocol` conformance.
/// Use `MenuShellAccessibleClass` as a strong reference or owner of a `GtkMenuShellAccessibleClass` instance.
///

open class MenuShellAccessibleClass: MenuShellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuShellAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuShellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuShellAccessibleClassProtocol`
    /// `GtkMenuShellAccessibleClass` does not allow reference counting.
    public convenience init<T: MenuShellAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuShellAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuShellAccessibleClass`.
    deinit {
        // no reference counting for GtkMenuShellAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuShellAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuShellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuShellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuShellAccessibleClass>(opaquePointer))
    }



}

// MARK: - no MenuShellAccessibleClass properties

// MARK: - no signals


public extension MenuShellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellAccessibleClass> { return ptr.assumingMemoryBound(to: GtkMenuShellAccessibleClass.self) }

}



// MARK: - MenuShellAccessiblePrivate Record

/// The `MenuShellAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShellAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShellAccessiblePrivate`.
/// Alternatively, use `MenuShellAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuShellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuShellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellAccessiblePrivate> { get }
}

/// The `MenuShellAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShellAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `MenuShellAccessiblePrivateProtocol` conformance.
/// Use `MenuShellAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkMenuShellAccessiblePrivate` instance.
///

public struct MenuShellAccessiblePrivateRef: MenuShellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuShellAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuShellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuShellAccessiblePrivateProtocol`
    init<T: MenuShellAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuShellAccessiblePrivate` type acts as an owner of an underlying `GtkMenuShellAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `MenuShellAccessiblePrivateProtocol` conformance.
/// Use `MenuShellAccessiblePrivate` as a strong reference or owner of a `GtkMenuShellAccessiblePrivate` instance.
///

open class MenuShellAccessiblePrivate: MenuShellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuShellAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuShellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuShellAccessiblePrivateProtocol`
    /// `GtkMenuShellAccessiblePrivate` does not allow reference counting.
    public convenience init<T: MenuShellAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuShellAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuShellAccessiblePrivate`.
    deinit {
        // no reference counting for GtkMenuShellAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuShellAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuShellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuShellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuShellAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no MenuShellAccessiblePrivate properties

// MARK: - no signals


public extension MenuShellAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkMenuShellAccessiblePrivate.self) }

}



// MARK: - MenuShellClass Record

/// The `MenuShellClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShellClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShellClass`.
/// Alternatively, use `MenuShellClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuShellClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuShellClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellClass> { get }
}

/// The `MenuShellClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShellClass` instance.
/// It exposes methods that can operate on this data type through `MenuShellClassProtocol` conformance.
/// Use `MenuShellClassRef` only as an `unowned` reference to an existing `GtkMenuShellClass` instance.
///

public struct MenuShellClassRef: MenuShellClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuShellClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuShellClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuShellClassProtocol`
    init<T: MenuShellClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuShellClass` type acts as an owner of an underlying `GtkMenuShellClass` instance.
/// It provides the methods that can operate on this data type through `MenuShellClassProtocol` conformance.
/// Use `MenuShellClass` as a strong reference or owner of a `GtkMenuShellClass` instance.
///

open class MenuShellClass: MenuShellClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuShellClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuShellClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuShellClassProtocol`
    /// `GtkMenuShellClass` does not allow reference counting.
    public convenience init<T: MenuShellClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuShellClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuShellClass`.
    deinit {
        // no reference counting for GtkMenuShellClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuShellClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuShellClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuShellClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuShellClass>(opaquePointer))
    }



}

// MARK: - no MenuShellClass properties

// MARK: - no signals


public extension MenuShellClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShellClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellClass> { return ptr.assumingMemoryBound(to: GtkMenuShellClass.self) }

}



// MARK: - MenuShellPrivate Record

/// The `MenuShellPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShellPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShellPrivate`.
/// Alternatively, use `MenuShellPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuShellPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuShellPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellPrivate> { get }
}

/// The `MenuShellPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShellPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuShellPrivateProtocol` conformance.
/// Use `MenuShellPrivateRef` only as an `unowned` reference to an existing `GtkMenuShellPrivate` instance.
///

public struct MenuShellPrivateRef: MenuShellPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuShellPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuShellPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuShellPrivateProtocol`
    init<T: MenuShellPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuShellPrivate` type acts as an owner of an underlying `GtkMenuShellPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuShellPrivateProtocol` conformance.
/// Use `MenuShellPrivate` as a strong reference or owner of a `GtkMenuShellPrivate` instance.
///

open class MenuShellPrivate: MenuShellPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuShellPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuShellPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuShellPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuShellPrivateProtocol`
    /// `GtkMenuShellPrivate` does not allow reference counting.
    public convenience init<T: MenuShellPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuShellPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuShellPrivate`.
    deinit {
        // no reference counting for GtkMenuShellPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuShellPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuShellPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuShellPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuShellPrivate>(opaquePointer))
    }



}

// MARK: - no MenuShellPrivate properties

// MARK: - no signals


public extension MenuShellPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShellPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuShellPrivate> { return ptr.assumingMemoryBound(to: GtkMenuShellPrivate.self) }

}



// MARK: - MenuToolButtonClass Record

/// The `MenuToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuToolButtonClass`.
/// Alternatively, use `MenuToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuToolButtonClass> { get }
}

/// The `MenuToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `MenuToolButtonClassProtocol` conformance.
/// Use `MenuToolButtonClassRef` only as an `unowned` reference to an existing `GtkMenuToolButtonClass` instance.
///

public struct MenuToolButtonClassRef: MenuToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuToolButtonClassProtocol`
    init<T: MenuToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuToolButtonClass` type acts as an owner of an underlying `GtkMenuToolButtonClass` instance.
/// It provides the methods that can operate on this data type through `MenuToolButtonClassProtocol` conformance.
/// Use `MenuToolButtonClass` as a strong reference or owner of a `GtkMenuToolButtonClass` instance.
///

open class MenuToolButtonClass: MenuToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuToolButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuToolButtonClassProtocol`
    /// `GtkMenuToolButtonClass` does not allow reference counting.
    public convenience init<T: MenuToolButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuToolButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuToolButtonClass`.
    deinit {
        // no reference counting for GtkMenuToolButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuToolButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuToolButtonClass>(opaquePointer))
    }



}

// MARK: - no MenuToolButtonClass properties

// MARK: - no signals


public extension MenuToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuToolButtonClass> { return ptr.assumingMemoryBound(to: GtkMenuToolButtonClass.self) }

}



// MARK: - MenuToolButtonPrivate Record

/// The `MenuToolButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMenuToolButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuToolButtonPrivate`.
/// Alternatively, use `MenuToolButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuToolButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuToolButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuToolButtonPrivate> { get }
}

/// The `MenuToolButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMenuToolButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuToolButtonPrivateProtocol` conformance.
/// Use `MenuToolButtonPrivateRef` only as an `unowned` reference to an existing `GtkMenuToolButtonPrivate` instance.
///

public struct MenuToolButtonPrivateRef: MenuToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuToolButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuToolButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuToolButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuToolButtonPrivateProtocol`
    init<T: MenuToolButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuToolButtonPrivate` type acts as an owner of an underlying `GtkMenuToolButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuToolButtonPrivateProtocol` conformance.
/// Use `MenuToolButtonPrivate` as a strong reference or owner of a `GtkMenuToolButtonPrivate` instance.
///

open class MenuToolButtonPrivate: MenuToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMenuToolButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuToolButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuToolButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuToolButtonPrivateProtocol`
    /// `GtkMenuToolButtonPrivate` does not allow reference counting.
    public convenience init<T: MenuToolButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuToolButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuToolButtonPrivate`.
    deinit {
        // no reference counting for GtkMenuToolButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuToolButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuToolButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuToolButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuToolButtonPrivate>(opaquePointer))
    }



}

// MARK: - no MenuToolButtonPrivate properties

// MARK: - no signals


public extension MenuToolButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuToolButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuToolButtonPrivate> { return ptr.assumingMemoryBound(to: GtkMenuToolButtonPrivate.self) }

}



// MARK: - MessageDialogClass Record

/// The `MessageDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkMessageDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MessageDialogClass`.
/// Alternatively, use `MessageDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MessageDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkMessageDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMessageDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMessageDialogClass> { get }
}

/// The `MessageDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkMessageDialogClass` instance.
/// It exposes methods that can operate on this data type through `MessageDialogClassProtocol` conformance.
/// Use `MessageDialogClassRef` only as an `unowned` reference to an existing `GtkMessageDialogClass` instance.
///

public struct MessageDialogClassRef: MessageDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkMessageDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MessageDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMessageDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MessageDialogClassProtocol`
    init<T: MessageDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MessageDialogClass` type acts as an owner of an underlying `GtkMessageDialogClass` instance.
/// It provides the methods that can operate on this data type through `MessageDialogClassProtocol` conformance.
/// Use `MessageDialogClass` as a strong reference or owner of a `GtkMessageDialogClass` instance.
///

open class MessageDialogClass: MessageDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkMessageDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MessageDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMessageDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MessageDialogClassProtocol`
    /// `GtkMessageDialogClass` does not allow reference counting.
    public convenience init<T: MessageDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMessageDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMessageDialogClass`.
    deinit {
        // no reference counting for GtkMessageDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMessageDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMessageDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMessageDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMessageDialogClass>(opaquePointer))
    }



}

// MARK: - no MessageDialogClass properties

// MARK: - no signals


public extension MessageDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMessageDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMessageDialogClass> { return ptr.assumingMemoryBound(to: GtkMessageDialogClass.self) }

}



// MARK: - MessageDialogPrivate Record

/// The `MessageDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMessageDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MessageDialogPrivate`.
/// Alternatively, use `MessageDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MessageDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMessageDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMessageDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMessageDialogPrivate> { get }
}

/// The `MessageDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMessageDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `MessageDialogPrivateProtocol` conformance.
/// Use `MessageDialogPrivateRef` only as an `unowned` reference to an existing `GtkMessageDialogPrivate` instance.
///

public struct MessageDialogPrivateRef: MessageDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMessageDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MessageDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMessageDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MessageDialogPrivateProtocol`
    init<T: MessageDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MessageDialogPrivate` type acts as an owner of an underlying `GtkMessageDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `MessageDialogPrivateProtocol` conformance.
/// Use `MessageDialogPrivate` as a strong reference or owner of a `GtkMessageDialogPrivate` instance.
///

open class MessageDialogPrivate: MessageDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMessageDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MessageDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMessageDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MessageDialogPrivateProtocol`
    /// `GtkMessageDialogPrivate` does not allow reference counting.
    public convenience init<T: MessageDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMessageDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMessageDialogPrivate`.
    deinit {
        // no reference counting for GtkMessageDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMessageDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMessageDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMessageDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMessageDialogPrivate>(opaquePointer))
    }



}

// MARK: - no MessageDialogPrivate properties

// MARK: - no signals


public extension MessageDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMessageDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMessageDialogPrivate> { return ptr.assumingMemoryBound(to: GtkMessageDialogPrivate.self) }

}



// MARK: - MiscClass Record

/// The `MiscClassProtocol` protocol exposes the methods and properties of an underlying `GtkMiscClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MiscClass`.
/// Alternatively, use `MiscClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MiscClassProtocol {
    /// Untyped pointer to the underlying `GtkMiscClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMiscClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMiscClass> { get }
}

/// The `MiscClassRef` type acts as a lightweight Swift reference to an underlying `GtkMiscClass` instance.
/// It exposes methods that can operate on this data type through `MiscClassProtocol` conformance.
/// Use `MiscClassRef` only as an `unowned` reference to an existing `GtkMiscClass` instance.
///

public struct MiscClassRef: MiscClassProtocol {
    /// Untyped pointer to the underlying `GtkMiscClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MiscClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMiscClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MiscClassProtocol`
    init<T: MiscClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MiscClass` type acts as an owner of an underlying `GtkMiscClass` instance.
/// It provides the methods that can operate on this data type through `MiscClassProtocol` conformance.
/// Use `MiscClass` as a strong reference or owner of a `GtkMiscClass` instance.
///

open class MiscClass: MiscClassProtocol {
    /// Untyped pointer to the underlying `GtkMiscClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MiscClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMiscClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MiscClassProtocol`
    /// `GtkMiscClass` does not allow reference counting.
    public convenience init<T: MiscClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMiscClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMiscClass`.
    deinit {
        // no reference counting for GtkMiscClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMiscClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMiscClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMiscClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMiscClass>(opaquePointer))
    }



}

// MARK: - no MiscClass properties

// MARK: - no signals


public extension MiscClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMiscClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMiscClass> { return ptr.assumingMemoryBound(to: GtkMiscClass.self) }

}



// MARK: - MiscPrivate Record

/// The `MiscPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMiscPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MiscPrivate`.
/// Alternatively, use `MiscPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MiscPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMiscPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMiscPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMiscPrivate> { get }
}

/// The `MiscPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMiscPrivate` instance.
/// It exposes methods that can operate on this data type through `MiscPrivateProtocol` conformance.
/// Use `MiscPrivateRef` only as an `unowned` reference to an existing `GtkMiscPrivate` instance.
///

public struct MiscPrivateRef: MiscPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMiscPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MiscPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMiscPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MiscPrivateProtocol`
    init<T: MiscPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MiscPrivate` type acts as an owner of an underlying `GtkMiscPrivate` instance.
/// It provides the methods that can operate on this data type through `MiscPrivateProtocol` conformance.
/// Use `MiscPrivate` as a strong reference or owner of a `GtkMiscPrivate` instance.
///

open class MiscPrivate: MiscPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMiscPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MiscPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMiscPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MiscPrivateProtocol`
    /// `GtkMiscPrivate` does not allow reference counting.
    public convenience init<T: MiscPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMiscPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMiscPrivate`.
    deinit {
        // no reference counting for GtkMiscPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMiscPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMiscPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMiscPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMiscPrivate>(opaquePointer))
    }



}

// MARK: - no MiscPrivate properties

// MARK: - no signals


public extension MiscPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMiscPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMiscPrivate> { return ptr.assumingMemoryBound(to: GtkMiscPrivate.self) }

}



// MARK: - MountOperationClass Record

/// The `MountOperationClassProtocol` protocol exposes the methods and properties of an underlying `GtkMountOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperationClass`.
/// Alternatively, use `MountOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MountOperationClassProtocol {
    /// Untyped pointer to the underlying `GtkMountOperationClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMountOperationClass> { get }
}

/// The `MountOperationClassRef` type acts as a lightweight Swift reference to an underlying `GtkMountOperationClass` instance.
/// It exposes methods that can operate on this data type through `MountOperationClassProtocol` conformance.
/// Use `MountOperationClassRef` only as an `unowned` reference to an existing `GtkMountOperationClass` instance.
///

public struct MountOperationClassRef: MountOperationClassProtocol {
    /// Untyped pointer to the underlying `GtkMountOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MountOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MountOperationClassProtocol`
    init<T: MountOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MountOperationClass` type acts as an owner of an underlying `GtkMountOperationClass` instance.
/// It provides the methods that can operate on this data type through `MountOperationClassProtocol` conformance.
/// Use `MountOperationClass` as a strong reference or owner of a `GtkMountOperationClass` instance.
///

open class MountOperationClass: MountOperationClassProtocol {
    /// Untyped pointer to the underlying `GtkMountOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MountOperationClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MountOperationClassProtocol`
    /// `GtkMountOperationClass` does not allow reference counting.
    public convenience init<T: MountOperationClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMountOperationClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMountOperationClass`.
    deinit {
        // no reference counting for GtkMountOperationClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMountOperationClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMountOperationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMountOperationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMountOperationClass>(opaquePointer))
    }



}

// MARK: - no MountOperationClass properties

// MARK: - no signals


public extension MountOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMountOperationClass> { return ptr.assumingMemoryBound(to: GtkMountOperationClass.self) }

}



// MARK: - MountOperationPrivate Record

/// The `MountOperationPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkMountOperationPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperationPrivate`.
/// Alternatively, use `MountOperationPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MountOperationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMountOperationPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMountOperationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMountOperationPrivate> { get }
}

/// The `MountOperationPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkMountOperationPrivate` instance.
/// It exposes methods that can operate on this data type through `MountOperationPrivateProtocol` conformance.
/// Use `MountOperationPrivateRef` only as an `unowned` reference to an existing `GtkMountOperationPrivate` instance.
///

public struct MountOperationPrivateRef: MountOperationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMountOperationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MountOperationPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMountOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MountOperationPrivateProtocol`
    init<T: MountOperationPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MountOperationPrivate` type acts as an owner of an underlying `GtkMountOperationPrivate` instance.
/// It provides the methods that can operate on this data type through `MountOperationPrivateProtocol` conformance.
/// Use `MountOperationPrivate` as a strong reference or owner of a `GtkMountOperationPrivate` instance.
///

open class MountOperationPrivate: MountOperationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkMountOperationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MountOperationPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkMountOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MountOperationPrivateProtocol`
    /// `GtkMountOperationPrivate` does not allow reference counting.
    public convenience init<T: MountOperationPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMountOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMountOperationPrivate`.
    deinit {
        // no reference counting for GtkMountOperationPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMountOperationPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMountOperationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMountOperationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMountOperationPrivate>(opaquePointer))
    }



}

// MARK: - no MountOperationPrivate properties

// MARK: - no signals


public extension MountOperationPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMountOperationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkMountOperationPrivate> { return ptr.assumingMemoryBound(to: GtkMountOperationPrivate.self) }

}



// MARK: - NativeDialogClass Record

/// The `NativeDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkNativeDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeDialogClass`.
/// Alternatively, use `NativeDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NativeDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkNativeDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNativeDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNativeDialogClass> { get }
}

/// The `NativeDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkNativeDialogClass` instance.
/// It exposes methods that can operate on this data type through `NativeDialogClassProtocol` conformance.
/// Use `NativeDialogClassRef` only as an `unowned` reference to an existing `GtkNativeDialogClass` instance.
///

public struct NativeDialogClassRef: NativeDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkNativeDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NativeDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNativeDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NativeDialogClassProtocol`
    init<T: NativeDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NativeDialogClass` type acts as an owner of an underlying `GtkNativeDialogClass` instance.
/// It provides the methods that can operate on this data type through `NativeDialogClassProtocol` conformance.
/// Use `NativeDialogClass` as a strong reference or owner of a `GtkNativeDialogClass` instance.
///

open class NativeDialogClass: NativeDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkNativeDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NativeDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkNativeDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NativeDialogClassProtocol`
    /// `GtkNativeDialogClass` does not allow reference counting.
    public convenience init<T: NativeDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNativeDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNativeDialogClass`.
    deinit {
        // no reference counting for GtkNativeDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNativeDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNativeDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNativeDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNativeDialogClass>(opaquePointer))
    }



}

// MARK: - no NativeDialogClass properties

// MARK: - no signals


public extension NativeDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNativeDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNativeDialogClass> { return ptr.assumingMemoryBound(to: GtkNativeDialogClass.self) }

}



