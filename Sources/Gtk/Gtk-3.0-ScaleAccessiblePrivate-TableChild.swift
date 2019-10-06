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

// MARK: - ScaleAccessiblePrivate Record

/// The `ScaleAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkScaleAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleAccessiblePrivate`.
/// Alternatively, use `ScaleAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScaleAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleAccessiblePrivate> { get }
}

/// The `ScaleAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkScaleAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ScaleAccessiblePrivateProtocol` conformance.
/// Use `ScaleAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkScaleAccessiblePrivate` instance.
///

public struct ScaleAccessiblePrivateRef: ScaleAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScaleAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleAccessiblePrivateProtocol`
    init<T: ScaleAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScaleAccessiblePrivate` type acts as an owner of an underlying `GtkScaleAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ScaleAccessiblePrivateProtocol` conformance.
/// Use `ScaleAccessiblePrivate` as a strong reference or owner of a `GtkScaleAccessiblePrivate` instance.
///

open class ScaleAccessiblePrivate: ScaleAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScaleAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkScaleAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScaleAccessiblePrivateProtocol`
    /// `GtkScaleAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ScaleAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScaleAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScaleAccessiblePrivate`.
    deinit {
        // no reference counting for GtkScaleAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScaleAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScaleAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScaleAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScaleAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ScaleAccessiblePrivate properties

// MARK: - no signals


public extension ScaleAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkScaleAccessiblePrivate.self) }

}



// MARK: - ScaleButtonAccessibleClass Record

/// The `ScaleButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleButtonAccessibleClass`.
/// Alternatively, use `ScaleButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScaleButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonAccessibleClass> { get }
}

/// The `ScaleButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ScaleButtonAccessibleClassProtocol` conformance.
/// Use `ScaleButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkScaleButtonAccessibleClass` instance.
///

public struct ScaleButtonAccessibleClassRef: ScaleButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScaleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleButtonAccessibleClassProtocol`
    init<T: ScaleButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScaleButtonAccessibleClass` type acts as an owner of an underlying `GtkScaleButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ScaleButtonAccessibleClassProtocol` conformance.
/// Use `ScaleButtonAccessibleClass` as a strong reference or owner of a `GtkScaleButtonAccessibleClass` instance.
///

open class ScaleButtonAccessibleClass: ScaleButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScaleButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkScaleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScaleButtonAccessibleClassProtocol`
    /// `GtkScaleButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: ScaleButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScaleButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScaleButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkScaleButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScaleButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScaleButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScaleButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScaleButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ScaleButtonAccessibleClass properties

// MARK: - no signals


public extension ScaleButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkScaleButtonAccessibleClass.self) }

}



// MARK: - ScaleButtonAccessiblePrivate Record

/// The `ScaleButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkScaleButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleButtonAccessiblePrivate`.
/// Alternatively, use `ScaleButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScaleButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonAccessiblePrivate> { get }
}

/// The `ScaleButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkScaleButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ScaleButtonAccessiblePrivateProtocol` conformance.
/// Use `ScaleButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkScaleButtonAccessiblePrivate` instance.
///

public struct ScaleButtonAccessiblePrivateRef: ScaleButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScaleButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleButtonAccessiblePrivateProtocol`
    init<T: ScaleButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScaleButtonAccessiblePrivate` type acts as an owner of an underlying `GtkScaleButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ScaleButtonAccessiblePrivateProtocol` conformance.
/// Use `ScaleButtonAccessiblePrivate` as a strong reference or owner of a `GtkScaleButtonAccessiblePrivate` instance.
///

open class ScaleButtonAccessiblePrivate: ScaleButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScaleButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkScaleButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScaleButtonAccessiblePrivateProtocol`
    /// `GtkScaleButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ScaleButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScaleButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScaleButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkScaleButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScaleButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScaleButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScaleButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScaleButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ScaleButtonAccessiblePrivate properties

// MARK: - no signals


public extension ScaleButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkScaleButtonAccessiblePrivate.self) }

}



// MARK: - ScaleButtonClass Record

/// The `ScaleButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleButtonClass`.
/// Alternatively, use `ScaleButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScaleButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonClass> { get }
}

/// The `ScaleButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleButtonClass` instance.
/// It exposes methods that can operate on this data type through `ScaleButtonClassProtocol` conformance.
/// Use `ScaleButtonClassRef` only as an `unowned` reference to an existing `GtkScaleButtonClass` instance.
///

public struct ScaleButtonClassRef: ScaleButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScaleButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleButtonClassProtocol`
    init<T: ScaleButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScaleButtonClass` type acts as an owner of an underlying `GtkScaleButtonClass` instance.
/// It provides the methods that can operate on this data type through `ScaleButtonClassProtocol` conformance.
/// Use `ScaleButtonClass` as a strong reference or owner of a `GtkScaleButtonClass` instance.
///

open class ScaleButtonClass: ScaleButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScaleButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkScaleButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScaleButtonClassProtocol`
    /// `GtkScaleButtonClass` does not allow reference counting.
    public convenience init<T: ScaleButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScaleButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScaleButtonClass`.
    deinit {
        // no reference counting for GtkScaleButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScaleButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScaleButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScaleButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScaleButtonClass>(opaquePointer))
    }



}

// MARK: - no ScaleButtonClass properties

// MARK: - no signals


public extension ScaleButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonClass> { return ptr.assumingMemoryBound(to: GtkScaleButtonClass.self) }

}



// MARK: - ScaleButtonPrivate Record

/// The `ScaleButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkScaleButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleButtonPrivate`.
/// Alternatively, use `ScaleButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScaleButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonPrivate> { get }
}

/// The `ScaleButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkScaleButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `ScaleButtonPrivateProtocol` conformance.
/// Use `ScaleButtonPrivateRef` only as an `unowned` reference to an existing `GtkScaleButtonPrivate` instance.
///

public struct ScaleButtonPrivateRef: ScaleButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScaleButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleButtonPrivateProtocol`
    init<T: ScaleButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScaleButtonPrivate` type acts as an owner of an underlying `GtkScaleButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `ScaleButtonPrivateProtocol` conformance.
/// Use `ScaleButtonPrivate` as a strong reference or owner of a `GtkScaleButtonPrivate` instance.
///

open class ScaleButtonPrivate: ScaleButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkScaleButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScaleButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkScaleButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScaleButtonPrivateProtocol`
    /// `GtkScaleButtonPrivate` does not allow reference counting.
    public convenience init<T: ScaleButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScaleButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScaleButtonPrivate`.
    deinit {
        // no reference counting for GtkScaleButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScaleButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScaleButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScaleButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScaleButtonPrivate>(opaquePointer))
    }



}

// MARK: - no ScaleButtonPrivate properties

// MARK: - no signals


public extension ScaleButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleButtonPrivate> { return ptr.assumingMemoryBound(to: GtkScaleButtonPrivate.self) }

}



// MARK: - ScaleClass Record

/// The `ScaleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleClass`.
/// Alternatively, use `ScaleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleClass> { get }
}

/// The `ScaleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleClass` instance.
/// It exposes methods that can operate on this data type through `ScaleClassProtocol` conformance.
/// Use `ScaleClassRef` only as an `unowned` reference to an existing `GtkScaleClass` instance.
///

public struct ScaleClassRef: ScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScaleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleClassProtocol`
    init<T: ScaleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScaleClass` type acts as an owner of an underlying `GtkScaleClass` instance.
/// It provides the methods that can operate on this data type through `ScaleClassProtocol` conformance.
/// Use `ScaleClass` as a strong reference or owner of a `GtkScaleClass` instance.
///

open class ScaleClass: ScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScaleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkScaleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScaleClassProtocol`
    /// `GtkScaleClass` does not allow reference counting.
    public convenience init<T: ScaleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScaleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScaleClass`.
    deinit {
        // no reference counting for GtkScaleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScaleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScaleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScaleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScaleClass>(opaquePointer))
    }



}

// MARK: - no ScaleClass properties

// MARK: - no signals


public extension ScaleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleClass> { return ptr.assumingMemoryBound(to: GtkScaleClass.self) }

}



// MARK: - ScalePrivate Record

/// The `ScalePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkScalePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScalePrivate`.
/// Alternatively, use `ScalePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScalePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScalePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScalePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScalePrivate> { get }
}

/// The `ScalePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkScalePrivate` instance.
/// It exposes methods that can operate on this data type through `ScalePrivateProtocol` conformance.
/// Use `ScalePrivateRef` only as an `unowned` reference to an existing `GtkScalePrivate` instance.
///

public struct ScalePrivateRef: ScalePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScalePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScalePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScalePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScalePrivateProtocol`
    init<T: ScalePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScalePrivate` type acts as an owner of an underlying `GtkScalePrivate` instance.
/// It provides the methods that can operate on this data type through `ScalePrivateProtocol` conformance.
/// Use `ScalePrivate` as a strong reference or owner of a `GtkScalePrivate` instance.
///

open class ScalePrivate: ScalePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScalePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScalePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkScalePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScalePrivateProtocol`
    /// `GtkScalePrivate` does not allow reference counting.
    public convenience init<T: ScalePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScalePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScalePrivate`.
    deinit {
        // no reference counting for GtkScalePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScalePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScalePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScalePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScalePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScalePrivate>(opaquePointer))
    }



}

// MARK: - no ScalePrivate properties

// MARK: - no signals


public extension ScalePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScalePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScalePrivate> { return ptr.assumingMemoryBound(to: GtkScalePrivate.self) }

}



// MARK: - ScrollableInterface Record

/// The `ScrollableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkScrollableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrollableInterface`.
/// Alternatively, use `ScrollableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrollableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkScrollableInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScrollableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkScrollableInterface> { get }
}

/// The `ScrollableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkScrollableInterface` instance.
/// It exposes methods that can operate on this data type through `ScrollableInterfaceProtocol` conformance.
/// Use `ScrollableInterfaceRef` only as an `unowned` reference to an existing `GtkScrollableInterface` instance.
///

public struct ScrollableInterfaceRef: ScrollableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkScrollableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScrollableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScrollableInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScrollableInterfaceProtocol`
    init<T: ScrollableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScrollableInterface` type acts as an owner of an underlying `GtkScrollableInterface` instance.
/// It provides the methods that can operate on this data type through `ScrollableInterfaceProtocol` conformance.
/// Use `ScrollableInterface` as a strong reference or owner of a `GtkScrollableInterface` instance.
///

open class ScrollableInterface: ScrollableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkScrollableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScrollableInterface` instance.
    public init(_ op: UnsafeMutablePointer<GtkScrollableInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScrollableInterfaceProtocol`
    /// `GtkScrollableInterface` does not allow reference counting.
    public convenience init<T: ScrollableInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScrollableInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScrollableInterface`.
    deinit {
        // no reference counting for GtkScrollableInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScrollableInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScrollableInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScrollableInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScrollableInterface>(opaquePointer))
    }



}

// MARK: - no ScrollableInterface properties

// MARK: - no signals


public extension ScrollableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkScrollableInterface> { return ptr.assumingMemoryBound(to: GtkScrollableInterface.self) }

}



// MARK: - ScrollbarClass Record

/// The `ScrollbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkScrollbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrollbarClass`.
/// Alternatively, use `ScrollbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkScrollbarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrollbarClass> { get }
}

/// The `ScrollbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkScrollbarClass` instance.
/// It exposes methods that can operate on this data type through `ScrollbarClassProtocol` conformance.
/// Use `ScrollbarClassRef` only as an `unowned` reference to an existing `GtkScrollbarClass` instance.
///

public struct ScrollbarClassRef: ScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScrollbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScrollbarClassProtocol`
    init<T: ScrollbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScrollbarClass` type acts as an owner of an underlying `GtkScrollbarClass` instance.
/// It provides the methods that can operate on this data type through `ScrollbarClassProtocol` conformance.
/// Use `ScrollbarClass` as a strong reference or owner of a `GtkScrollbarClass` instance.
///

open class ScrollbarClass: ScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScrollbarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScrollbarClassProtocol`
    /// `GtkScrollbarClass` does not allow reference counting.
    public convenience init<T: ScrollbarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScrollbarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScrollbarClass`.
    deinit {
        // no reference counting for GtkScrollbarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScrollbarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScrollbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScrollbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollbarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScrollbarClass>(opaquePointer))
    }



}

// MARK: - no ScrollbarClass properties

// MARK: - no signals


public extension ScrollbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrollbarClass> { return ptr.assumingMemoryBound(to: GtkScrollbarClass.self) }

}



// MARK: - ScrolledWindowAccessibleClass Record

/// The `ScrolledWindowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScrolledWindowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrolledWindowAccessibleClass`.
/// Alternatively, use `ScrolledWindowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrolledWindowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScrolledWindowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass> { get }
}

/// The `ScrolledWindowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScrolledWindowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ScrolledWindowAccessibleClassProtocol` conformance.
/// Use `ScrolledWindowAccessibleClassRef` only as an `unowned` reference to an existing `GtkScrolledWindowAccessibleClass` instance.
///

public struct ScrolledWindowAccessibleClassRef: ScrolledWindowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScrolledWindowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScrolledWindowAccessibleClassProtocol`
    init<T: ScrolledWindowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScrolledWindowAccessibleClass` type acts as an owner of an underlying `GtkScrolledWindowAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ScrolledWindowAccessibleClassProtocol` conformance.
/// Use `ScrolledWindowAccessibleClass` as a strong reference or owner of a `GtkScrolledWindowAccessibleClass` instance.
///

open class ScrolledWindowAccessibleClass: ScrolledWindowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScrolledWindowAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScrolledWindowAccessibleClassProtocol`
    /// `GtkScrolledWindowAccessibleClass` does not allow reference counting.
    public convenience init<T: ScrolledWindowAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScrolledWindowAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScrolledWindowAccessibleClass`.
    deinit {
        // no reference counting for GtkScrolledWindowAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScrolledWindowAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScrolledWindowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScrolledWindowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScrolledWindowAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ScrolledWindowAccessibleClass properties

// MARK: - no signals


public extension ScrolledWindowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrolledWindowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowAccessibleClass> { return ptr.assumingMemoryBound(to: GtkScrolledWindowAccessibleClass.self) }

}



// MARK: - ScrolledWindowAccessiblePrivate Record

/// The `ScrolledWindowAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkScrolledWindowAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrolledWindowAccessiblePrivate`.
/// Alternatively, use `ScrolledWindowAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrolledWindowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScrolledWindowAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowAccessiblePrivate> { get }
}

/// The `ScrolledWindowAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkScrolledWindowAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ScrolledWindowAccessiblePrivateProtocol` conformance.
/// Use `ScrolledWindowAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkScrolledWindowAccessiblePrivate` instance.
///

