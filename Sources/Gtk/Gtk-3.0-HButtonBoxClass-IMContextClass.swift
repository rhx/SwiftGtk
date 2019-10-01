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

// MARK: - HButtonBoxClass Record

/// The `HButtonBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkHButtonBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HButtonBoxClass`.
/// Alternatively, use `HButtonBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHButtonBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHButtonBoxClass> { get }
}

/// The `HButtonBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkHButtonBoxClass` instance.
/// It exposes methods that can operate on this data type through `HButtonBoxClassProtocol` conformance.
/// Use `HButtonBoxClassRef` only as an `unowned` reference to an existing `GtkHButtonBoxClass` instance.
///

public struct HButtonBoxClassRef: HButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HButtonBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HButtonBoxClassProtocol`
    init<T: HButtonBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HButtonBoxClass` type acts as an owner of an underlying `GtkHButtonBoxClass` instance.
/// It provides the methods that can operate on this data type through `HButtonBoxClassProtocol` conformance.
/// Use `HButtonBoxClass` as a strong reference or owner of a `GtkHButtonBoxClass` instance.
///

open class HButtonBoxClass: HButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HButtonBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HButtonBoxClassProtocol`
    /// `GtkHButtonBoxClass` does not allow reference counting.
    public convenience init<T: HButtonBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHButtonBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHButtonBoxClass`.
    deinit {
        // no reference counting for GtkHButtonBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHButtonBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHButtonBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHButtonBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHButtonBoxClass>(opaquePointer))
    }



}

// MARK: - no HButtonBoxClass properties

// MARK: - no signals


public extension HButtonBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHButtonBoxClass> { return ptr.assumingMemoryBound(to: GtkHButtonBoxClass.self) }

}



// MARK: - HPanedClass Record

/// The `HPanedClassProtocol` protocol exposes the methods and properties of an underlying `GtkHPanedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HPanedClass`.
/// Alternatively, use `HPanedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HPanedClassProtocol {
    /// Untyped pointer to the underlying `GtkHPanedClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHPanedClass> { get }
}

/// The `HPanedClassRef` type acts as a lightweight Swift reference to an underlying `GtkHPanedClass` instance.
/// It exposes methods that can operate on this data type through `HPanedClassProtocol` conformance.
/// Use `HPanedClassRef` only as an `unowned` reference to an existing `GtkHPanedClass` instance.
///

public struct HPanedClassRef: HPanedClassProtocol {
    /// Untyped pointer to the underlying `GtkHPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HPanedClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHPanedClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HPanedClassProtocol`
    init<T: HPanedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HPanedClass` type acts as an owner of an underlying `GtkHPanedClass` instance.
/// It provides the methods that can operate on this data type through `HPanedClassProtocol` conformance.
/// Use `HPanedClass` as a strong reference or owner of a `GtkHPanedClass` instance.
///

open class HPanedClass: HPanedClassProtocol {
    /// Untyped pointer to the underlying `GtkHPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HPanedClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHPanedClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HPanedClassProtocol`
    /// `GtkHPanedClass` does not allow reference counting.
    public convenience init<T: HPanedClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHPanedClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHPanedClass`.
    deinit {
        // no reference counting for GtkHPanedClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHPanedClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHPanedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHPanedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHPanedClass>(opaquePointer))
    }



}

// MARK: - no HPanedClass properties

// MARK: - no signals


public extension HPanedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHPanedClass> { return ptr.assumingMemoryBound(to: GtkHPanedClass.self) }

}



// MARK: - HSVClass Record

/// The `HSVClassProtocol` protocol exposes the methods and properties of an underlying `GtkHSVClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HSVClass`.
/// Alternatively, use `HSVClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HSVClassProtocol {
    /// Untyped pointer to the underlying `GtkHSVClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHSVClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHSVClass> { get }
}

/// The `HSVClassRef` type acts as a lightweight Swift reference to an underlying `GtkHSVClass` instance.
/// It exposes methods that can operate on this data type through `HSVClassProtocol` conformance.
/// Use `HSVClassRef` only as an `unowned` reference to an existing `GtkHSVClass` instance.
///