public struct ScrolledWindowAccessiblePrivateRef: ScrolledWindowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScrolledWindowAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScrolledWindowAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScrolledWindowAccessiblePrivateProtocol`
    init<T: ScrolledWindowAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScrolledWindowAccessiblePrivate` type acts as an owner of an underlying `GtkScrolledWindowAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ScrolledWindowAccessiblePrivateProtocol` conformance.
/// Use `ScrolledWindowAccessiblePrivate` as a strong reference or owner of a `GtkScrolledWindowAccessiblePrivate` instance.
///

open class ScrolledWindowAccessiblePrivate: ScrolledWindowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScrolledWindowAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkScrolledWindowAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScrolledWindowAccessiblePrivateProtocol`
    /// `GtkScrolledWindowAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ScrolledWindowAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScrolledWindowAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScrolledWindowAccessiblePrivate`.
    deinit {
        // no reference counting for GtkScrolledWindowAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScrolledWindowAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScrolledWindowAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScrolledWindowAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScrolledWindowAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ScrolledWindowAccessiblePrivate properties

// MARK: - no signals


public extension ScrolledWindowAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrolledWindowAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkScrolledWindowAccessiblePrivate.self) }

}



// MARK: - ScrolledWindowClass Record

/// The `ScrolledWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkScrolledWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrolledWindowClass`.
/// Alternatively, use `ScrolledWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrolledWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScrolledWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowClass> { get }
}

/// The `ScrolledWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkScrolledWindowClass` instance.
/// It exposes methods that can operate on this data type through `ScrolledWindowClassProtocol` conformance.
/// Use `ScrolledWindowClassRef` only as an `unowned` reference to an existing `GtkScrolledWindowClass` instance.
///

public struct ScrolledWindowClassRef: ScrolledWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScrolledWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScrolledWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScrolledWindowClassProtocol`
    init<T: ScrolledWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScrolledWindowClass` type acts as an owner of an underlying `GtkScrolledWindowClass` instance.
/// It provides the methods that can operate on this data type through `ScrolledWindowClassProtocol` conformance.
/// Use `ScrolledWindowClass` as a strong reference or owner of a `GtkScrolledWindowClass` instance.
///

open class ScrolledWindowClass: ScrolledWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScrolledWindowClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkScrolledWindowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScrolledWindowClassProtocol`
    /// `GtkScrolledWindowClass` does not allow reference counting.
    public convenience init<T: ScrolledWindowClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScrolledWindowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScrolledWindowClass`.
    deinit {
        // no reference counting for GtkScrolledWindowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScrolledWindowClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScrolledWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScrolledWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScrolledWindowClass>(opaquePointer))
    }



}

// MARK: - no ScrolledWindowClass properties

// MARK: - no signals


public extension ScrolledWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrolledWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowClass> { return ptr.assumingMemoryBound(to: GtkScrolledWindowClass.self) }

}



// MARK: - ScrolledWindowPrivate Record

/// The `ScrolledWindowPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkScrolledWindowPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrolledWindowPrivate`.
/// Alternatively, use `ScrolledWindowPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScrolledWindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScrolledWindowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowPrivate> { get }
}

/// The `ScrolledWindowPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkScrolledWindowPrivate` instance.
/// It exposes methods that can operate on this data type through `ScrolledWindowPrivateProtocol` conformance.
/// Use `ScrolledWindowPrivateRef` only as an `unowned` reference to an existing `GtkScrolledWindowPrivate` instance.
///

public struct ScrolledWindowPrivateRef: ScrolledWindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScrolledWindowPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScrolledWindowPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScrolledWindowPrivateProtocol`
    init<T: ScrolledWindowPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScrolledWindowPrivate` type acts as an owner of an underlying `GtkScrolledWindowPrivate` instance.
/// It provides the methods that can operate on this data type through `ScrolledWindowPrivateProtocol` conformance.
/// Use `ScrolledWindowPrivate` as a strong reference or owner of a `GtkScrolledWindowPrivate` instance.
///

open class ScrolledWindowPrivate: ScrolledWindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkScrolledWindowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScrolledWindowPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkScrolledWindowPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScrolledWindowPrivateProtocol`
    /// `GtkScrolledWindowPrivate` does not allow reference counting.
    public convenience init<T: ScrolledWindowPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScrolledWindowPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScrolledWindowPrivate`.
    deinit {
        // no reference counting for GtkScrolledWindowPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScrolledWindowPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScrolledWindowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScrolledWindowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrolledWindowPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScrolledWindowPrivate>(opaquePointer))
    }



}

// MARK: - no ScrolledWindowPrivate properties

// MARK: - no signals


public extension ScrolledWindowPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrolledWindowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkScrolledWindowPrivate> { return ptr.assumingMemoryBound(to: GtkScrolledWindowPrivate.self) }

}



// MARK: - SearchBarClass Record

/// The `SearchBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkSearchBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SearchBarClass`.
/// Alternatively, use `SearchBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SearchBarClassProtocol {
    /// Untyped pointer to the underlying `GtkSearchBarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSearchBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSearchBarClass> { get }
}

/// The `SearchBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkSearchBarClass` instance.
/// It exposes methods that can operate on this data type through `SearchBarClassProtocol` conformance.
/// Use `SearchBarClassRef` only as an `unowned` reference to an existing `GtkSearchBarClass` instance.
///

public struct SearchBarClassRef: SearchBarClassProtocol {
    /// Untyped pointer to the underlying `GtkSearchBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SearchBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSearchBarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SearchBarClassProtocol`
    init<T: SearchBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SearchBarClass` type acts as an owner of an underlying `GtkSearchBarClass` instance.
/// It provides the methods that can operate on this data type through `SearchBarClassProtocol` conformance.
/// Use `SearchBarClass` as a strong reference or owner of a `GtkSearchBarClass` instance.
///

open class SearchBarClass: SearchBarClassProtocol {
    /// Untyped pointer to the underlying `GtkSearchBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SearchBarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSearchBarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SearchBarClassProtocol`
    /// `GtkSearchBarClass` does not allow reference counting.
    public convenience init<T: SearchBarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSearchBarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSearchBarClass`.
    deinit {
        // no reference counting for GtkSearchBarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSearchBarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSearchBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSearchBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchBarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSearchBarClass>(opaquePointer))
    }



}

// MARK: - no SearchBarClass properties

// MARK: - no signals


public extension SearchBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSearchBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSearchBarClass> { return ptr.assumingMemoryBound(to: GtkSearchBarClass.self) }

}



// MARK: - SearchEntryClass Record

/// The `SearchEntryClassProtocol` protocol exposes the methods and properties of an underlying `GtkSearchEntryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SearchEntryClass`.
/// Alternatively, use `SearchEntryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SearchEntryClassProtocol {
    /// Untyped pointer to the underlying `GtkSearchEntryClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSearchEntryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSearchEntryClass> { get }
}

/// The `SearchEntryClassRef` type acts as a lightweight Swift reference to an underlying `GtkSearchEntryClass` instance.
/// It exposes methods that can operate on this data type through `SearchEntryClassProtocol` conformance.
/// Use `SearchEntryClassRef` only as an `unowned` reference to an existing `GtkSearchEntryClass` instance.
///

public struct SearchEntryClassRef: SearchEntryClassProtocol {
    /// Untyped pointer to the underlying `GtkSearchEntryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SearchEntryClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSearchEntryClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SearchEntryClassProtocol`
    init<T: SearchEntryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SearchEntryClass` type acts as an owner of an underlying `GtkSearchEntryClass` instance.
/// It provides the methods that can operate on this data type through `SearchEntryClassProtocol` conformance.
/// Use `SearchEntryClass` as a strong reference or owner of a `GtkSearchEntryClass` instance.
///

open class SearchEntryClass: SearchEntryClassProtocol {
    /// Untyped pointer to the underlying `GtkSearchEntryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SearchEntryClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSearchEntryClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SearchEntryClassProtocol`
    /// `GtkSearchEntryClass` does not allow reference counting.
    public convenience init<T: SearchEntryClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSearchEntryClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSearchEntryClass`.
    deinit {
        // no reference counting for GtkSearchEntryClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSearchEntryClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSearchEntryClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSearchEntryClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SearchEntryClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSearchEntryClass>(opaquePointer))
    }



}

// MARK: - no SearchEntryClass properties

// MARK: - no signals


public extension SearchEntryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSearchEntryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSearchEntryClass> { return ptr.assumingMemoryBound(to: GtkSearchEntryClass.self) }

}



// MARK: - SelectionData Record

/// The `SelectionDataProtocol` protocol exposes the methods and properties of an underlying `GtkSelectionData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SelectionData`.
/// Alternatively, use `SelectionDataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SelectionDataProtocol {
    /// Untyped pointer to the underlying `GtkSelectionData` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSelectionData` instance.
    var selection_data_ptr: UnsafeMutablePointer<GtkSelectionData> { get }
}

/// The `SelectionDataRef` type acts as a lightweight Swift reference to an underlying `GtkSelectionData` instance.
/// It exposes methods that can operate on this data type through `SelectionDataProtocol` conformance.
/// Use `SelectionDataRef` only as an `unowned` reference to an existing `GtkSelectionData` instance.
///

public struct SelectionDataRef: SelectionDataProtocol {
    /// Untyped pointer to the underlying `GtkSelectionData` instance.
    /// For type-safe access, use the generated, typed pointer `selection_data_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SelectionDataRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSelectionData>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SelectionDataProtocol`
    init<T: SelectionDataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SelectionData` type acts as an owner of an underlying `GtkSelectionData` instance.
/// It provides the methods that can operate on this data type through `SelectionDataProtocol` conformance.
/// Use `SelectionData` as a strong reference or owner of a `GtkSelectionData` instance.
///

open class SelectionData: SelectionDataProtocol {
    /// Untyped pointer to the underlying `GtkSelectionData` instance.
    /// For type-safe access, use the generated, typed pointer `selection_data_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SelectionData` instance.
    public init(_ op: UnsafeMutablePointer<GtkSelectionData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SelectionDataProtocol`
    /// `GtkSelectionData` does not allow reference counting.
    public convenience init<T: SelectionDataProtocol>(_ other: T) {
        self.init(cast(other.selection_data_ptr))
        // no reference counting for GtkSelectionData, cannot ref(cast(selection_data_ptr))
    }

    /// Do-nothing destructor for`GtkSelectionData`.
    deinit {
        // no reference counting for GtkSelectionData, cannot unref(cast(selection_data_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSelectionData.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSelectionData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSelectionData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionDataProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSelectionData>(opaquePointer))
    }



}

// MARK: - no SelectionData properties

// MARK: - no signals