public struct HSVClassRef: HSVClassProtocol {
    /// Untyped pointer to the underlying `GtkHSVClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HSVClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHSVClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HSVClassProtocol`
    init<T: HSVClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HSVClass` type acts as an owner of an underlying `GtkHSVClass` instance.
/// It provides the methods that can operate on this data type through `HSVClassProtocol` conformance.
/// Use `HSVClass` as a strong reference or owner of a `GtkHSVClass` instance.
///

open class HSVClass: HSVClassProtocol {
    /// Untyped pointer to the underlying `GtkHSVClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HSVClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHSVClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HSVClassProtocol`
    /// `GtkHSVClass` does not allow reference counting.
    public convenience init<T: HSVClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHSVClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHSVClass`.
    deinit {
        // no reference counting for GtkHSVClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHSVClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHSVClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHSVClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHSVClass>(opaquePointer))
    }



}

// MARK: - no HSVClass properties

// MARK: - no signals


public extension HSVClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHSVClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHSVClass> { return ptr.assumingMemoryBound(to: GtkHSVClass.self) }

}



// MARK: - HSVPrivate Record

/// The `HSVPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkHSVPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HSVPrivate`.
/// Alternatively, use `HSVPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HSVPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHSVPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHSVPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHSVPrivate> { get }
}

/// The `HSVPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkHSVPrivate` instance.
/// It exposes methods that can operate on this data type through `HSVPrivateProtocol` conformance.
/// Use `HSVPrivateRef` only as an `unowned` reference to an existing `GtkHSVPrivate` instance.
///

public struct HSVPrivateRef: HSVPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHSVPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HSVPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHSVPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HSVPrivateProtocol`
    init<T: HSVPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HSVPrivate` type acts as an owner of an underlying `GtkHSVPrivate` instance.
/// It provides the methods that can operate on this data type through `HSVPrivateProtocol` conformance.
/// Use `HSVPrivate` as a strong reference or owner of a `GtkHSVPrivate` instance.
///

open class HSVPrivate: HSVPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHSVPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HSVPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkHSVPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HSVPrivateProtocol`
    /// `GtkHSVPrivate` does not allow reference counting.
    public convenience init<T: HSVPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHSVPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHSVPrivate`.
    deinit {
        // no reference counting for GtkHSVPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHSVPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHSVPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHSVPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHSVPrivate>(opaquePointer))
    }



}

// MARK: - no HSVPrivate properties

// MARK: - no signals


public extension HSVPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHSVPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHSVPrivate> { return ptr.assumingMemoryBound(to: GtkHSVPrivate.self) }

}



// MARK: - HScaleClass Record

/// The `HScaleClassProtocol` protocol exposes the methods and properties of an underlying `GtkHScaleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HScaleClass`.
/// Alternatively, use `HScaleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkHScaleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHScaleClass> { get }
}

/// The `HScaleClassRef` type acts as a lightweight Swift reference to an underlying `GtkHScaleClass` instance.
/// It exposes methods that can operate on this data type through `HScaleClassProtocol` conformance.
/// Use `HScaleClassRef` only as an `unowned` reference to an existing `GtkHScaleClass` instance.
///

public struct HScaleClassRef: HScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkHScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HScaleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHScaleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HScaleClassProtocol`
    init<T: HScaleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HScaleClass` type acts as an owner of an underlying `GtkHScaleClass` instance.
/// It provides the methods that can operate on this data type through `HScaleClassProtocol` conformance.
/// Use `HScaleClass` as a strong reference or owner of a `GtkHScaleClass` instance.
///

open class HScaleClass: HScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkHScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HScaleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHScaleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HScaleClassProtocol`
    /// `GtkHScaleClass` does not allow reference counting.
    public convenience init<T: HScaleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHScaleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHScaleClass`.
    deinit {
        // no reference counting for GtkHScaleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHScaleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHScaleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHScaleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHScaleClass>(opaquePointer))
    }



}

// MARK: - no HScaleClass properties

// MARK: - no signals


public extension HScaleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHScaleClass> { return ptr.assumingMemoryBound(to: GtkHScaleClass.self) }

}



// MARK: - HScrollbarClass Record

/// The `HScrollbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkHScrollbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HScrollbarClass`.
/// Alternatively, use `HScrollbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkHScrollbarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHScrollbarClass> { get }
}

/// The `HScrollbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkHScrollbarClass` instance.
/// It exposes methods that can operate on this data type through `HScrollbarClassProtocol` conformance.
/// Use `HScrollbarClassRef` only as an `unowned` reference to an existing `GtkHScrollbarClass` instance.
///

public struct HScrollbarClassRef: HScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkHScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HScrollbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HScrollbarClassProtocol`
    init<T: HScrollbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HScrollbarClass` type acts as an owner of an underlying `GtkHScrollbarClass` instance.
/// It provides the methods that can operate on this data type through `HScrollbarClassProtocol` conformance.
/// Use `HScrollbarClass` as a strong reference or owner of a `GtkHScrollbarClass` instance.
///