public extension SelectionDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSelectionData` instance.
    var selection_data_ptr: UnsafeMutablePointer<GtkSelectionData> { return ptr.assumingMemoryBound(to: GtkSelectionData.self) }

    /// Makes a copy of a `GtkSelectionData`-struct and its data.
    func copy() -> UnsafeMutablePointer<GtkSelectionData>! {
        let rv = gtk_selection_data_copy(cast(selection_data_ptr))
        return cast(rv)
    }

    /// Frees a `GtkSelectionData`-struct returned from
    /// `gtk_selection_data_copy()`.
    func free() {
        gtk_selection_data_free(cast(selection_data_ptr))
    
    }

    /// Retrieves the raw data of the selection.
    func getData() -> UnsafePointer<guchar>! {
        let rv = gtk_selection_data_get_data(cast(selection_data_ptr))
        return cast(rv)
    }

    /// Retrieves the data type of the selection.
    func getDataType() -> GdkAtom! {
        let rv = gtk_selection_data_get_data_type(cast(selection_data_ptr))
        return rv
    }

    /// Retrieves the raw data of the selection along with its length.
    func getDataWith(length: UnsafeMutablePointer<CInt>) -> UnsafePointer<guchar>! {
        let rv = gtk_selection_data_get_data_with_length(cast(selection_data_ptr), cast(length))
        return cast(rv)
    }

    /// Retrieves the display of the selection.
    func getDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gtk_selection_data_get_display(cast(selection_data_ptr))
        return cast(rv)
    }

    /// Retrieves the format of the selection.
    func getFormat() -> CInt {
        let rv = gtk_selection_data_get_format(cast(selection_data_ptr))
        return CInt(rv)
    }

    /// Retrieves the length of the raw data of the selection.
    func getLength() -> CInt {
        let rv = gtk_selection_data_get_length(cast(selection_data_ptr))
        return CInt(rv)
    }

    /// Gets the contents of the selection data as a `GdkPixbuf`.
    func getPixbuf() -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_selection_data_get_pixbuf(cast(selection_data_ptr))
        return cast(rv)
    }

    /// Retrieves the selection `GdkAtom` of the selection data.
    func getSelection() -> GdkAtom! {
        let rv = gtk_selection_data_get_selection(cast(selection_data_ptr))
        return rv
    }

    /// Retrieves the target of the selection.
    func getTarget() -> GdkAtom! {
        let rv = gtk_selection_data_get_target(cast(selection_data_ptr))
        return rv
    }

    /// Gets the contents of `selection_data` as an array of targets.
    /// This can be used to interpret the results of getting
    /// the standard TARGETS target that is always supplied for
    /// any selection.
    func get(targets: UnsafeMutablePointer<UnsafeMutablePointer<GdkAtom>>, nAtoms n_atoms: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = gtk_selection_data_get_targets(cast(selection_data_ptr), cast(targets), cast(n_atoms))
        return Bool(rv != 0)
    }

    /// Gets the contents of the selection data as a UTF-8 string.
    func getText() -> String! {
        let rv = gtk_selection_data_get_text(cast(selection_data_ptr))
        return rv.map { String(cString: UnsafePointer<CUnsignedChar>($0)) }
    }

    /// Gets the contents of the selection data as array of URIs.
    func getURIs() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = gtk_selection_data_get_uris(cast(selection_data_ptr))
        return cast(rv)
    }

    /// Stores new data into a `GtkSelectionData` object. Should
    /// only be called from a selection handler callback.
    /// Zero-terminates the stored data.
    func set(type: Gdk.Atom, format: CInt, data: UnsafePointer<guchar>, length: CInt) {
        gtk_selection_data_set(cast(selection_data_ptr), cast(type.ptr), gint(format), cast(data), gint(length))
    
    }

    /// Sets the contents of the selection from a `GdkPixbuf`
    /// The pixbuf is converted to the form determined by
    /// `selection_data`->target.
    func set(pixbuf: PixbufProtocol) -> Bool {
        let rv = gtk_selection_data_set_pixbuf(cast(selection_data_ptr), cast(pixbuf.ptr))
        return Bool(rv != 0)
    }

    /// Sets the contents of the selection from a UTF-8 encoded string.
    /// The string is converted to the form determined by
    /// `selection_data`->target.
    func set(text str: UnsafePointer<gchar>, len: CInt) -> Bool {
        let rv = gtk_selection_data_set_text(cast(selection_data_ptr), str, gint(len))
        return Bool(rv != 0)
    }

    /// Sets the contents of the selection from a list of URIs.
    /// The string is converted to the form determined by
    /// `selection_data`->target.
    func set(uris: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) -> Bool {
        let rv = gtk_selection_data_set_uris(cast(selection_data_ptr), cast(uris))
        return Bool(rv != 0)
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide a `GdkPixbuf`.
    func targetsIncludeImage(writable: Bool) -> Bool {
        let rv = gtk_selection_data_targets_include_image(cast(selection_data_ptr), gboolean(writable ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide rich text.
    func targetsIncludeRichText(buffer: TextBufferProtocol) -> Bool {
        let rv = gtk_selection_data_targets_include_rich_text(cast(selection_data_ptr), cast(buffer.ptr))
        return Bool(rv != 0)
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide text.
    func targetsIncludeText() -> Bool {
        let rv = gtk_selection_data_targets_include_text(cast(selection_data_ptr))
        return Bool(rv != 0)
    }

    /// Given a `GtkSelectionData` object holding a list of targets,
    /// determines if any of the targets in `targets` can be used to
    /// provide a list or URIs.
    func targetsIncludeURI() -> Bool {
        let rv = gtk_selection_data_targets_include_uri(cast(selection_data_ptr))
        return Bool(rv != 0)
    }

    /// Obtains a `tree_model` and `path` from selection data of target type
    /// `GTK_TREE_MODEL_ROW`. Normally called from a drag_data_received handler.
    /// This function can only be used if `selection_data` originates from the same
    /// process that’s calling this function, because a pointer to the tree model
    /// is being passed around. If you aren’t in the same process, then you'll
    /// get memory corruption. In the `GtkTreeDragDest` drag_data_received handler,
    /// you can assume that selection data of type `GTK_TREE_MODEL_ROW` is
    /// in from the current process. The returned path must be freed with
    /// `gtk_tree_path_free()`.
    func treeGetRowDragData(treeModel tree_model: TreeModelProtocol, path: TreePathProtocol) -> Bool {
        let rv = gtk_tree_get_row_drag_data(cast(selection_data_ptr), cast(tree_model.ptr), cast(path.ptr))
        return Bool(rv != 0)
    }

    /// Sets selection data of target type `GTK_TREE_MODEL_ROW`. Normally used
    /// in a drag_data_get handler.
    func treeSetRowDragData(treeModel tree_model: TreeModelProtocol, path: TreePathProtocol) -> Bool {
        let rv = gtk_tree_set_row_drag_data(cast(selection_data_ptr), cast(tree_model.ptr), cast(path.ptr))
        return Bool(rv != 0)
    }
    /// Retrieves the raw data of the selection.
    var data: UnsafePointer<guchar>! {
        /// Retrieves the raw data of the selection.
        get {
            let rv = gtk_selection_data_get_data(cast(selection_data_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the data type of the selection.
    var dataType: GdkAtom! {
        /// Retrieves the data type of the selection.
        get {
            let rv = gtk_selection_data_get_data_type(cast(selection_data_ptr))
            return rv
        }
    }

    /// Retrieves the display of the selection.
    var display: UnsafeMutablePointer<GdkDisplay>! {
        /// Retrieves the display of the selection.
        get {
            let rv = gtk_selection_data_get_display(cast(selection_data_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the format of the selection.
    var format: CInt {
        /// Retrieves the format of the selection.
        get {
            let rv = gtk_selection_data_get_format(cast(selection_data_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the length of the raw data of the selection.
    var length: CInt {
        /// Retrieves the length of the raw data of the selection.
        get {
            let rv = gtk_selection_data_get_length(cast(selection_data_ptr))
            return CInt(rv)
        }
    }

    /// Gets the contents of the selection data as a `GdkPixbuf`.
    var pixbuf: UnsafeMutablePointer<GdkPixbuf>! {
        /// Gets the contents of the selection data as a `GdkPixbuf`.
        get {
            let rv = gtk_selection_data_get_pixbuf(cast(selection_data_ptr))
            return cast(rv)
        }
        /// Sets the contents of the selection from a `GdkPixbuf`
        /// The pixbuf is converted to the form determined by
        /// `selection_data`->target.
        nonmutating set {
            let _ = gtk_selection_data_set_pixbuf(cast(selection_data_ptr), cast(newValue))
        }
    }

    /// Retrieves the selection `GdkAtom` of the selection data.
    var selection: GdkAtom! {
        /// Retrieves the selection `GdkAtom` of the selection data.
        get {
            let rv = gtk_selection_data_get_selection(cast(selection_data_ptr))
            return rv
        }
    }

    /// Retrieves the target of the selection.
    var target: GdkAtom! {
        /// Retrieves the target of the selection.
        get {
            let rv = gtk_selection_data_get_target(cast(selection_data_ptr))
            return rv
        }
    }

    /// Gets the contents of the selection data as a UTF-8 string.
    var text: String! {
        /// Gets the contents of the selection data as a UTF-8 string.
        get {
            let rv = gtk_selection_data_get_text(cast(selection_data_ptr))
            return rv.map { String(cString: UnsafePointer<CUnsignedChar>($0)) }
        }
    }

    /// Gets the contents of the selection data as array of URIs.
    var uris: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        /// Gets the contents of the selection data as array of URIs.
        get {
            let rv = gtk_selection_data_get_uris(cast(selection_data_ptr))
            return cast(rv)
        }
        /// Sets the contents of the selection from a list of URIs.
        /// The string is converted to the form determined by
        /// `selection_data`->target.
        nonmutating set {
            let _ = gtk_selection_data_set_uris(cast(selection_data_ptr), cast(newValue))
        }
    }
}



// MARK: - SeparatorClass Record

/// The `SeparatorClassProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorClass`.
/// Alternatively, use `SeparatorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorClass> { get }
}

/// The `SeparatorClassRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorClass` instance.
/// It exposes methods that can operate on this data type through `SeparatorClassProtocol` conformance.
/// Use `SeparatorClassRef` only as an `unowned` reference to an existing `GtkSeparatorClass` instance.
///

public struct SeparatorClassRef: SeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SeparatorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SeparatorClassProtocol`
    init<T: SeparatorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SeparatorClass` type acts as an owner of an underlying `GtkSeparatorClass` instance.
/// It provides the methods that can operate on this data type through `SeparatorClassProtocol` conformance.
/// Use `SeparatorClass` as a strong reference or owner of a `GtkSeparatorClass` instance.
///

open class SeparatorClass: SeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SeparatorClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SeparatorClassProtocol`
    /// `GtkSeparatorClass` does not allow reference counting.
    public convenience init<T: SeparatorClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSeparatorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSeparatorClass`.
    deinit {
        // no reference counting for GtkSeparatorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSeparatorClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSeparatorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSeparatorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSeparatorClass>(opaquePointer))
    }



}

// MARK: - no SeparatorClass properties

// MARK: - no signals


public extension SeparatorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorClass> { return ptr.assumingMemoryBound(to: GtkSeparatorClass.self) }

}



// MARK: - SeparatorMenuItemClass Record

/// The `SeparatorMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorMenuItemClass`.
/// Alternatively, use `SeparatorMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSeparatorMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorMenuItemClass> { get }
}

/// The `SeparatorMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `SeparatorMenuItemClassProtocol` conformance.
/// Use `SeparatorMenuItemClassRef` only as an `unowned` reference to an existing `GtkSeparatorMenuItemClass` instance.
///

public struct SeparatorMenuItemClassRef: SeparatorMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SeparatorMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSeparatorMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SeparatorMenuItemClassProtocol`
    init<T: SeparatorMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SeparatorMenuItemClass` type acts as an owner of an underlying `GtkSeparatorMenuItemClass` instance.
/// It provides the methods that can operate on this data type through `SeparatorMenuItemClassProtocol` conformance.
/// Use `SeparatorMenuItemClass` as a strong reference or owner of a `GtkSeparatorMenuItemClass` instance.
///

open class SeparatorMenuItemClass: SeparatorMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SeparatorMenuItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSeparatorMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SeparatorMenuItemClassProtocol`
    /// `GtkSeparatorMenuItemClass` does not allow reference counting.
    public convenience init<T: SeparatorMenuItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSeparatorMenuItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSeparatorMenuItemClass`.
    deinit {
        // no reference counting for GtkSeparatorMenuItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSeparatorMenuItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSeparatorMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSeparatorMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorMenuItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSeparatorMenuItemClass>(opaquePointer))
    }



}

// MARK: - no SeparatorMenuItemClass properties

// MARK: - no signals


public extension SeparatorMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorMenuItemClass> { return ptr.assumingMemoryBound(to: GtkSeparatorMenuItemClass.self) }

}



// MARK: - SeparatorPrivate Record

/// The `SeparatorPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorPrivate`.
/// Alternatively, use `SeparatorPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSeparatorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorPrivate> { get }
}

/// The `SeparatorPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorPrivate` instance.
/// It exposes methods that can operate on this data type through `SeparatorPrivateProtocol` conformance.
/// Use `SeparatorPrivateRef` only as an `unowned` reference to an existing `GtkSeparatorPrivate` instance.
///

public struct SeparatorPrivateRef: SeparatorPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SeparatorPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSeparatorPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SeparatorPrivateProtocol`
    init<T: SeparatorPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SeparatorPrivate` type acts as an owner of an underlying `GtkSeparatorPrivate` instance.
/// It provides the methods that can operate on this data type through `SeparatorPrivateProtocol` conformance.
/// Use `SeparatorPrivate` as a strong reference or owner of a `GtkSeparatorPrivate` instance.
///

open class SeparatorPrivate: SeparatorPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SeparatorPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSeparatorPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SeparatorPrivateProtocol`
    /// `GtkSeparatorPrivate` does not allow reference counting.
    public convenience init<T: SeparatorPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSeparatorPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSeparatorPrivate`.
    deinit {
        // no reference counting for GtkSeparatorPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSeparatorPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSeparatorPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSeparatorPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSeparatorPrivate>(opaquePointer))
    }



}

// MARK: - no SeparatorPrivate properties

// MARK: - no signals


public extension SeparatorPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorPrivate> { return ptr.assumingMemoryBound(to: GtkSeparatorPrivate.self) }

}



// MARK: - SeparatorToolItemClass Record

/// The `SeparatorToolItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorToolItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorToolItemClass`.
/// Alternatively, use `SeparatorToolItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorToolItemClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorToolItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSeparatorToolItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorToolItemClass> { get }
}

/// The `SeparatorToolItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorToolItemClass` instance.
/// It exposes methods that can operate on this data type through `SeparatorToolItemClassProtocol` conformance.
/// Use `SeparatorToolItemClassRef` only as an `unowned` reference to an existing `GtkSeparatorToolItemClass` instance.
///

public struct SeparatorToolItemClassRef: SeparatorToolItemClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorToolItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SeparatorToolItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSeparatorToolItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SeparatorToolItemClassProtocol`
    init<T: SeparatorToolItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SeparatorToolItemClass` type acts as an owner of an underlying `GtkSeparatorToolItemClass` instance.
/// It provides the methods that can operate on this data type through `SeparatorToolItemClassProtocol` conformance.
/// Use `SeparatorToolItemClass` as a strong reference or owner of a `GtkSeparatorToolItemClass` instance.
///

open class SeparatorToolItemClass: SeparatorToolItemClassProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorToolItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SeparatorToolItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSeparatorToolItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SeparatorToolItemClassProtocol`
    /// `GtkSeparatorToolItemClass` does not allow reference counting.
    public convenience init<T: SeparatorToolItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSeparatorToolItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSeparatorToolItemClass`.
    deinit {
        // no reference counting for GtkSeparatorToolItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSeparatorToolItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSeparatorToolItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSeparatorToolItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSeparatorToolItemClass>(opaquePointer))
    }



}

// MARK: - no SeparatorToolItemClass properties

// MARK: - no signals


public extension SeparatorToolItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorToolItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorToolItemClass> { return ptr.assumingMemoryBound(to: GtkSeparatorToolItemClass.self) }

}



// MARK: - SeparatorToolItemPrivate Record

/// The `SeparatorToolItemPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSeparatorToolItemPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeparatorToolItemPrivate`.
/// Alternatively, use `SeparatorToolItemPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SeparatorToolItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorToolItemPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSeparatorToolItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorToolItemPrivate> { get }
}

/// The `SeparatorToolItemPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSeparatorToolItemPrivate` instance.
/// It exposes methods that can operate on this data type through `SeparatorToolItemPrivateProtocol` conformance.
/// Use `SeparatorToolItemPrivateRef` only as an `unowned` reference to an existing `GtkSeparatorToolItemPrivate` instance.
///

public struct SeparatorToolItemPrivateRef: SeparatorToolItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorToolItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SeparatorToolItemPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSeparatorToolItemPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SeparatorToolItemPrivateProtocol`
    init<T: SeparatorToolItemPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SeparatorToolItemPrivate` type acts as an owner of an underlying `GtkSeparatorToolItemPrivate` instance.
/// It provides the methods that can operate on this data type through `SeparatorToolItemPrivateProtocol` conformance.
/// Use `SeparatorToolItemPrivate` as a strong reference or owner of a `GtkSeparatorToolItemPrivate` instance.
///

open class SeparatorToolItemPrivate: SeparatorToolItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSeparatorToolItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SeparatorToolItemPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSeparatorToolItemPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SeparatorToolItemPrivateProtocol`
    /// `GtkSeparatorToolItemPrivate` does not allow reference counting.
    public convenience init<T: SeparatorToolItemPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSeparatorToolItemPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSeparatorToolItemPrivate`.
    deinit {
        // no reference counting for GtkSeparatorToolItemPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSeparatorToolItemPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSeparatorToolItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSeparatorToolItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeparatorToolItemPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSeparatorToolItemPrivate>(opaquePointer))
    }



}

// MARK: - no SeparatorToolItemPrivate properties

// MARK: - no signals


public extension SeparatorToolItemPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSeparatorToolItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSeparatorToolItemPrivate> { return ptr.assumingMemoryBound(to: GtkSeparatorToolItemPrivate.self) }

}



// MARK: - SettingsClass Record

/// The `SettingsClassProtocol` protocol exposes the methods and properties of an underlying `GtkSettingsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsClass`.
/// Alternatively, use `SettingsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsClassProtocol {
    /// Untyped pointer to the underlying `GtkSettingsClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSettingsClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsClass> { get }
}

/// The `SettingsClassRef` type acts as a lightweight Swift reference to an underlying `GtkSettingsClass` instance.
/// It exposes methods that can operate on this data type through `SettingsClassProtocol` conformance.
/// Use `SettingsClassRef` only as an `unowned` reference to an existing `GtkSettingsClass` instance.
///

public struct SettingsClassRef: SettingsClassProtocol {
    /// Untyped pointer to the underlying `GtkSettingsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSettingsClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsClassProtocol`
    init<T: SettingsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsClass` type acts as an owner of an underlying `GtkSettingsClass` instance.
/// It provides the methods that can operate on this data type through `SettingsClassProtocol` conformance.
/// Use `SettingsClass` as a strong reference or owner of a `GtkSettingsClass` instance.
///

open class SettingsClass: SettingsClassProtocol {
    /// Untyped pointer to the underlying `GtkSettingsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SettingsClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSettingsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SettingsClassProtocol`
    /// `GtkSettingsClass` does not allow reference counting.
    public convenience init<T: SettingsClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSettingsClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSettingsClass`.
    deinit {
        // no reference counting for GtkSettingsClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSettingsClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSettingsClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSettingsClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSettingsClass>(opaquePointer))
    }



}

// MARK: - no SettingsClass properties

// MARK: - no signals


public extension SettingsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSettingsClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsClass> { return ptr.assumingMemoryBound(to: GtkSettingsClass.self) }

}



// MARK: - SettingsPrivate Record

/// The `SettingsPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSettingsPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsPrivate`.
/// Alternatively, use `SettingsPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSettingsPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSettingsPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsPrivate> { get }
}

/// The `SettingsPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSettingsPrivate` instance.
/// It exposes methods that can operate on this data type through `SettingsPrivateProtocol` conformance.
/// Use `SettingsPrivateRef` only as an `unowned` reference to an existing `GtkSettingsPrivate` instance.
///

public struct SettingsPrivateRef: SettingsPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSettingsPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSettingsPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsPrivateProtocol`
    init<T: SettingsPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsPrivate` type acts as an owner of an underlying `GtkSettingsPrivate` instance.
/// It provides the methods that can operate on this data type through `SettingsPrivateProtocol` conformance.
/// Use `SettingsPrivate` as a strong reference or owner of a `GtkSettingsPrivate` instance.
///

open class SettingsPrivate: SettingsPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSettingsPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SettingsPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSettingsPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SettingsPrivateProtocol`
    /// `GtkSettingsPrivate` does not allow reference counting.
    public convenience init<T: SettingsPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSettingsPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSettingsPrivate`.
    deinit {
        // no reference counting for GtkSettingsPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSettingsPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSettingsPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSettingsPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSettingsPrivate>(opaquePointer))
    }



}

// MARK: - no SettingsPrivate properties

// MARK: - no signals


public extension SettingsPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSettingsPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsPrivate> { return ptr.assumingMemoryBound(to: GtkSettingsPrivate.self) }

}



// MARK: - SettingsValue Record

/// The `SettingsValueProtocol` protocol exposes the methods and properties of an underlying `GtkSettingsValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsValue`.
/// Alternatively, use `SettingsValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsValueProtocol {
    /// Untyped pointer to the underlying `GtkSettingsValue` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSettingsValue` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsValue> { get }
}

/// The `SettingsValueRef` type acts as a lightweight Swift reference to an underlying `GtkSettingsValue` instance.
/// It exposes methods that can operate on this data type through `SettingsValueProtocol` conformance.
/// Use `SettingsValueRef` only as an `unowned` reference to an existing `GtkSettingsValue` instance.
///

public struct SettingsValueRef: SettingsValueProtocol {
    /// Untyped pointer to the underlying `GtkSettingsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsValueRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSettingsValue>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsValueProtocol`
    init<T: SettingsValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsValue` type acts as an owner of an underlying `GtkSettingsValue` instance.
/// It provides the methods that can operate on this data type through `SettingsValueProtocol` conformance.
/// Use `SettingsValue` as a strong reference or owner of a `GtkSettingsValue` instance.
///

open class SettingsValue: SettingsValueProtocol {
    /// Untyped pointer to the underlying `GtkSettingsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SettingsValue` instance.
    public init(_ op: UnsafeMutablePointer<GtkSettingsValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SettingsValueProtocol`
    /// `GtkSettingsValue` does not allow reference counting.
    public convenience init<T: SettingsValueProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSettingsValue, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSettingsValue`.
    deinit {
        // no reference counting for GtkSettingsValue, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSettingsValue.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSettingsValue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSettingsValue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsValueProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSettingsValue>(opaquePointer))
    }



}

// MARK: - no SettingsValue properties

// MARK: - no signals


public extension SettingsValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSettingsValue` instance.
    var _ptr: UnsafeMutablePointer<GtkSettingsValue> { return ptr.assumingMemoryBound(to: GtkSettingsValue.self) }

}



// MARK: - ShortcutLabelClass Record

/// The `ShortcutLabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutLabelClass`.
/// Alternatively, use `ShortcutLabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutLabelClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutLabelClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkShortcutLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutLabelClass> { get }
}

/// The `ShortcutLabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutLabelClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutLabelClassProtocol` conformance.
/// Use `ShortcutLabelClassRef` only as an `unowned` reference to an existing `GtkShortcutLabelClass` instance.
///

public struct ShortcutLabelClassRef: ShortcutLabelClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ShortcutLabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkShortcutLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ShortcutLabelClassProtocol`
    init<T: ShortcutLabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ShortcutLabelClass` type acts as an owner of an underlying `GtkShortcutLabelClass` instance.
/// It provides the methods that can operate on this data type through `ShortcutLabelClassProtocol` conformance.
/// Use `ShortcutLabelClass` as a strong reference or owner of a `GtkShortcutLabelClass` instance.
///

open class ShortcutLabelClass: ShortcutLabelClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ShortcutLabelClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkShortcutLabelClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ShortcutLabelClassProtocol`
    /// `GtkShortcutLabelClass` does not allow reference counting.
    public convenience init<T: ShortcutLabelClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkShortcutLabelClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkShortcutLabelClass`.
    deinit {
        // no reference counting for GtkShortcutLabelClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkShortcutLabelClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkShortcutLabelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkShortcutLabelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkShortcutLabelClass>(opaquePointer))
    }



}

// MARK: - no ShortcutLabelClass properties

// MARK: - no signals


public extension ShortcutLabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutLabelClass> { return ptr.assumingMemoryBound(to: GtkShortcutLabelClass.self) }

}



// MARK: - ShortcutsGroupClass Record

/// The `ShortcutsGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsGroupClass`.
/// Alternatively, use `ShortcutsGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsGroupClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkShortcutsGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsGroupClass> { get }
}

/// The `ShortcutsGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsGroupClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsGroupClassProtocol` conformance.
/// Use `ShortcutsGroupClassRef` only as an `unowned` reference to an existing `GtkShortcutsGroupClass` instance.
///

public struct ShortcutsGroupClassRef: ShortcutsGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ShortcutsGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkShortcutsGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ShortcutsGroupClassProtocol`
    init<T: ShortcutsGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ShortcutsGroupClass` type acts as an owner of an underlying `GtkShortcutsGroupClass` instance.
/// It provides the methods that can operate on this data type through `ShortcutsGroupClassProtocol` conformance.
/// Use `ShortcutsGroupClass` as a strong reference or owner of a `GtkShortcutsGroupClass` instance.
///

open class ShortcutsGroupClass: ShortcutsGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ShortcutsGroupClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkShortcutsGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ShortcutsGroupClassProtocol`
    /// `GtkShortcutsGroupClass` does not allow reference counting.
    public convenience init<T: ShortcutsGroupClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkShortcutsGroupClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkShortcutsGroupClass`.
    deinit {
        // no reference counting for GtkShortcutsGroupClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkShortcutsGroupClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkShortcutsGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkShortcutsGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkShortcutsGroupClass>(opaquePointer))
    }



}

// MARK: - no ShortcutsGroupClass properties

// MARK: - no signals


public extension ShortcutsGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsGroupClass> { return ptr.assumingMemoryBound(to: GtkShortcutsGroupClass.self) }

}



// MARK: - ShortcutsSectionClass Record

/// The `ShortcutsSectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsSectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsSectionClass`.
/// Alternatively, use `ShortcutsSectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsSectionClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsSectionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkShortcutsSectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsSectionClass> { get }
}

/// The `ShortcutsSectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsSectionClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsSectionClassProtocol` conformance.
/// Use `ShortcutsSectionClassRef` only as an `unowned` reference to an existing `GtkShortcutsSectionClass` instance.
///

public struct ShortcutsSectionClassRef: ShortcutsSectionClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsSectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ShortcutsSectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkShortcutsSectionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ShortcutsSectionClassProtocol`
    init<T: ShortcutsSectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ShortcutsSectionClass` type acts as an owner of an underlying `GtkShortcutsSectionClass` instance.
/// It provides the methods that can operate on this data type through `ShortcutsSectionClassProtocol` conformance.
/// Use `ShortcutsSectionClass` as a strong reference or owner of a `GtkShortcutsSectionClass` instance.
///

open class ShortcutsSectionClass: ShortcutsSectionClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsSectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ShortcutsSectionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkShortcutsSectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ShortcutsSectionClassProtocol`
    /// `GtkShortcutsSectionClass` does not allow reference counting.
    public convenience init<T: ShortcutsSectionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkShortcutsSectionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkShortcutsSectionClass`.
    deinit {
        // no reference counting for GtkShortcutsSectionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkShortcutsSectionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkShortcutsSectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkShortcutsSectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkShortcutsSectionClass>(opaquePointer))
    }



}

// MARK: - no ShortcutsSectionClass properties

// MARK: - no signals


public extension ShortcutsSectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsSectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsSectionClass> { return ptr.assumingMemoryBound(to: GtkShortcutsSectionClass.self) }

}



// MARK: - ShortcutsShortcutClass Record

/// The `ShortcutsShortcutClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsShortcutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsShortcutClass`.
/// Alternatively, use `ShortcutsShortcutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsShortcutClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsShortcutClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkShortcutsShortcutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsShortcutClass> { get }
}

/// The `ShortcutsShortcutClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsShortcutClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsShortcutClassProtocol` conformance.
/// Use `ShortcutsShortcutClassRef` only as an `unowned` reference to an existing `GtkShortcutsShortcutClass` instance.
///

public struct ShortcutsShortcutClassRef: ShortcutsShortcutClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsShortcutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ShortcutsShortcutClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkShortcutsShortcutClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ShortcutsShortcutClassProtocol`
    init<T: ShortcutsShortcutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ShortcutsShortcutClass` type acts as an owner of an underlying `GtkShortcutsShortcutClass` instance.
/// It provides the methods that can operate on this data type through `ShortcutsShortcutClassProtocol` conformance.
/// Use `ShortcutsShortcutClass` as a strong reference or owner of a `GtkShortcutsShortcutClass` instance.
///

open class ShortcutsShortcutClass: ShortcutsShortcutClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsShortcutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ShortcutsShortcutClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkShortcutsShortcutClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ShortcutsShortcutClassProtocol`
    /// `GtkShortcutsShortcutClass` does not allow reference counting.
    public convenience init<T: ShortcutsShortcutClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkShortcutsShortcutClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkShortcutsShortcutClass`.
    deinit {
        // no reference counting for GtkShortcutsShortcutClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkShortcutsShortcutClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkShortcutsShortcutClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkShortcutsShortcutClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkShortcutsShortcutClass>(opaquePointer))
    }



}

// MARK: - no ShortcutsShortcutClass properties

// MARK: - no signals


public extension ShortcutsShortcutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsShortcutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsShortcutClass> { return ptr.assumingMemoryBound(to: GtkShortcutsShortcutClass.self) }

}



// MARK: - ShortcutsWindowClass Record

/// The `ShortcutsWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsWindowClass`.
/// Alternatively, use `ShortcutsWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ShortcutsWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsWindowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkShortcutsWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsWindowClass> { get }
}

/// The `ShortcutsWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsWindowClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsWindowClassProtocol` conformance.
/// Use `ShortcutsWindowClassRef` only as an `unowned` reference to an existing `GtkShortcutsWindowClass` instance.
///

public struct ShortcutsWindowClassRef: ShortcutsWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ShortcutsWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkShortcutsWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ShortcutsWindowClassProtocol`
    init<T: ShortcutsWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ShortcutsWindowClass` type acts as an owner of an underlying `GtkShortcutsWindowClass` instance.
/// It provides the methods that can operate on this data type through `ShortcutsWindowClassProtocol` conformance.
/// Use `ShortcutsWindowClass` as a strong reference or owner of a `GtkShortcutsWindowClass` instance.
///

open class ShortcutsWindowClass: ShortcutsWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkShortcutsWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ShortcutsWindowClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkShortcutsWindowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ShortcutsWindowClassProtocol`
    /// `GtkShortcutsWindowClass` does not allow reference counting.
    public convenience init<T: ShortcutsWindowClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkShortcutsWindowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkShortcutsWindowClass`.
    deinit {
        // no reference counting for GtkShortcutsWindowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkShortcutsWindowClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkShortcutsWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkShortcutsWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsWindowClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkShortcutsWindowClass>(opaquePointer))
    }



}

// MARK: - no ShortcutsWindowClass properties

// MARK: - no signals


public extension ShortcutsWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsWindowClass> { return ptr.assumingMemoryBound(to: GtkShortcutsWindowClass.self) }

}



// MARK: - SizeGroupClass Record

/// The `SizeGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkSizeGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SizeGroupClass`.
/// Alternatively, use `SizeGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SizeGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkSizeGroupClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSizeGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSizeGroupClass> { get }
}

/// The `SizeGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkSizeGroupClass` instance.
/// It exposes methods that can operate on this data type through `SizeGroupClassProtocol` conformance.
/// Use `SizeGroupClassRef` only as an `unowned` reference to an existing `GtkSizeGroupClass` instance.
///

public struct SizeGroupClassRef: SizeGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkSizeGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SizeGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSizeGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SizeGroupClassProtocol`
    init<T: SizeGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SizeGroupClass` type acts as an owner of an underlying `GtkSizeGroupClass` instance.
/// It provides the methods that can operate on this data type through `SizeGroupClassProtocol` conformance.
/// Use `SizeGroupClass` as a strong reference or owner of a `GtkSizeGroupClass` instance.
///

open class SizeGroupClass: SizeGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkSizeGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SizeGroupClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSizeGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SizeGroupClassProtocol`
    /// `GtkSizeGroupClass` does not allow reference counting.
    public convenience init<T: SizeGroupClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSizeGroupClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSizeGroupClass`.
    deinit {
        // no reference counting for GtkSizeGroupClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSizeGroupClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSizeGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSizeGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSizeGroupClass>(opaquePointer))
    }



}

// MARK: - no SizeGroupClass properties

// MARK: - no signals


public extension SizeGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSizeGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSizeGroupClass> { return ptr.assumingMemoryBound(to: GtkSizeGroupClass.self) }

}



// MARK: - SizeGroupPrivate Record

/// The `SizeGroupPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSizeGroupPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SizeGroupPrivate`.
/// Alternatively, use `SizeGroupPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SizeGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSizeGroupPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSizeGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSizeGroupPrivate> { get }
}

/// The `SizeGroupPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSizeGroupPrivate` instance.
/// It exposes methods that can operate on this data type through `SizeGroupPrivateProtocol` conformance.
/// Use `SizeGroupPrivateRef` only as an `unowned` reference to an existing `GtkSizeGroupPrivate` instance.
///

public struct SizeGroupPrivateRef: SizeGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSizeGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SizeGroupPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSizeGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SizeGroupPrivateProtocol`
    init<T: SizeGroupPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SizeGroupPrivate` type acts as an owner of an underlying `GtkSizeGroupPrivate` instance.