open class HScrollbarClass: HScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkHScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HScrollbarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HScrollbarClassProtocol`
    /// `GtkHScrollbarClass` does not allow reference counting.
    public convenience init<T: HScrollbarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHScrollbarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHScrollbarClass`.
    deinit {
        // no reference counting for GtkHScrollbarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHScrollbarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHScrollbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHScrollbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHScrollbarClass>(opaquePointer))
    }



}

// MARK: - no HScrollbarClass properties

// MARK: - no signals


public extension HScrollbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHScrollbarClass> { return ptr.assumingMemoryBound(to: GtkHScrollbarClass.self) }

}



// MARK: - HSeparatorClass Record

/// The `HSeparatorClassProtocol` protocol exposes the methods and properties of an underlying `GtkHSeparatorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HSeparatorClass`.
/// Alternatively, use `HSeparatorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HSeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkHSeparatorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHSeparatorClass> { get }
}

/// The `HSeparatorClassRef` type acts as a lightweight Swift reference to an underlying `GtkHSeparatorClass` instance.
/// It exposes methods that can operate on this data type through `HSeparatorClassProtocol` conformance.
/// Use `HSeparatorClassRef` only as an `unowned` reference to an existing `GtkHSeparatorClass` instance.
///

public struct HSeparatorClassRef: HSeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkHSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HSeparatorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HSeparatorClassProtocol`
    init<T: HSeparatorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HSeparatorClass` type acts as an owner of an underlying `GtkHSeparatorClass` instance.
/// It provides the methods that can operate on this data type through `HSeparatorClassProtocol` conformance.
/// Use `HSeparatorClass` as a strong reference or owner of a `GtkHSeparatorClass` instance.
///

open class HSeparatorClass: HSeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkHSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HSeparatorClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HSeparatorClassProtocol`
    /// `GtkHSeparatorClass` does not allow reference counting.
    public convenience init<T: HSeparatorClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHSeparatorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHSeparatorClass`.
    deinit {
        // no reference counting for GtkHSeparatorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHSeparatorClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHSeparatorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHSeparatorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHSeparatorClass>(opaquePointer))
    }



}

// MARK: - no HSeparatorClass properties

// MARK: - no signals


public extension HSeparatorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHSeparatorClass> { return ptr.assumingMemoryBound(to: GtkHSeparatorClass.self) }

}



// MARK: - HandleBoxClass Record

/// The `HandleBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkHandleBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HandleBoxClass`.
/// Alternatively, use `HandleBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HandleBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHandleBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHandleBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHandleBoxClass> { get }
}

/// The `HandleBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkHandleBoxClass` instance.
/// It exposes methods that can operate on this data type through `HandleBoxClassProtocol` conformance.
/// Use `HandleBoxClassRef` only as an `unowned` reference to an existing `GtkHandleBoxClass` instance.
///

public struct HandleBoxClassRef: HandleBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHandleBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HandleBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHandleBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HandleBoxClassProtocol`
    init<T: HandleBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HandleBoxClass` type acts as an owner of an underlying `GtkHandleBoxClass` instance.
/// It provides the methods that can operate on this data type through `HandleBoxClassProtocol` conformance.
/// Use `HandleBoxClass` as a strong reference or owner of a `GtkHandleBoxClass` instance.
///

open class HandleBoxClass: HandleBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHandleBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HandleBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHandleBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HandleBoxClassProtocol`
    /// `GtkHandleBoxClass` does not allow reference counting.
    public convenience init<T: HandleBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHandleBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHandleBoxClass`.
    deinit {
        // no reference counting for GtkHandleBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHandleBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHandleBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHandleBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHandleBoxClass>(opaquePointer))
    }



}

// MARK: - no HandleBoxClass properties

// MARK: - no signals


public extension HandleBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHandleBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHandleBoxClass> { return ptr.assumingMemoryBound(to: GtkHandleBoxClass.self) }

}



// MARK: - HandleBoxPrivate Record

/// The `HandleBoxPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkHandleBoxPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HandleBoxPrivate`.
/// Alternatively, use `HandleBoxPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HandleBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHandleBoxPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHandleBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHandleBoxPrivate> { get }
}

/// The `HandleBoxPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkHandleBoxPrivate` instance.
/// It exposes methods that can operate on this data type through `HandleBoxPrivateProtocol` conformance.
/// Use `HandleBoxPrivateRef` only as an `unowned` reference to an existing `GtkHandleBoxPrivate` instance.
///

public struct HandleBoxPrivateRef: HandleBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHandleBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HandleBoxPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHandleBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HandleBoxPrivateProtocol`
    init<T: HandleBoxPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HandleBoxPrivate` type acts as an owner of an underlying `GtkHandleBoxPrivate` instance.
/// It provides the methods that can operate on this data type through `HandleBoxPrivateProtocol` conformance.
/// Use `HandleBoxPrivate` as a strong reference or owner of a `GtkHandleBoxPrivate` instance.
///

open class HandleBoxPrivate: HandleBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHandleBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HandleBoxPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkHandleBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HandleBoxPrivateProtocol`
    /// `GtkHandleBoxPrivate` does not allow reference counting.
    public convenience init<T: HandleBoxPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHandleBoxPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHandleBoxPrivate`.
    deinit {
        // no reference counting for GtkHandleBoxPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHandleBoxPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHandleBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHandleBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHandleBoxPrivate>(opaquePointer))
    }



}

// MARK: - no HandleBoxPrivate properties

// MARK: - no signals


public extension HandleBoxPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHandleBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHandleBoxPrivate> { return ptr.assumingMemoryBound(to: GtkHandleBoxPrivate.self) }

}



// MARK: - HeaderBarAccessibleClass Record

/// The `HeaderBarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBarAccessibleClass`.
/// Alternatively, use `HeaderBarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HeaderBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHeaderBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarAccessibleClass> { get }
}

/// The `HeaderBarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `HeaderBarAccessibleClassProtocol` conformance.
/// Use `HeaderBarAccessibleClassRef` only as an `unowned` reference to an existing `GtkHeaderBarAccessibleClass` instance.
///

public struct HeaderBarAccessibleClassRef: HeaderBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HeaderBarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHeaderBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HeaderBarAccessibleClassProtocol`
    init<T: HeaderBarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HeaderBarAccessibleClass` type acts as an owner of an underlying `GtkHeaderBarAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `HeaderBarAccessibleClassProtocol` conformance.
/// Use `HeaderBarAccessibleClass` as a strong reference or owner of a `GtkHeaderBarAccessibleClass` instance.
///

open class HeaderBarAccessibleClass: HeaderBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HeaderBarAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHeaderBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HeaderBarAccessibleClassProtocol`
    /// `GtkHeaderBarAccessibleClass` does not allow reference counting.
    public convenience init<T: HeaderBarAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHeaderBarAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHeaderBarAccessibleClass`.
    deinit {
        // no reference counting for GtkHeaderBarAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHeaderBarAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHeaderBarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHeaderBarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHeaderBarAccessibleClass>(opaquePointer))
    }



}

// MARK: - no HeaderBarAccessibleClass properties

// MARK: - no signals


public extension HeaderBarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarAccessibleClass> { return ptr.assumingMemoryBound(to: GtkHeaderBarAccessibleClass.self) }

}



// MARK: - HeaderBarAccessiblePrivate Record

/// The `HeaderBarAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBarAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBarAccessiblePrivate`.
/// Alternatively, use `HeaderBarAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HeaderBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHeaderBarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarAccessiblePrivate> { get }
}

/// The `HeaderBarAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBarAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `HeaderBarAccessiblePrivateProtocol` conformance.
/// Use `HeaderBarAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkHeaderBarAccessiblePrivate` instance.
///

public struct HeaderBarAccessiblePrivateRef: HeaderBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HeaderBarAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHeaderBarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HeaderBarAccessiblePrivateProtocol`
    init<T: HeaderBarAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HeaderBarAccessiblePrivate` type acts as an owner of an underlying `GtkHeaderBarAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `HeaderBarAccessiblePrivateProtocol` conformance.
/// Use `HeaderBarAccessiblePrivate` as a strong reference or owner of a `GtkHeaderBarAccessiblePrivate` instance.
///

open class HeaderBarAccessiblePrivate: HeaderBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HeaderBarAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkHeaderBarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HeaderBarAccessiblePrivateProtocol`
    /// `GtkHeaderBarAccessiblePrivate` does not allow reference counting.
    public convenience init<T: HeaderBarAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHeaderBarAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHeaderBarAccessiblePrivate`.
    deinit {
        // no reference counting for GtkHeaderBarAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHeaderBarAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHeaderBarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHeaderBarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHeaderBarAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no HeaderBarAccessiblePrivate properties

// MARK: - no signals


public extension HeaderBarAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkHeaderBarAccessiblePrivate.self) }

}



// MARK: - HeaderBarClass Record

/// The `HeaderBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBarClass`.
/// Alternatively, use `HeaderBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HeaderBarClassProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHeaderBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarClass> { get }
}