/// It provides the methods that can operate on this data type through `SizeGroupPrivateProtocol` conformance.
/// Use `SizeGroupPrivate` as a strong reference or owner of a `GtkSizeGroupPrivate` instance.
///

open class SizeGroupPrivate: SizeGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSizeGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SizeGroupPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSizeGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SizeGroupPrivateProtocol`
    /// `GtkSizeGroupPrivate` does not allow reference counting.
    public convenience init<T: SizeGroupPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSizeGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSizeGroupPrivate`.
    deinit {
        // no reference counting for GtkSizeGroupPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSizeGroupPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSizeGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSizeGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SizeGroupPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSizeGroupPrivate>(opaquePointer))
    }



}

// MARK: - no SizeGroupPrivate properties

// MARK: - no signals


public extension SizeGroupPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSizeGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSizeGroupPrivate> { return ptr.assumingMemoryBound(to: GtkSizeGroupPrivate.self) }

}



// MARK: - SpinButtonAccessibleClass Record

/// The `SpinButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinButtonAccessibleClass`.
/// Alternatively, use `SpinButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonAccessibleClass> { get }
}

/// The `SpinButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `SpinButtonAccessibleClassProtocol` conformance.
/// Use `SpinButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkSpinButtonAccessibleClass` instance.
///

public struct SpinButtonAccessibleClassRef: SpinButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinButtonAccessibleClassProtocol`
    init<T: SpinButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinButtonAccessibleClass` type acts as an owner of an underlying `GtkSpinButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `SpinButtonAccessibleClassProtocol` conformance.
/// Use `SpinButtonAccessibleClass` as a strong reference or owner of a `GtkSpinButtonAccessibleClass` instance.
///

open class SpinButtonAccessibleClass: SpinButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinButtonAccessibleClassProtocol`
    /// `GtkSpinButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: SpinButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkSpinButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no SpinButtonAccessibleClass properties

// MARK: - no signals


public extension SpinButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkSpinButtonAccessibleClass.self) }

}



// MARK: - SpinButtonAccessiblePrivate Record

/// The `SpinButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSpinButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinButtonAccessiblePrivate`.
/// Alternatively, use `SpinButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonAccessiblePrivate> { get }
}

/// The `SpinButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSpinButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `SpinButtonAccessiblePrivateProtocol` conformance.
/// Use `SpinButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkSpinButtonAccessiblePrivate` instance.
///

public struct SpinButtonAccessiblePrivateRef: SpinButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinButtonAccessiblePrivateProtocol`
    init<T: SpinButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinButtonAccessiblePrivate` type acts as an owner of an underlying `GtkSpinButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `SpinButtonAccessiblePrivateProtocol` conformance.
/// Use `SpinButtonAccessiblePrivate` as a strong reference or owner of a `GtkSpinButtonAccessiblePrivate` instance.
///

open class SpinButtonAccessiblePrivate: SpinButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinButtonAccessiblePrivateProtocol`
    /// `GtkSpinButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: SpinButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkSpinButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no SpinButtonAccessiblePrivate properties

// MARK: - no signals


public extension SpinButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkSpinButtonAccessiblePrivate.self) }

}



// MARK: - SpinButtonClass Record

/// The `SpinButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinButtonClass`.
/// Alternatively, use `SpinButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonClass> { get }
}

/// The `SpinButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinButtonClass` instance.
/// It exposes methods that can operate on this data type through `SpinButtonClassProtocol` conformance.
/// Use `SpinButtonClassRef` only as an `unowned` reference to an existing `GtkSpinButtonClass` instance.
///

public struct SpinButtonClassRef: SpinButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinButtonClassProtocol`
    init<T: SpinButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinButtonClass` type acts as an owner of an underlying `GtkSpinButtonClass` instance.
/// It provides the methods that can operate on this data type through `SpinButtonClassProtocol` conformance.
/// Use `SpinButtonClass` as a strong reference or owner of a `GtkSpinButtonClass` instance.
///

open class SpinButtonClass: SpinButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinButtonClassProtocol`
    /// `GtkSpinButtonClass` does not allow reference counting.
    public convenience init<T: SpinButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinButtonClass`.
    deinit {
        // no reference counting for GtkSpinButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinButtonClass>(opaquePointer))
    }



}

// MARK: - no SpinButtonClass properties

// MARK: - no signals


public extension SpinButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonClass> { return ptr.assumingMemoryBound(to: GtkSpinButtonClass.self) }

}



// MARK: - SpinButtonPrivate Record

/// The `SpinButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSpinButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinButtonPrivate`.
/// Alternatively, use `SpinButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonPrivate> { get }
}

/// The `SpinButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSpinButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `SpinButtonPrivateProtocol` conformance.
/// Use `SpinButtonPrivateRef` only as an `unowned` reference to an existing `GtkSpinButtonPrivate` instance.
///

public struct SpinButtonPrivateRef: SpinButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinButtonPrivateProtocol`
    init<T: SpinButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinButtonPrivate` type acts as an owner of an underlying `GtkSpinButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `SpinButtonPrivateProtocol` conformance.
/// Use `SpinButtonPrivate` as a strong reference or owner of a `GtkSpinButtonPrivate` instance.
///

open class SpinButtonPrivate: SpinButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinButtonPrivateProtocol`
    /// `GtkSpinButtonPrivate` does not allow reference counting.
    public convenience init<T: SpinButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinButtonPrivate`.
    deinit {
        // no reference counting for GtkSpinButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinButtonPrivate>(opaquePointer))
    }



}

// MARK: - no SpinButtonPrivate properties

// MARK: - no signals


public extension SpinButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinButtonPrivate> { return ptr.assumingMemoryBound(to: GtkSpinButtonPrivate.self) }

}



// MARK: - SpinnerAccessibleClass Record

/// The `SpinnerAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinnerAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinnerAccessibleClass`.
/// Alternatively, use `SpinnerAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinnerAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinnerAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerAccessibleClass> { get }
}

/// The `SpinnerAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinnerAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `SpinnerAccessibleClassProtocol` conformance.
/// Use `SpinnerAccessibleClassRef` only as an `unowned` reference to an existing `GtkSpinnerAccessibleClass` instance.
///

public struct SpinnerAccessibleClassRef: SpinnerAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinnerAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinnerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinnerAccessibleClassProtocol`
    init<T: SpinnerAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinnerAccessibleClass` type acts as an owner of an underlying `GtkSpinnerAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `SpinnerAccessibleClassProtocol` conformance.
/// Use `SpinnerAccessibleClass` as a strong reference or owner of a `GtkSpinnerAccessibleClass` instance.
///

open class SpinnerAccessibleClass: SpinnerAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinnerAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinnerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinnerAccessibleClassProtocol`
    /// `GtkSpinnerAccessibleClass` does not allow reference counting.
    public convenience init<T: SpinnerAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinnerAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinnerAccessibleClass`.
    deinit {
        // no reference counting for GtkSpinnerAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinnerAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinnerAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinnerAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinnerAccessibleClass>(opaquePointer))
    }



}

// MARK: - no SpinnerAccessibleClass properties

// MARK: - no signals


public extension SpinnerAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinnerAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerAccessibleClass> { return ptr.assumingMemoryBound(to: GtkSpinnerAccessibleClass.self) }

}



// MARK: - SpinnerAccessiblePrivate Record

/// The `SpinnerAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSpinnerAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinnerAccessiblePrivate`.
/// Alternatively, use `SpinnerAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinnerAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinnerAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerAccessiblePrivate> { get }
}

/// The `SpinnerAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSpinnerAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `SpinnerAccessiblePrivateProtocol` conformance.
/// Use `SpinnerAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkSpinnerAccessiblePrivate` instance.
///

public struct SpinnerAccessiblePrivateRef: SpinnerAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinnerAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinnerAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinnerAccessiblePrivateProtocol`
    init<T: SpinnerAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinnerAccessiblePrivate` type acts as an owner of an underlying `GtkSpinnerAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `SpinnerAccessiblePrivateProtocol` conformance.
/// Use `SpinnerAccessiblePrivate` as a strong reference or owner of a `GtkSpinnerAccessiblePrivate` instance.
///

open class SpinnerAccessiblePrivate: SpinnerAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinnerAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinnerAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinnerAccessiblePrivateProtocol`
    /// `GtkSpinnerAccessiblePrivate` does not allow reference counting.
    public convenience init<T: SpinnerAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinnerAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinnerAccessiblePrivate`.
    deinit {
        // no reference counting for GtkSpinnerAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinnerAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinnerAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinnerAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinnerAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no SpinnerAccessiblePrivate properties

// MARK: - no signals


public extension SpinnerAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinnerAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkSpinnerAccessiblePrivate.self) }

}



// MARK: - SpinnerClass Record

/// The `SpinnerClassProtocol` protocol exposes the methods and properties of an underlying `GtkSpinnerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinnerClass`.
/// Alternatively, use `SpinnerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinnerClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinnerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerClass> { get }
}

/// The `SpinnerClassRef` type acts as a lightweight Swift reference to an underlying `GtkSpinnerClass` instance.
/// It exposes methods that can operate on this data type through `SpinnerClassProtocol` conformance.
/// Use `SpinnerClassRef` only as an `unowned` reference to an existing `GtkSpinnerClass` instance.
///

public struct SpinnerClassRef: SpinnerClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinnerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinnerClassProtocol`
    init<T: SpinnerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinnerClass` type acts as an owner of an underlying `GtkSpinnerClass` instance.
/// It provides the methods that can operate on this data type through `SpinnerClassProtocol` conformance.
/// Use `SpinnerClass` as a strong reference or owner of a `GtkSpinnerClass` instance.
///

open class SpinnerClass: SpinnerClassProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinnerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinnerClassProtocol`
    /// `GtkSpinnerClass` does not allow reference counting.
    public convenience init<T: SpinnerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinnerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinnerClass`.
    deinit {
        // no reference counting for GtkSpinnerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinnerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinnerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinnerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinnerClass>(opaquePointer))
    }



}

// MARK: - no SpinnerClass properties

// MARK: - no signals


public extension SpinnerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinnerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerClass> { return ptr.assumingMemoryBound(to: GtkSpinnerClass.self) }

}



// MARK: - SpinnerPrivate Record

/// The `SpinnerPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSpinnerPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SpinnerPrivate`.
/// Alternatively, use `SpinnerPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SpinnerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSpinnerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerPrivate> { get }
}

/// The `SpinnerPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSpinnerPrivate` instance.
/// It exposes methods that can operate on this data type through `SpinnerPrivateProtocol` conformance.
/// Use `SpinnerPrivateRef` only as an `unowned` reference to an existing `GtkSpinnerPrivate` instance.
///

public struct SpinnerPrivateRef: SpinnerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SpinnerPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSpinnerPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SpinnerPrivateProtocol`
    init<T: SpinnerPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SpinnerPrivate` type acts as an owner of an underlying `GtkSpinnerPrivate` instance.
/// It provides the methods that can operate on this data type through `SpinnerPrivateProtocol` conformance.
/// Use `SpinnerPrivate` as a strong reference or owner of a `GtkSpinnerPrivate` instance.
///

open class SpinnerPrivate: SpinnerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSpinnerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SpinnerPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSpinnerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SpinnerPrivateProtocol`
    /// `GtkSpinnerPrivate` does not allow reference counting.
    public convenience init<T: SpinnerPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSpinnerPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSpinnerPrivate`.
    deinit {
        // no reference counting for GtkSpinnerPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSpinnerPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSpinnerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSpinnerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SpinnerPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSpinnerPrivate>(opaquePointer))
    }



}

// MARK: - no SpinnerPrivate properties

// MARK: - no signals


public extension SpinnerPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSpinnerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSpinnerPrivate> { return ptr.assumingMemoryBound(to: GtkSpinnerPrivate.self) }

}



// MARK: - StackAccessibleClass Record

/// The `StackAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackAccessibleClass`.
/// Alternatively, use `StackAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkStackAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStackAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackAccessibleClass> { get }
}

/// The `StackAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `StackAccessibleClassProtocol` conformance.
/// Use `StackAccessibleClassRef` only as an `unowned` reference to an existing `GtkStackAccessibleClass` instance.
///

public struct StackAccessibleClassRef: StackAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkStackAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StackAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStackAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StackAccessibleClassProtocol`
    init<T: StackAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StackAccessibleClass` type acts as an owner of an underlying `GtkStackAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `StackAccessibleClassProtocol` conformance.
/// Use `StackAccessibleClass` as a strong reference or owner of a `GtkStackAccessibleClass` instance.
///

open class StackAccessibleClass: StackAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkStackAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StackAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStackAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StackAccessibleClassProtocol`
    /// `GtkStackAccessibleClass` does not allow reference counting.
    public convenience init<T: StackAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStackAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStackAccessibleClass`.
    deinit {
        // no reference counting for GtkStackAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStackAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStackAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStackAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStackAccessibleClass>(opaquePointer))
    }



}

// MARK: - no StackAccessibleClass properties

// MARK: - no signals


public extension StackAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackAccessibleClass> { return ptr.assumingMemoryBound(to: GtkStackAccessibleClass.self) }

}



// MARK: - StackClass Record

/// The `StackClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackClass`.
/// Alternatively, use `StackClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackClassProtocol {
    /// Untyped pointer to the underlying `GtkStackClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStackClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackClass> { get }
}

/// The `StackClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackClass` instance.
/// It exposes methods that can operate on this data type through `StackClassProtocol` conformance.
/// Use `StackClassRef` only as an `unowned` reference to an existing `GtkStackClass` instance.
///

public struct StackClassRef: StackClassProtocol {
    /// Untyped pointer to the underlying `GtkStackClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StackClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStackClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StackClassProtocol`
    init<T: StackClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StackClass` type acts as an owner of an underlying `GtkStackClass` instance.
/// It provides the methods that can operate on this data type through `StackClassProtocol` conformance.
/// Use `StackClass` as a strong reference or owner of a `GtkStackClass` instance.
///

open class StackClass: StackClassProtocol {
    /// Untyped pointer to the underlying `GtkStackClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StackClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStackClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StackClassProtocol`
    /// `GtkStackClass` does not allow reference counting.
    public convenience init<T: StackClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStackClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStackClass`.
    deinit {
        // no reference counting for GtkStackClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStackClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStackClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStackClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStackClass>(opaquePointer))
    }



}

// MARK: - no StackClass properties

// MARK: - no signals


public extension StackClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackClass> { return ptr.assumingMemoryBound(to: GtkStackClass.self) }

}



// MARK: - StackSidebarClass Record

/// The `StackSidebarClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackSidebarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackSidebarClass`.
/// Alternatively, use `StackSidebarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackSidebarClassProtocol {
    /// Untyped pointer to the underlying `GtkStackSidebarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStackSidebarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSidebarClass> { get }
}

/// The `StackSidebarClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackSidebarClass` instance.
/// It exposes methods that can operate on this data type through `StackSidebarClassProtocol` conformance.
/// Use `StackSidebarClassRef` only as an `unowned` reference to an existing `GtkStackSidebarClass` instance.
///

public struct StackSidebarClassRef: StackSidebarClassProtocol {
    /// Untyped pointer to the underlying `GtkStackSidebarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StackSidebarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStackSidebarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StackSidebarClassProtocol`
    init<T: StackSidebarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StackSidebarClass` type acts as an owner of an underlying `GtkStackSidebarClass` instance.
/// It provides the methods that can operate on this data type through `StackSidebarClassProtocol` conformance.
/// Use `StackSidebarClass` as a strong reference or owner of a `GtkStackSidebarClass` instance.
///

open class StackSidebarClass: StackSidebarClassProtocol {
    /// Untyped pointer to the underlying `GtkStackSidebarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StackSidebarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStackSidebarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StackSidebarClassProtocol`
    /// `GtkStackSidebarClass` does not allow reference counting.
    public convenience init<T: StackSidebarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStackSidebarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStackSidebarClass`.
    deinit {
        // no reference counting for GtkStackSidebarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStackSidebarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStackSidebarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStackSidebarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStackSidebarClass>(opaquePointer))
    }



}

// MARK: - no StackSidebarClass properties

// MARK: - no signals


public extension StackSidebarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackSidebarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSidebarClass> { return ptr.assumingMemoryBound(to: GtkStackSidebarClass.self) }

}



// MARK: - StackSidebarPrivate Record

/// The `StackSidebarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkStackSidebarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackSidebarPrivate`.
/// Alternatively, use `StackSidebarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackSidebarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStackSidebarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStackSidebarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSidebarPrivate> { get }
}

/// The `StackSidebarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkStackSidebarPrivate` instance.
/// It exposes methods that can operate on this data type through `StackSidebarPrivateProtocol` conformance.
/// Use `StackSidebarPrivateRef` only as an `unowned` reference to an existing `GtkStackSidebarPrivate` instance.
///

public struct StackSidebarPrivateRef: StackSidebarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStackSidebarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StackSidebarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStackSidebarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StackSidebarPrivateProtocol`
    init<T: StackSidebarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StackSidebarPrivate` type acts as an owner of an underlying `GtkStackSidebarPrivate` instance.
/// It provides the methods that can operate on this data type through `StackSidebarPrivateProtocol` conformance.
/// Use `StackSidebarPrivate` as a strong reference or owner of a `GtkStackSidebarPrivate` instance.
///

open class StackSidebarPrivate: StackSidebarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStackSidebarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StackSidebarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkStackSidebarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StackSidebarPrivateProtocol`
    /// `GtkStackSidebarPrivate` does not allow reference counting.
    public convenience init<T: StackSidebarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStackSidebarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStackSidebarPrivate`.
    deinit {
        // no reference counting for GtkStackSidebarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStackSidebarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStackSidebarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStackSidebarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSidebarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStackSidebarPrivate>(opaquePointer))
    }



}

// MARK: - no StackSidebarPrivate properties

// MARK: - no signals


public extension StackSidebarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackSidebarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSidebarPrivate> { return ptr.assumingMemoryBound(to: GtkStackSidebarPrivate.self) }

}



// MARK: - StackSwitcherClass Record

/// The `StackSwitcherClassProtocol` protocol exposes the methods and properties of an underlying `GtkStackSwitcherClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StackSwitcherClass`.
/// Alternatively, use `StackSwitcherClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StackSwitcherClassProtocol {
    /// Untyped pointer to the underlying `GtkStackSwitcherClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStackSwitcherClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSwitcherClass> { get }
}

/// The `StackSwitcherClassRef` type acts as a lightweight Swift reference to an underlying `GtkStackSwitcherClass` instance.
/// It exposes methods that can operate on this data type through `StackSwitcherClassProtocol` conformance.
/// Use `StackSwitcherClassRef` only as an `unowned` reference to an existing `GtkStackSwitcherClass` instance.
///

public struct StackSwitcherClassRef: StackSwitcherClassProtocol {
    /// Untyped pointer to the underlying `GtkStackSwitcherClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StackSwitcherClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStackSwitcherClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StackSwitcherClassProtocol`
    init<T: StackSwitcherClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StackSwitcherClass` type acts as an owner of an underlying `GtkStackSwitcherClass` instance.
/// It provides the methods that can operate on this data type through `StackSwitcherClassProtocol` conformance.
/// Use `StackSwitcherClass` as a strong reference or owner of a `GtkStackSwitcherClass` instance.
///

open class StackSwitcherClass: StackSwitcherClassProtocol {
    /// Untyped pointer to the underlying `GtkStackSwitcherClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StackSwitcherClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStackSwitcherClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StackSwitcherClassProtocol`
    /// `GtkStackSwitcherClass` does not allow reference counting.
    public convenience init<T: StackSwitcherClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStackSwitcherClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStackSwitcherClass`.
    deinit {
        // no reference counting for GtkStackSwitcherClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStackSwitcherClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStackSwitcherClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStackSwitcherClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StackSwitcherClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStackSwitcherClass>(opaquePointer))
    }



}

// MARK: - no StackSwitcherClass properties

// MARK: - no signals


public extension StackSwitcherClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStackSwitcherClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStackSwitcherClass> { return ptr.assumingMemoryBound(to: GtkStackSwitcherClass.self) }

}



// MARK: - StatusIconClass Record

/// The `StatusIconClassProtocol` protocol exposes the methods and properties of an underlying `GtkStatusIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusIconClass`.
/// Alternatively, use `StatusIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusIconClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusIconClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStatusIconClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusIconClass> { get }
}

/// The `StatusIconClassRef` type acts as a lightweight Swift reference to an underlying `GtkStatusIconClass` instance.
/// It exposes methods that can operate on this data type through `StatusIconClassProtocol` conformance.
/// Use `StatusIconClassRef` only as an `unowned` reference to an existing `GtkStatusIconClass` instance.
///

public struct StatusIconClassRef: StatusIconClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StatusIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStatusIconClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StatusIconClassProtocol`
    init<T: StatusIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StatusIconClass` type acts as an owner of an underlying `GtkStatusIconClass` instance.
/// It provides the methods that can operate on this data type through `StatusIconClassProtocol` conformance.
/// Use `StatusIconClass` as a strong reference or owner of a `GtkStatusIconClass` instance.
///

open class StatusIconClass: StatusIconClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StatusIconClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStatusIconClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StatusIconClassProtocol`
    /// `GtkStatusIconClass` does not allow reference counting.
    public convenience init<T: StatusIconClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStatusIconClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStatusIconClass`.
    deinit {
        // no reference counting for GtkStatusIconClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStatusIconClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStatusIconClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStatusIconClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStatusIconClass>(opaquePointer))
    }



}

// MARK: - no StatusIconClass properties

// MARK: - no signals


public extension StatusIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusIconClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusIconClass> { return ptr.assumingMemoryBound(to: GtkStatusIconClass.self) }

}



// MARK: - StatusIconPrivate Record

/// The `StatusIconPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkStatusIconPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusIconPrivate`.
/// Alternatively, use `StatusIconPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusIconPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusIconPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStatusIconPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusIconPrivate> { get }
}

/// The `StatusIconPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkStatusIconPrivate` instance.
/// It exposes methods that can operate on this data type through `StatusIconPrivateProtocol` conformance.
/// Use `StatusIconPrivateRef` only as an `unowned` reference to an existing `GtkStatusIconPrivate` instance.
///

public struct StatusIconPrivateRef: StatusIconPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusIconPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StatusIconPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStatusIconPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StatusIconPrivateProtocol`
    init<T: StatusIconPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StatusIconPrivate` type acts as an owner of an underlying `GtkStatusIconPrivate` instance.
/// It provides the methods that can operate on this data type through `StatusIconPrivateProtocol` conformance.
/// Use `StatusIconPrivate` as a strong reference or owner of a `GtkStatusIconPrivate` instance.
///

open class StatusIconPrivate: StatusIconPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusIconPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StatusIconPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkStatusIconPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StatusIconPrivateProtocol`
    /// `GtkStatusIconPrivate` does not allow reference counting.
    public convenience init<T: StatusIconPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStatusIconPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStatusIconPrivate`.
    deinit {
        // no reference counting for GtkStatusIconPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStatusIconPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStatusIconPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStatusIconPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusIconPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStatusIconPrivate>(opaquePointer))
    }



}

// MARK: - no StatusIconPrivate properties

// MARK: - no signals


public extension StatusIconPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusIconPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusIconPrivate> { return ptr.assumingMemoryBound(to: GtkStatusIconPrivate.self) }

}



// MARK: - StatusbarAccessibleClass Record

/// The `StatusbarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkStatusbarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusbarAccessibleClass`.
/// Alternatively, use `StatusbarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusbarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStatusbarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarAccessibleClass> { get }
}

/// The `StatusbarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkStatusbarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `StatusbarAccessibleClassProtocol` conformance.
/// Use `StatusbarAccessibleClassRef` only as an `unowned` reference to an existing `GtkStatusbarAccessibleClass` instance.
///

public struct StatusbarAccessibleClassRef: StatusbarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StatusbarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStatusbarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StatusbarAccessibleClassProtocol`
    init<T: StatusbarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StatusbarAccessibleClass` type acts as an owner of an underlying `GtkStatusbarAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `StatusbarAccessibleClassProtocol` conformance.
/// Use `StatusbarAccessibleClass` as a strong reference or owner of a `GtkStatusbarAccessibleClass` instance.
///

open class StatusbarAccessibleClass: StatusbarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StatusbarAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStatusbarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StatusbarAccessibleClassProtocol`
    /// `GtkStatusbarAccessibleClass` does not allow reference counting.
    public convenience init<T: StatusbarAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStatusbarAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStatusbarAccessibleClass`.
    deinit {
        // no reference counting for GtkStatusbarAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStatusbarAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStatusbarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStatusbarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStatusbarAccessibleClass>(opaquePointer))
    }



}

// MARK: - no StatusbarAccessibleClass properties

// MARK: - no signals


public extension StatusbarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusbarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarAccessibleClass> { return ptr.assumingMemoryBound(to: GtkStatusbarAccessibleClass.self) }

}



// MARK: - StatusbarAccessiblePrivate Record

/// The `StatusbarAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkStatusbarAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusbarAccessiblePrivate`.
/// Alternatively, use `StatusbarAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusbarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStatusbarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarAccessiblePrivate> { get }
}

/// The `StatusbarAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkStatusbarAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `StatusbarAccessiblePrivateProtocol` conformance.
/// Use `StatusbarAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkStatusbarAccessiblePrivate` instance.
///

public struct StatusbarAccessiblePrivateRef: StatusbarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StatusbarAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStatusbarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StatusbarAccessiblePrivateProtocol`
    init<T: StatusbarAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StatusbarAccessiblePrivate` type acts as an owner of an underlying `GtkStatusbarAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `StatusbarAccessiblePrivateProtocol` conformance.
/// Use `StatusbarAccessiblePrivate` as a strong reference or owner of a `GtkStatusbarAccessiblePrivate` instance.
///

open class StatusbarAccessiblePrivate: StatusbarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StatusbarAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkStatusbarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StatusbarAccessiblePrivateProtocol`
    /// `GtkStatusbarAccessiblePrivate` does not allow reference counting.
    public convenience init<T: StatusbarAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStatusbarAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStatusbarAccessiblePrivate`.
    deinit {
        // no reference counting for GtkStatusbarAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStatusbarAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStatusbarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStatusbarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStatusbarAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no StatusbarAccessiblePrivate properties

// MARK: - no signals


public extension StatusbarAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusbarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkStatusbarAccessiblePrivate.self) }

}



// MARK: - StatusbarClass Record

/// The `StatusbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkStatusbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusbarClass`.
/// Alternatively, use `StatusbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusbarClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStatusbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarClass> { get }
}

/// The `StatusbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkStatusbarClass` instance.
/// It exposes methods that can operate on this data type through `StatusbarClassProtocol` conformance.
/// Use `StatusbarClassRef` only as an `unowned` reference to an existing `GtkStatusbarClass` instance.
///

public struct StatusbarClassRef: StatusbarClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StatusbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStatusbarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StatusbarClassProtocol`
    init<T: StatusbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StatusbarClass` type acts as an owner of an underlying `GtkStatusbarClass` instance.
/// It provides the methods that can operate on this data type through `StatusbarClassProtocol` conformance.
/// Use `StatusbarClass` as a strong reference or owner of a `GtkStatusbarClass` instance.
///

open class StatusbarClass: StatusbarClassProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StatusbarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStatusbarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StatusbarClassProtocol`
    /// `GtkStatusbarClass` does not allow reference counting.
    public convenience init<T: StatusbarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStatusbarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStatusbarClass`.
    deinit {
        // no reference counting for GtkStatusbarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStatusbarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStatusbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStatusbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStatusbarClass>(opaquePointer))
    }



}

// MARK: - no StatusbarClass properties

// MARK: - no signals


public extension StatusbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarClass> { return ptr.assumingMemoryBound(to: GtkStatusbarClass.self) }

}



// MARK: - StatusbarPrivate Record

/// The `StatusbarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkStatusbarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatusbarPrivate`.
/// Alternatively, use `StatusbarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StatusbarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStatusbarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarPrivate> { get }
}

/// The `StatusbarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkStatusbarPrivate` instance.
/// It exposes methods that can operate on this data type through `StatusbarPrivateProtocol` conformance.
/// Use `StatusbarPrivateRef` only as an `unowned` reference to an existing `GtkStatusbarPrivate` instance.
///

public struct StatusbarPrivateRef: StatusbarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StatusbarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStatusbarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StatusbarPrivateProtocol`
    init<T: StatusbarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StatusbarPrivate` type acts as an owner of an underlying `GtkStatusbarPrivate` instance.
/// It provides the methods that can operate on this data type through `StatusbarPrivateProtocol` conformance.
/// Use `StatusbarPrivate` as a strong reference or owner of a `GtkStatusbarPrivate` instance.
///

open class StatusbarPrivate: StatusbarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStatusbarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StatusbarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkStatusbarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StatusbarPrivateProtocol`
    /// `GtkStatusbarPrivate` does not allow reference counting.
    public convenience init<T: StatusbarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStatusbarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStatusbarPrivate`.
    deinit {
        // no reference counting for GtkStatusbarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStatusbarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStatusbarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStatusbarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatusbarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStatusbarPrivate>(opaquePointer))
    }



}

// MARK: - no StatusbarPrivate properties

// MARK: - no signals


public extension StatusbarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStatusbarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStatusbarPrivate> { return ptr.assumingMemoryBound(to: GtkStatusbarPrivate.self) }

}



// MARK: - StockItem Record

/// The `StockItemProtocol` protocol exposes the methods and properties of an underlying `GtkStockItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StockItem`.
/// Alternatively, use `StockItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StockItemProtocol {
    /// Untyped pointer to the underlying `GtkStockItem` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStockItem` instance.
    var _ptr: UnsafeMutablePointer<GtkStockItem> { get }
}