/// The `HeaderBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBarClass` instance.
/// It exposes methods that can operate on this data type through `HeaderBarClassProtocol` conformance.
/// Use `HeaderBarClassRef` only as an `unowned` reference to an existing `GtkHeaderBarClass` instance.
///

public struct HeaderBarClassRef: HeaderBarClassProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HeaderBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHeaderBarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HeaderBarClassProtocol`
    init<T: HeaderBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HeaderBarClass` type acts as an owner of an underlying `GtkHeaderBarClass` instance.
/// It provides the methods that can operate on this data type through `HeaderBarClassProtocol` conformance.
/// Use `HeaderBarClass` as a strong reference or owner of a `GtkHeaderBarClass` instance.
///

open class HeaderBarClass: HeaderBarClassProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HeaderBarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHeaderBarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HeaderBarClassProtocol`
    /// `GtkHeaderBarClass` does not allow reference counting.
    public convenience init<T: HeaderBarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHeaderBarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHeaderBarClass`.
    deinit {
        // no reference counting for GtkHeaderBarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHeaderBarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHeaderBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHeaderBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHeaderBarClass>(opaquePointer))
    }



}

// MARK: - no HeaderBarClass properties

// MARK: - no signals


public extension HeaderBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarClass> { return ptr.assumingMemoryBound(to: GtkHeaderBarClass.self) }

}



// MARK: - HeaderBarPrivate Record

/// The `HeaderBarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBarPrivate`.
/// Alternatively, use `HeaderBarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HeaderBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHeaderBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarPrivate> { get }
}

/// The `HeaderBarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBarPrivate` instance.
/// It exposes methods that can operate on this data type through `HeaderBarPrivateProtocol` conformance.
/// Use `HeaderBarPrivateRef` only as an `unowned` reference to an existing `GtkHeaderBarPrivate` instance.
///

public struct HeaderBarPrivateRef: HeaderBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HeaderBarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHeaderBarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HeaderBarPrivateProtocol`
    init<T: HeaderBarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HeaderBarPrivate` type acts as an owner of an underlying `GtkHeaderBarPrivate` instance.
/// It provides the methods that can operate on this data type through `HeaderBarPrivateProtocol` conformance.
/// Use `HeaderBarPrivate` as a strong reference or owner of a `GtkHeaderBarPrivate` instance.
///

open class HeaderBarPrivate: HeaderBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkHeaderBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HeaderBarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkHeaderBarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HeaderBarPrivateProtocol`
    /// `GtkHeaderBarPrivate` does not allow reference counting.
    public convenience init<T: HeaderBarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHeaderBarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHeaderBarPrivate`.
    deinit {
        // no reference counting for GtkHeaderBarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHeaderBarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHeaderBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHeaderBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHeaderBarPrivate>(opaquePointer))
    }



}

// MARK: - no HeaderBarPrivate properties

// MARK: - no signals


public extension HeaderBarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkHeaderBarPrivate> { return ptr.assumingMemoryBound(to: GtkHeaderBarPrivate.self) }

}



// MARK: - IMContextClass Record

/// The `IMContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextClass`.
/// Alternatively, use `IMContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMContextClassProtocol {
    /// Untyped pointer to the underlying `GtkIMContextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIMContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextClass> { get }
}

/// The `IMContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextClass` instance.
/// It exposes methods that can operate on this data type through `IMContextClassProtocol` conformance.
/// Use `IMContextClassRef` only as an `unowned` reference to an existing `GtkIMContextClass` instance.
///

public struct IMContextClassRef: IMContextClassProtocol {
    /// Untyped pointer to the underlying `GtkIMContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IMContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIMContextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IMContextClassProtocol`
    init<T: IMContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMContextClass` type acts as an owner of an underlying `GtkIMContextClass` instance.
/// It provides the methods that can operate on this data type through `IMContextClassProtocol` conformance.
/// Use `IMContextClass` as a strong reference or owner of a `GtkIMContextClass` instance.
///

open class IMContextClass: IMContextClassProtocol {
    /// Untyped pointer to the underlying `GtkIMContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IMContextClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIMContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IMContextClassProtocol`
    /// `GtkIMContextClass` does not allow reference counting.
    public convenience init<T: IMContextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIMContextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIMContextClass`.
    deinit {
        // no reference counting for GtkIMContextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIMContextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIMContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIMContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIMContextClass>(opaquePointer))
    }



}

// MARK: - no IMContextClass properties

// MARK: - no signals


public extension IMContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextClass> { return ptr.assumingMemoryBound(to: GtkIMContextClass.self) }

}