/// The `StockItemRef` type acts as a lightweight Swift reference to an underlying `GtkStockItem` instance.
/// It exposes methods that can operate on this data type through `StockItemProtocol` conformance.
/// Use `StockItemRef` only as an `unowned` reference to an existing `GtkStockItem` instance.
///

public struct StockItemRef: StockItemProtocol {
    /// Untyped pointer to the underlying `GtkStockItem` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StockItemRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStockItem>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StockItemProtocol`
    init<T: StockItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StockItem` type acts as an owner of an underlying `GtkStockItem` instance.
/// It provides the methods that can operate on this data type through `StockItemProtocol` conformance.
/// Use `StockItem` as a strong reference or owner of a `GtkStockItem` instance.
///

open class StockItem: StockItemProtocol {
    /// Untyped pointer to the underlying `GtkStockItem` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StockItem` instance.
    public init(_ op: UnsafeMutablePointer<GtkStockItem>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StockItemProtocol`
    /// `GtkStockItem` does not allow reference counting.
    public convenience init<T: StockItemProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStockItem, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStockItem`.
    deinit {
        // no reference counting for GtkStockItem, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStockItem.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStockItem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStockItem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StockItemProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStockItem>(opaquePointer))
    }



}

// MARK: - no StockItem properties

// MARK: - no signals


public extension StockItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStockItem` instance.
    var _ptr: UnsafeMutablePointer<GtkStockItem> { return ptr.assumingMemoryBound(to: GtkStockItem.self) }

    /// Copies a stock item, mostly useful for language bindings and not in applications.
    ///
    /// **copy is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func copy() -> UnsafeMutablePointer<GtkStockItem>! {
        let rv = gtk_stock_item_copy(cast(_ptr))
        return cast(rv)
    }

    /// Frees a stock item allocated on the heap, such as one returned by
    /// `gtk_stock_item_copy()`. Also frees the fields inside the stock item,
    /// if they are not `nil`.
    ///
    /// **free is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func free() {
        gtk_stock_item_free(cast(_ptr))
    
    }

    /// Fills `item` with the registered values for `stock_id`, returning `true`
    /// if `stock_id` was known.
    ///
    /// **stock_lookup is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func stockLookup(stockID stock_id: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_stock_lookup(stock_id, cast(_ptr))
        return Bool(rv != 0)
    }
}



// MARK: - StyleClass Record

/// The `StyleClassProtocol` protocol exposes the methods and properties of an underlying `GtkStyleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleClass`.
/// Alternatively, use `StyleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StyleClassProtocol {
    /// Untyped pointer to the underlying `GtkStyleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStyleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleClass> { get }
}

/// The `StyleClassRef` type acts as a lightweight Swift reference to an underlying `GtkStyleClass` instance.
/// It exposes methods that can operate on this data type through `StyleClassProtocol` conformance.
/// Use `StyleClassRef` only as an `unowned` reference to an existing `GtkStyleClass` instance.
///

public struct StyleClassRef: StyleClassProtocol {
    /// Untyped pointer to the underlying `GtkStyleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StyleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStyleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StyleClassProtocol`
    init<T: StyleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StyleClass` type acts as an owner of an underlying `GtkStyleClass` instance.
/// It provides the methods that can operate on this data type through `StyleClassProtocol` conformance.
/// Use `StyleClass` as a strong reference or owner of a `GtkStyleClass` instance.
///

open class StyleClass: StyleClassProtocol {
    /// Untyped pointer to the underlying `GtkStyleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StyleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStyleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StyleClassProtocol`
    /// `GtkStyleClass` does not allow reference counting.
    public convenience init<T: StyleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStyleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStyleClass`.
    deinit {
        // no reference counting for GtkStyleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStyleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStyleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStyleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStyleClass>(opaquePointer))
    }



}

// MARK: - no StyleClass properties

// MARK: - no signals


public extension StyleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleClass> { return ptr.assumingMemoryBound(to: GtkStyleClass.self) }

}



// MARK: - StyleContextClass Record

/// The `StyleContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkStyleContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleContextClass`.
/// Alternatively, use `StyleContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StyleContextClassProtocol {
    /// Untyped pointer to the underlying `GtkStyleContextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStyleContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleContextClass> { get }
}

/// The `StyleContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkStyleContextClass` instance.
/// It exposes methods that can operate on this data type through `StyleContextClassProtocol` conformance.
/// Use `StyleContextClassRef` only as an `unowned` reference to an existing `GtkStyleContextClass` instance.
///

public struct StyleContextClassRef: StyleContextClassProtocol {
    /// Untyped pointer to the underlying `GtkStyleContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StyleContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStyleContextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StyleContextClassProtocol`
    init<T: StyleContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StyleContextClass` type acts as an owner of an underlying `GtkStyleContextClass` instance.
/// It provides the methods that can operate on this data type through `StyleContextClassProtocol` conformance.
/// Use `StyleContextClass` as a strong reference or owner of a `GtkStyleContextClass` instance.
///

open class StyleContextClass: StyleContextClassProtocol {
    /// Untyped pointer to the underlying `GtkStyleContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StyleContextClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStyleContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StyleContextClassProtocol`
    /// `GtkStyleContextClass` does not allow reference counting.
    public convenience init<T: StyleContextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStyleContextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStyleContextClass`.
    deinit {
        // no reference counting for GtkStyleContextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStyleContextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStyleContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStyleContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStyleContextClass>(opaquePointer))
    }



}

// MARK: - no StyleContextClass properties

// MARK: - no signals


public extension StyleContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleContextClass> { return ptr.assumingMemoryBound(to: GtkStyleContextClass.self) }

}



// MARK: - StyleContextPrivate Record

/// The `StyleContextPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkStyleContextPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleContextPrivate`.
/// Alternatively, use `StyleContextPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StyleContextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStyleContextPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStyleContextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleContextPrivate> { get }
}

/// The `StyleContextPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkStyleContextPrivate` instance.
/// It exposes methods that can operate on this data type through `StyleContextPrivateProtocol` conformance.
/// Use `StyleContextPrivateRef` only as an `unowned` reference to an existing `GtkStyleContextPrivate` instance.
///

public struct StyleContextPrivateRef: StyleContextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStyleContextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StyleContextPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStyleContextPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StyleContextPrivateProtocol`
    init<T: StyleContextPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StyleContextPrivate` type acts as an owner of an underlying `GtkStyleContextPrivate` instance.
/// It provides the methods that can operate on this data type through `StyleContextPrivateProtocol` conformance.
/// Use `StyleContextPrivate` as a strong reference or owner of a `GtkStyleContextPrivate` instance.
///

open class StyleContextPrivate: StyleContextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStyleContextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StyleContextPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkStyleContextPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StyleContextPrivateProtocol`
    /// `GtkStyleContextPrivate` does not allow reference counting.
    public convenience init<T: StyleContextPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStyleContextPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStyleContextPrivate`.
    deinit {
        // no reference counting for GtkStyleContextPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStyleContextPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStyleContextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStyleContextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStyleContextPrivate>(opaquePointer))
    }



}

// MARK: - no StyleContextPrivate properties

// MARK: - no signals


public extension StyleContextPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleContextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleContextPrivate> { return ptr.assumingMemoryBound(to: GtkStyleContextPrivate.self) }

}



// MARK: - StylePropertiesClass Record

/// The `StylePropertiesClassProtocol` protocol exposes the methods and properties of an underlying `GtkStylePropertiesClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StylePropertiesClass`.
/// Alternatively, use `StylePropertiesClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StylePropertiesClassProtocol {
    /// Untyped pointer to the underlying `GtkStylePropertiesClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStylePropertiesClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStylePropertiesClass> { get }
}

/// The `StylePropertiesClassRef` type acts as a lightweight Swift reference to an underlying `GtkStylePropertiesClass` instance.
/// It exposes methods that can operate on this data type through `StylePropertiesClassProtocol` conformance.
/// Use `StylePropertiesClassRef` only as an `unowned` reference to an existing `GtkStylePropertiesClass` instance.
///

public struct StylePropertiesClassRef: StylePropertiesClassProtocol {
    /// Untyped pointer to the underlying `GtkStylePropertiesClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StylePropertiesClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStylePropertiesClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StylePropertiesClassProtocol`
    init<T: StylePropertiesClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StylePropertiesClass` type acts as an owner of an underlying `GtkStylePropertiesClass` instance.
/// It provides the methods that can operate on this data type through `StylePropertiesClassProtocol` conformance.
/// Use `StylePropertiesClass` as a strong reference or owner of a `GtkStylePropertiesClass` instance.
///

open class StylePropertiesClass: StylePropertiesClassProtocol {
    /// Untyped pointer to the underlying `GtkStylePropertiesClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StylePropertiesClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkStylePropertiesClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StylePropertiesClassProtocol`
    /// `GtkStylePropertiesClass` does not allow reference counting.
    public convenience init<T: StylePropertiesClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStylePropertiesClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStylePropertiesClass`.
    deinit {
        // no reference counting for GtkStylePropertiesClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStylePropertiesClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStylePropertiesClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStylePropertiesClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStylePropertiesClass>(opaquePointer))
    }



}

// MARK: - no StylePropertiesClass properties

// MARK: - no signals


public extension StylePropertiesClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStylePropertiesClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStylePropertiesClass> { return ptr.assumingMemoryBound(to: GtkStylePropertiesClass.self) }

}



// MARK: - StylePropertiesPrivate Record

/// The `StylePropertiesPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkStylePropertiesPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StylePropertiesPrivate`.
/// Alternatively, use `StylePropertiesPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StylePropertiesPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStylePropertiesPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStylePropertiesPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStylePropertiesPrivate> { get }
}

/// The `StylePropertiesPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkStylePropertiesPrivate` instance.
/// It exposes methods that can operate on this data type through `StylePropertiesPrivateProtocol` conformance.
/// Use `StylePropertiesPrivateRef` only as an `unowned` reference to an existing `GtkStylePropertiesPrivate` instance.
///

public struct StylePropertiesPrivateRef: StylePropertiesPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStylePropertiesPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StylePropertiesPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStylePropertiesPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StylePropertiesPrivateProtocol`
    init<T: StylePropertiesPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StylePropertiesPrivate` type acts as an owner of an underlying `GtkStylePropertiesPrivate` instance.
/// It provides the methods that can operate on this data type through `StylePropertiesPrivateProtocol` conformance.
/// Use `StylePropertiesPrivate` as a strong reference or owner of a `GtkStylePropertiesPrivate` instance.
///

open class StylePropertiesPrivate: StylePropertiesPrivateProtocol {
    /// Untyped pointer to the underlying `GtkStylePropertiesPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StylePropertiesPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkStylePropertiesPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StylePropertiesPrivateProtocol`
    /// `GtkStylePropertiesPrivate` does not allow reference counting.
    public convenience init<T: StylePropertiesPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStylePropertiesPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStylePropertiesPrivate`.
    deinit {
        // no reference counting for GtkStylePropertiesPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStylePropertiesPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStylePropertiesPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStylePropertiesPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StylePropertiesPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStylePropertiesPrivate>(opaquePointer))
    }



}

// MARK: - no StylePropertiesPrivate properties

// MARK: - no signals


public extension StylePropertiesPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStylePropertiesPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkStylePropertiesPrivate> { return ptr.assumingMemoryBound(to: GtkStylePropertiesPrivate.self) }

}



// MARK: - StyleProviderIface Record

/// The `StyleProviderIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkStyleProviderIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleProviderIface`.
/// Alternatively, use `StyleProviderIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol StyleProviderIfaceProtocol {
    /// Untyped pointer to the underlying `GtkStyleProviderIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStyleProviderIface` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleProviderIface> { get }
}

/// The `StyleProviderIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkStyleProviderIface` instance.
/// It exposes methods that can operate on this data type through `StyleProviderIfaceProtocol` conformance.
/// Use `StyleProviderIfaceRef` only as an `unowned` reference to an existing `GtkStyleProviderIface` instance.
///

public struct StyleProviderIfaceRef: StyleProviderIfaceProtocol {
    /// Untyped pointer to the underlying `GtkStyleProviderIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StyleProviderIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStyleProviderIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StyleProviderIfaceProtocol`
    init<T: StyleProviderIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StyleProviderIface` type acts as an owner of an underlying `GtkStyleProviderIface` instance.
/// It provides the methods that can operate on this data type through `StyleProviderIfaceProtocol` conformance.
/// Use `StyleProviderIface` as a strong reference or owner of a `GtkStyleProviderIface` instance.
///

open class StyleProviderIface: StyleProviderIfaceProtocol {
    /// Untyped pointer to the underlying `GtkStyleProviderIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StyleProviderIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkStyleProviderIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StyleProviderIfaceProtocol`
    /// `GtkStyleProviderIface` does not allow reference counting.
    public convenience init<T: StyleProviderIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkStyleProviderIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkStyleProviderIface`.
    deinit {
        // no reference counting for GtkStyleProviderIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStyleProviderIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStyleProviderIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStyleProviderIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStyleProviderIface>(opaquePointer))
    }



}

// MARK: - no StyleProviderIface properties

// MARK: - no signals


public extension StyleProviderIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleProviderIface` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleProviderIface> { return ptr.assumingMemoryBound(to: GtkStyleProviderIface.self) }

}



// MARK: - SwitchAccessibleClass Record

/// The `SwitchAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkSwitchAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SwitchAccessibleClass`.
/// Alternatively, use `SwitchAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SwitchAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSwitchAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSwitchAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchAccessibleClass> { get }
}

/// The `SwitchAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkSwitchAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `SwitchAccessibleClassProtocol` conformance.
/// Use `SwitchAccessibleClassRef` only as an `unowned` reference to an existing `GtkSwitchAccessibleClass` instance.
///

public struct SwitchAccessibleClassRef: SwitchAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSwitchAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SwitchAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSwitchAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SwitchAccessibleClassProtocol`
    init<T: SwitchAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SwitchAccessibleClass` type acts as an owner of an underlying `GtkSwitchAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `SwitchAccessibleClassProtocol` conformance.
/// Use `SwitchAccessibleClass` as a strong reference or owner of a `GtkSwitchAccessibleClass` instance.
///

open class SwitchAccessibleClass: SwitchAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkSwitchAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SwitchAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSwitchAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SwitchAccessibleClassProtocol`
    /// `GtkSwitchAccessibleClass` does not allow reference counting.
    public convenience init<T: SwitchAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSwitchAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSwitchAccessibleClass`.
    deinit {
        // no reference counting for GtkSwitchAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSwitchAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSwitchAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSwitchAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSwitchAccessibleClass>(opaquePointer))
    }



}

// MARK: - no SwitchAccessibleClass properties

// MARK: - no signals


public extension SwitchAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSwitchAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchAccessibleClass> { return ptr.assumingMemoryBound(to: GtkSwitchAccessibleClass.self) }

}



// MARK: - SwitchAccessiblePrivate Record

/// The `SwitchAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSwitchAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SwitchAccessiblePrivate`.
/// Alternatively, use `SwitchAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SwitchAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSwitchAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSwitchAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchAccessiblePrivate> { get }
}

/// The `SwitchAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSwitchAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `SwitchAccessiblePrivateProtocol` conformance.
/// Use `SwitchAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkSwitchAccessiblePrivate` instance.
///

public struct SwitchAccessiblePrivateRef: SwitchAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSwitchAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SwitchAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSwitchAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SwitchAccessiblePrivateProtocol`
    init<T: SwitchAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SwitchAccessiblePrivate` type acts as an owner of an underlying `GtkSwitchAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `SwitchAccessiblePrivateProtocol` conformance.
/// Use `SwitchAccessiblePrivate` as a strong reference or owner of a `GtkSwitchAccessiblePrivate` instance.
///

open class SwitchAccessiblePrivate: SwitchAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkSwitchAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SwitchAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSwitchAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SwitchAccessiblePrivateProtocol`
    /// `GtkSwitchAccessiblePrivate` does not allow reference counting.
    public convenience init<T: SwitchAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSwitchAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSwitchAccessiblePrivate`.
    deinit {
        // no reference counting for GtkSwitchAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSwitchAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSwitchAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSwitchAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSwitchAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no SwitchAccessiblePrivate properties

// MARK: - no signals


public extension SwitchAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSwitchAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkSwitchAccessiblePrivate.self) }

}



// MARK: - SwitchClass Record

/// The `SwitchClassProtocol` protocol exposes the methods and properties of an underlying `GtkSwitchClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SwitchClass`.
/// Alternatively, use `SwitchClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SwitchClassProtocol {
    /// Untyped pointer to the underlying `GtkSwitchClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSwitchClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchClass> { get }
}

/// The `SwitchClassRef` type acts as a lightweight Swift reference to an underlying `GtkSwitchClass` instance.
/// It exposes methods that can operate on this data type through `SwitchClassProtocol` conformance.
/// Use `SwitchClassRef` only as an `unowned` reference to an existing `GtkSwitchClass` instance.
///

public struct SwitchClassRef: SwitchClassProtocol {
    /// Untyped pointer to the underlying `GtkSwitchClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SwitchClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSwitchClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SwitchClassProtocol`
    init<T: SwitchClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SwitchClass` type acts as an owner of an underlying `GtkSwitchClass` instance.
/// It provides the methods that can operate on this data type through `SwitchClassProtocol` conformance.
/// Use `SwitchClass` as a strong reference or owner of a `GtkSwitchClass` instance.
///

open class SwitchClass: SwitchClassProtocol {
    /// Untyped pointer to the underlying `GtkSwitchClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SwitchClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkSwitchClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SwitchClassProtocol`
    /// `GtkSwitchClass` does not allow reference counting.
    public convenience init<T: SwitchClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSwitchClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSwitchClass`.
    deinit {
        // no reference counting for GtkSwitchClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSwitchClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSwitchClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSwitchClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSwitchClass>(opaquePointer))
    }



}

// MARK: - no SwitchClass properties

// MARK: - no signals


public extension SwitchClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSwitchClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchClass> { return ptr.assumingMemoryBound(to: GtkSwitchClass.self) }

}



// MARK: - SwitchPrivate Record

/// The `SwitchPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkSwitchPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SwitchPrivate`.
/// Alternatively, use `SwitchPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SwitchPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSwitchPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSwitchPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchPrivate> { get }
}

/// The `SwitchPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkSwitchPrivate` instance.
/// It exposes methods that can operate on this data type through `SwitchPrivateProtocol` conformance.
/// Use `SwitchPrivateRef` only as an `unowned` reference to an existing `GtkSwitchPrivate` instance.
///

public struct SwitchPrivateRef: SwitchPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSwitchPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SwitchPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSwitchPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SwitchPrivateProtocol`
    init<T: SwitchPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SwitchPrivate` type acts as an owner of an underlying `GtkSwitchPrivate` instance.
/// It provides the methods that can operate on this data type through `SwitchPrivateProtocol` conformance.
/// Use `SwitchPrivate` as a strong reference or owner of a `GtkSwitchPrivate` instance.
///

open class SwitchPrivate: SwitchPrivateProtocol {
    /// Untyped pointer to the underlying `GtkSwitchPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SwitchPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkSwitchPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SwitchPrivateProtocol`
    /// `GtkSwitchPrivate` does not allow reference counting.
    public convenience init<T: SwitchPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkSwitchPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkSwitchPrivate`.
    deinit {
        // no reference counting for GtkSwitchPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSwitchPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSwitchPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSwitchPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SwitchPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSwitchPrivate>(opaquePointer))
    }



}

// MARK: - no SwitchPrivate properties

// MARK: - no signals


public extension SwitchPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSwitchPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkSwitchPrivate> { return ptr.assumingMemoryBound(to: GtkSwitchPrivate.self) }

}



// MARK: - SymbolicColor Record

/// The `SymbolicColorProtocol` protocol exposes the methods and properties of an underlying `GtkSymbolicColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SymbolicColor`.
/// Alternatively, use `SymbolicColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkSymbolicColor is a boxed type that represents a symbolic color.
/// It is the result of parsing a
/// [color expression](#gtkcssprovider-symbolic-colors).
/// To obtain the color represented by a GtkSymbolicColor, it has to
/// be resolved with `gtk_symbolic_color_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and evaluates mix, shade and other expressions, resulting
/// in a `GdkRGBA` value.
/// 
/// It is not normally necessary to deal directly with `GtkSymbolicColors`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkSymbolicColor` is deprecated. Symbolic colors are considered an
/// implementation detail of GTK+.
public protocol SymbolicColorProtocol {
    /// Untyped pointer to the underlying `GtkSymbolicColor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkSymbolicColor` instance.
    var symbolic_color_ptr: UnsafeMutablePointer<GtkSymbolicColor> { get }
}

/// The `SymbolicColorRef` type acts as a lightweight Swift reference to an underlying `GtkSymbolicColor` instance.
/// It exposes methods that can operate on this data type through `SymbolicColorProtocol` conformance.
/// Use `SymbolicColorRef` only as an `unowned` reference to an existing `GtkSymbolicColor` instance.
///
/// GtkSymbolicColor is a boxed type that represents a symbolic color.
/// It is the result of parsing a
/// [color expression](#gtkcssprovider-symbolic-colors).
/// To obtain the color represented by a GtkSymbolicColor, it has to
/// be resolved with `gtk_symbolic_color_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and evaluates mix, shade and other expressions, resulting
/// in a `GdkRGBA` value.
/// 
/// It is not normally necessary to deal directly with `GtkSymbolicColors`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkSymbolicColor` is deprecated. Symbolic colors are considered an
/// implementation detail of GTK+.
public struct SymbolicColorRef: SymbolicColorProtocol {
    /// Untyped pointer to the underlying `GtkSymbolicColor` instance.
    /// For type-safe access, use the generated, typed pointer `symbolic_color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SymbolicColorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkSymbolicColor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SymbolicColorProtocol`
    init<T: SymbolicColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) init(literal color: RGBAProtocol) {
        let rv = gtk_symbolic_color_new_literal(cast(color.ptr))
        self.init(cast(rv))
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) init(name: UnsafePointer<gchar>) {
        let rv = gtk_symbolic_color_new_name(name)
        self.init(cast(rv))
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) init(win32 theme_class: UnsafePointer<gchar>, id: CInt) {
        let rv = gtk_symbolic_color_new_win32(theme_class, gint(id))
        self.init(cast(rv))
    }
    /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) static func new(literal color: RGBAProtocol) -> SymbolicColorRef! {
        let rv = gtk_symbolic_color_new_literal(cast(color.ptr))
        return rv.map { SymbolicColorRef(cast($0)) }
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) static func new(name: UnsafePointer<gchar>) -> SymbolicColorRef! {
        let rv = gtk_symbolic_color_new_name(name)
        return rv.map { SymbolicColorRef(cast($0)) }
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) static func new(win32 theme_class: UnsafePointer<gchar>, id: CInt) -> SymbolicColorRef! {
        let rv = gtk_symbolic_color_new_win32(theme_class, gint(id))
        return rv.map { SymbolicColorRef(cast($0)) }
    }
}

/// The `SymbolicColor` type acts as a reference-counted owner of an underlying `GtkSymbolicColor` instance.
/// It provides the methods that can operate on this data type through `SymbolicColorProtocol` conformance.
/// Use `SymbolicColor` as a strong reference or owner of a `GtkSymbolicColor` instance.
///
/// GtkSymbolicColor is a boxed type that represents a symbolic color.
/// It is the result of parsing a
/// [color expression](#gtkcssprovider-symbolic-colors).
/// To obtain the color represented by a GtkSymbolicColor, it has to
/// be resolved with `gtk_symbolic_color_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and evaluates mix, shade and other expressions, resulting
/// in a `GdkRGBA` value.
/// 
/// It is not normally necessary to deal directly with `GtkSymbolicColors`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkSymbolicColor` is deprecated. Symbolic colors are considered an
/// implementation detail of GTK+.
open class SymbolicColor: SymbolicColorProtocol {
    /// Untyped pointer to the underlying `GtkSymbolicColor` instance.
    /// For type-safe access, use the generated, typed pointer `symbolic_color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SymbolicColor` instance.
    public init(_ op: UnsafeMutablePointer<GtkSymbolicColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SymbolicColorProtocol`
    /// Will retain `GtkSymbolicColor`.
    public convenience init<T: SymbolicColorProtocol>(_ other: T) {
        self.init(cast(other.symbolic_color_ptr))
        g_object_ref(cast(symbolic_color_ptr))
    }

    /// Releases the underlying `GtkSymbolicColor` instance using `g_object_unref`.
    deinit {
        g_object_unref(cast(symbolic_color_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkSymbolicColor.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkSymbolicColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SymbolicColorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkSymbolicColor>(opaquePointer))
    }

    /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) public convenience init(literal color: RGBAProtocol) {
        let rv = gtk_symbolic_color_new_literal(cast(color.ptr))
        self.init(cast(rv))
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) public convenience init(name: UnsafePointer<gchar>) {
        let rv = gtk_symbolic_color_new_name(name)
        self.init(cast(rv))
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) public convenience init(win32 theme_class: UnsafePointer<gchar>, id: CInt) {
        let rv = gtk_symbolic_color_new_win32(theme_class, gint(id))
        self.init(cast(rv))
    }

    /// Creates a symbolic color pointing to a literal color.
    ///
    /// **new_literal is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) public static func new(literal color: RGBAProtocol) -> SymbolicColor! {
        let rv = gtk_symbolic_color_new_literal(cast(color.ptr))
        return rv.map { SymbolicColor(cast($0)) }
    }

    /// Creates a symbolic color pointing to an unresolved named
    /// color. See `gtk_style_context_lookup_color()` and
    /// `gtk_style_properties_lookup_color()`.
    ///
    /// **new_name is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) public static func new(name: UnsafePointer<gchar>) -> SymbolicColor! {
        let rv = gtk_symbolic_color_new_name(name)
        return rv.map { SymbolicColor(cast($0)) }
    }

    /// Creates a symbolic color based on the current win32
    /// theme.
    /// 
    /// Note that while this call is available on all platforms
    /// the actual value returned is not reliable on non-win32
    /// platforms.
    ///
    /// **new_win32 is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) public static func new(win32 theme_class: UnsafePointer<gchar>, id: CInt) -> SymbolicColor! {
        let rv = gtk_symbolic_color_new_win32(theme_class, gint(id))
        return rv.map { SymbolicColor(cast($0)) }
    }

}

// MARK: - no SymbolicColor properties

// MARK: - no signals


public extension SymbolicColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSymbolicColor` instance.
    var symbolic_color_ptr: UnsafeMutablePointer<GtkSymbolicColor> { return ptr.assumingMemoryBound(to: GtkSymbolicColor.self) }

    /// Increases the reference count of `color`
    ///
    /// **ref is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) func ref() -> UnsafeMutablePointer<GtkSymbolicColor>! {
        let rv = g_object_ref(cast(symbolic_color_ptr))
        return cast(rv)
    }

    /// If `color` is resolvable, `resolved_color` will be filled in
    /// with the resolved color, and `true` will be returned. Generally,
    /// if `color` can’t be resolved, it is due to it being defined on
    /// top of a named color that doesn’t exist in `props`.
    /// 
    /// When `props` is `nil`, resolving of named colors will fail, so if
    /// your `color` is or references such a color, this function will
    /// return `false`.
    ///
    /// **resolve is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) func resolve(props: StylePropertiesProtocol, resolvedColor resolved_color: RGBAProtocol) -> Bool {
        let rv = gtk_symbolic_color_resolve(cast(symbolic_color_ptr), cast(props.ptr), cast(resolved_color.ptr))
        return Bool(rv != 0)
    }

    /// Converts the given `color` to a string representation. This is useful
    /// both for debugging and for serialization of strings. The format of
    /// the string may change between different versions of GTK, but it is
    /// guaranteed that the GTK css parser is able to read the string and
    /// create the same symbolic color from it.
    ///
    /// **to_string is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) func toString() -> String! {
        let rv = gtk_symbolic_color_to_string(cast(symbolic_color_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Decreases the reference count of `color`, freeing its memory if the
    /// reference count reaches 0.
    ///
    /// **unref is deprecated:**
    /// #GtkSymbolicColor is deprecated.
    @available(*, deprecated) func unref() {
        g_object_unref(cast(symbolic_color_ptr))
    
    }
}



// MARK: - TableChild Record

/// The `TableChildProtocol` protocol exposes the methods and properties of an underlying `GtkTableChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TableChild`.
/// Alternatively, use `TableChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TableChildProtocol {
    /// Untyped pointer to the underlying `GtkTableChild` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTableChild` instance.
    var _ptr: UnsafeMutablePointer<GtkTableChild> { get }
}

/// The `TableChildRef` type acts as a lightweight Swift reference to an underlying `GtkTableChild` instance.
/// It exposes methods that can operate on this data type through `TableChildProtocol` conformance.
/// Use `TableChildRef` only as an `unowned` reference to an existing `GtkTableChild` instance.
///

public struct TableChildRef: TableChildProtocol {
    /// Untyped pointer to the underlying `GtkTableChild` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TableChildRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTableChild>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TableChildProtocol`
    init<T: TableChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TableChild` type acts as an owner of an underlying `GtkTableChild` instance.
/// It provides the methods that can operate on this data type through `TableChildProtocol` conformance.
/// Use `TableChild` as a strong reference or owner of a `GtkTableChild` instance.
///

open class TableChild: TableChildProtocol {
    /// Untyped pointer to the underlying `GtkTableChild` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TableChild` instance.
    public init(_ op: UnsafeMutablePointer<GtkTableChild>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TableChildProtocol`
    /// `GtkTableChild` does not allow reference counting.
    public convenience init<T: TableChildProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTableChild, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTableChild`.
    deinit {
        // no reference counting for GtkTableChild, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTableChild.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTableChild.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTableChild.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableChildProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTableChild>(opaquePointer))
    }



}

// MARK: - no TableChild properties

// MARK: - no signals


public extension TableChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTableChild` instance.
    var _ptr: UnsafeMutablePointer<GtkTableChild> { return ptr.assumingMemoryBound(to: GtkTableChild.self) }

}



