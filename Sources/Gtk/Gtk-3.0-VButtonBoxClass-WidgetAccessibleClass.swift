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

// MARK: - VButtonBoxClass Record

/// The `VButtonBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkVButtonBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VButtonBoxClass`.
/// Alternatively, use `VButtonBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkVButtonBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVButtonBoxClass> { get }
}

/// The `VButtonBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkVButtonBoxClass` instance.
/// It exposes methods that can operate on this data type through `VButtonBoxClassProtocol` conformance.
/// Use `VButtonBoxClassRef` only as an `unowned` reference to an existing `GtkVButtonBoxClass` instance.
///

public struct VButtonBoxClassRef: VButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkVButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VButtonBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VButtonBoxClassProtocol`
    init<T: VButtonBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VButtonBoxClass` type acts as an owner of an underlying `GtkVButtonBoxClass` instance.
/// It provides the methods that can operate on this data type through `VButtonBoxClassProtocol` conformance.
/// Use `VButtonBoxClass` as a strong reference or owner of a `GtkVButtonBoxClass` instance.
///

open class VButtonBoxClass: VButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkVButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VButtonBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkVButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VButtonBoxClassProtocol`
    /// `GtkVButtonBoxClass` does not allow reference counting.
    public convenience init<T: VButtonBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkVButtonBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkVButtonBoxClass`.
    deinit {
        // no reference counting for GtkVButtonBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVButtonBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVButtonBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVButtonBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVButtonBoxClass>(opaquePointer))
    }



}

// MARK: - no VButtonBoxClass properties

// MARK: - no signals


public extension VButtonBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVButtonBoxClass> { return ptr.assumingMemoryBound(to: GtkVButtonBoxClass.self) }

}



// MARK: - VPanedClass Record

/// The `VPanedClassProtocol` protocol exposes the methods and properties of an underlying `GtkVPanedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VPanedClass`.
/// Alternatively, use `VPanedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VPanedClassProtocol {
    /// Untyped pointer to the underlying `GtkVPanedClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVPanedClass> { get }
}

/// The `VPanedClassRef` type acts as a lightweight Swift reference to an underlying `GtkVPanedClass` instance.
/// It exposes methods that can operate on this data type through `VPanedClassProtocol` conformance.
/// Use `VPanedClassRef` only as an `unowned` reference to an existing `GtkVPanedClass` instance.
///

public struct VPanedClassRef: VPanedClassProtocol {
    /// Untyped pointer to the underlying `GtkVPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VPanedClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVPanedClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VPanedClassProtocol`
    init<T: VPanedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VPanedClass` type acts as an owner of an underlying `GtkVPanedClass` instance.
/// It provides the methods that can operate on this data type through `VPanedClassProtocol` conformance.
/// Use `VPanedClass` as a strong reference or owner of a `GtkVPanedClass` instance.
///

open class VPanedClass: VPanedClassProtocol {
    /// Untyped pointer to the underlying `GtkVPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VPanedClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkVPanedClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VPanedClassProtocol`
    /// `GtkVPanedClass` does not allow reference counting.
    public convenience init<T: VPanedClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkVPanedClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkVPanedClass`.
    deinit {
        // no reference counting for GtkVPanedClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVPanedClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVPanedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVPanedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVPanedClass>(opaquePointer))
    }



}

// MARK: - no VPanedClass properties

// MARK: - no signals


public extension VPanedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVPanedClass> { return ptr.assumingMemoryBound(to: GtkVPanedClass.self) }

}



// MARK: - VScaleClass Record

/// The `VScaleClassProtocol` protocol exposes the methods and properties of an underlying `GtkVScaleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VScaleClass`.
/// Alternatively, use `VScaleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkVScaleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVScaleClass> { get }
}

/// The `VScaleClassRef` type acts as a lightweight Swift reference to an underlying `GtkVScaleClass` instance.
/// It exposes methods that can operate on this data type through `VScaleClassProtocol` conformance.
/// Use `VScaleClassRef` only as an `unowned` reference to an existing `GtkVScaleClass` instance.
///

public struct VScaleClassRef: VScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkVScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VScaleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVScaleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VScaleClassProtocol`
    init<T: VScaleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VScaleClass` type acts as an owner of an underlying `GtkVScaleClass` instance.
/// It provides the methods that can operate on this data type through `VScaleClassProtocol` conformance.
/// Use `VScaleClass` as a strong reference or owner of a `GtkVScaleClass` instance.
///

open class VScaleClass: VScaleClassProtocol {
    /// Untyped pointer to the underlying `GtkVScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VScaleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkVScaleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VScaleClassProtocol`
    /// `GtkVScaleClass` does not allow reference counting.
    public convenience init<T: VScaleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkVScaleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkVScaleClass`.
    deinit {
        // no reference counting for GtkVScaleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVScaleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVScaleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVScaleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVScaleClass>(opaquePointer))
    }



}

// MARK: - no VScaleClass properties

// MARK: - no signals


public extension VScaleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVScaleClass> { return ptr.assumingMemoryBound(to: GtkVScaleClass.self) }

}



// MARK: - VScrollbarClass Record

/// The `VScrollbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkVScrollbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VScrollbarClass`.
/// Alternatively, use `VScrollbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkVScrollbarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVScrollbarClass> { get }
}

/// The `VScrollbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkVScrollbarClass` instance.
/// It exposes methods that can operate on this data type through `VScrollbarClassProtocol` conformance.
/// Use `VScrollbarClassRef` only as an `unowned` reference to an existing `GtkVScrollbarClass` instance.
///

public struct VScrollbarClassRef: VScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkVScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VScrollbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VScrollbarClassProtocol`
    init<T: VScrollbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VScrollbarClass` type acts as an owner of an underlying `GtkVScrollbarClass` instance.
/// It provides the methods that can operate on this data type through `VScrollbarClassProtocol` conformance.
/// Use `VScrollbarClass` as a strong reference or owner of a `GtkVScrollbarClass` instance.
///

open class VScrollbarClass: VScrollbarClassProtocol {
    /// Untyped pointer to the underlying `GtkVScrollbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VScrollbarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkVScrollbarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VScrollbarClassProtocol`
    /// `GtkVScrollbarClass` does not allow reference counting.
    public convenience init<T: VScrollbarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkVScrollbarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkVScrollbarClass`.
    deinit {
        // no reference counting for GtkVScrollbarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVScrollbarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVScrollbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVScrollbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVScrollbarClass>(opaquePointer))
    }



}

// MARK: - no VScrollbarClass properties

// MARK: - no signals


public extension VScrollbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVScrollbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVScrollbarClass> { return ptr.assumingMemoryBound(to: GtkVScrollbarClass.self) }

}



// MARK: - VSeparatorClass Record

/// The `VSeparatorClassProtocol` protocol exposes the methods and properties of an underlying `GtkVSeparatorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VSeparatorClass`.
/// Alternatively, use `VSeparatorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VSeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkVSeparatorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVSeparatorClass> { get }
}

/// The `VSeparatorClassRef` type acts as a lightweight Swift reference to an underlying `GtkVSeparatorClass` instance.
/// It exposes methods that can operate on this data type through `VSeparatorClassProtocol` conformance.
/// Use `VSeparatorClassRef` only as an `unowned` reference to an existing `GtkVSeparatorClass` instance.
///

public struct VSeparatorClassRef: VSeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkVSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VSeparatorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VSeparatorClassProtocol`
    init<T: VSeparatorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VSeparatorClass` type acts as an owner of an underlying `GtkVSeparatorClass` instance.
/// It provides the methods that can operate on this data type through `VSeparatorClassProtocol` conformance.
/// Use `VSeparatorClass` as a strong reference or owner of a `GtkVSeparatorClass` instance.
///

open class VSeparatorClass: VSeparatorClassProtocol {
    /// Untyped pointer to the underlying `GtkVSeparatorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VSeparatorClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkVSeparatorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VSeparatorClassProtocol`
    /// `GtkVSeparatorClass` does not allow reference counting.
    public convenience init<T: VSeparatorClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkVSeparatorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkVSeparatorClass`.
    deinit {
        // no reference counting for GtkVSeparatorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVSeparatorClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVSeparatorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVSeparatorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVSeparatorClass>(opaquePointer))
    }



}

// MARK: - no VSeparatorClass properties

// MARK: - no signals


public extension VSeparatorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVSeparatorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVSeparatorClass> { return ptr.assumingMemoryBound(to: GtkVSeparatorClass.self) }

}



// MARK: - ViewportClass Record

/// The `ViewportClassProtocol` protocol exposes the methods and properties of an underlying `GtkViewportClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ViewportClass`.
/// Alternatively, use `ViewportClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ViewportClassProtocol {
    /// Untyped pointer to the underlying `GtkViewportClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkViewportClass` instance.
    var _ptr: UnsafeMutablePointer<GtkViewportClass> { get }
}

/// The `ViewportClassRef` type acts as a lightweight Swift reference to an underlying `GtkViewportClass` instance.
/// It exposes methods that can operate on this data type through `ViewportClassProtocol` conformance.
/// Use `ViewportClassRef` only as an `unowned` reference to an existing `GtkViewportClass` instance.
///

public struct ViewportClassRef: ViewportClassProtocol {
    /// Untyped pointer to the underlying `GtkViewportClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ViewportClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkViewportClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ViewportClassProtocol`
    init<T: ViewportClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ViewportClass` type acts as an owner of an underlying `GtkViewportClass` instance.
/// It provides the methods that can operate on this data type through `ViewportClassProtocol` conformance.
/// Use `ViewportClass` as a strong reference or owner of a `GtkViewportClass` instance.
///

open class ViewportClass: ViewportClassProtocol {
    /// Untyped pointer to the underlying `GtkViewportClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ViewportClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkViewportClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ViewportClassProtocol`
    /// `GtkViewportClass` does not allow reference counting.
    public convenience init<T: ViewportClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkViewportClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkViewportClass`.
    deinit {
        // no reference counting for GtkViewportClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkViewportClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkViewportClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkViewportClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkViewportClass>(opaquePointer))
    }



}

// MARK: - no ViewportClass properties

// MARK: - no signals


public extension ViewportClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkViewportClass` instance.
    var _ptr: UnsafeMutablePointer<GtkViewportClass> { return ptr.assumingMemoryBound(to: GtkViewportClass.self) }

}



// MARK: - ViewportPrivate Record

/// The `ViewportPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkViewportPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ViewportPrivate`.
/// Alternatively, use `ViewportPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ViewportPrivateProtocol {
    /// Untyped pointer to the underlying `GtkViewportPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkViewportPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkViewportPrivate> { get }
}

/// The `ViewportPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkViewportPrivate` instance.
/// It exposes methods that can operate on this data type through `ViewportPrivateProtocol` conformance.
/// Use `ViewportPrivateRef` only as an `unowned` reference to an existing `GtkViewportPrivate` instance.
///

public struct ViewportPrivateRef: ViewportPrivateProtocol {
    /// Untyped pointer to the underlying `GtkViewportPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ViewportPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkViewportPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ViewportPrivateProtocol`
    init<T: ViewportPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ViewportPrivate` type acts as an owner of an underlying `GtkViewportPrivate` instance.
/// It provides the methods that can operate on this data type through `ViewportPrivateProtocol` conformance.
/// Use `ViewportPrivate` as a strong reference or owner of a `GtkViewportPrivate` instance.
///

open class ViewportPrivate: ViewportPrivateProtocol {
    /// Untyped pointer to the underlying `GtkViewportPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ViewportPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkViewportPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ViewportPrivateProtocol`
    /// `GtkViewportPrivate` does not allow reference counting.
    public convenience init<T: ViewportPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkViewportPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkViewportPrivate`.
    deinit {
        // no reference counting for GtkViewportPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkViewportPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkViewportPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkViewportPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkViewportPrivate>(opaquePointer))
    }



}

// MARK: - no ViewportPrivate properties

// MARK: - no signals


public extension ViewportPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkViewportPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkViewportPrivate> { return ptr.assumingMemoryBound(to: GtkViewportPrivate.self) }

}



// MARK: - VolumeButtonClass Record

/// The `VolumeButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkVolumeButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeButtonClass`.
/// Alternatively, use `VolumeButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VolumeButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkVolumeButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVolumeButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVolumeButtonClass> { get }
}

/// The `VolumeButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkVolumeButtonClass` instance.
/// It exposes methods that can operate on this data type through `VolumeButtonClassProtocol` conformance.
/// Use `VolumeButtonClassRef` only as an `unowned` reference to an existing `GtkVolumeButtonClass` instance.
///

public struct VolumeButtonClassRef: VolumeButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkVolumeButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VolumeButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVolumeButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VolumeButtonClassProtocol`
    init<T: VolumeButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VolumeButtonClass` type acts as an owner of an underlying `GtkVolumeButtonClass` instance.
/// It provides the methods that can operate on this data type through `VolumeButtonClassProtocol` conformance.
/// Use `VolumeButtonClass` as a strong reference or owner of a `GtkVolumeButtonClass` instance.
///

open class VolumeButtonClass: VolumeButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkVolumeButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VolumeButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkVolumeButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VolumeButtonClassProtocol`
    /// `GtkVolumeButtonClass` does not allow reference counting.
    public convenience init<T: VolumeButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkVolumeButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkVolumeButtonClass`.
    deinit {
        // no reference counting for GtkVolumeButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVolumeButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVolumeButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVolumeButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVolumeButtonClass>(opaquePointer))
    }



}

// MARK: - no VolumeButtonClass properties

// MARK: - no signals


public extension VolumeButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVolumeButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVolumeButtonClass> { return ptr.assumingMemoryBound(to: GtkVolumeButtonClass.self) }

}



// MARK: - WidgetAccessibleClass Record

/// The `WidgetAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetAccessibleClass`.
/// Alternatively, use `WidgetAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkWidgetAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWidgetAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetAccessibleClass> { get }
}

/// The `WidgetAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `WidgetAccessibleClassProtocol` conformance.
/// Use `WidgetAccessibleClassRef` only as an `unowned` reference to an existing `GtkWidgetAccessibleClass` instance.
///

public struct WidgetAccessibleClassRef: WidgetAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkWidgetAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WidgetAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWidgetAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WidgetAccessibleClassProtocol`
    init<T: WidgetAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WidgetAccessibleClass` type acts as an owner of an underlying `GtkWidgetAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `WidgetAccessibleClassProtocol` conformance.
/// Use `WidgetAccessibleClass` as a strong reference or owner of a `GtkWidgetAccessibleClass` instance.
///

open class WidgetAccessibleClass: WidgetAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkWidgetAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WidgetAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkWidgetAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WidgetAccessibleClassProtocol`
    /// `GtkWidgetAccessibleClass` does not allow reference counting.
    public convenience init<T: WidgetAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWidgetAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWidgetAccessibleClass`.
    deinit {
        // no reference counting for GtkWidgetAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWidgetAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWidgetAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWidgetAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWidgetAccessibleClass>(opaquePointer))
    }



}

// MARK: - no WidgetAccessibleClass properties

// MARK: - no signals


public extension WidgetAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetAccessibleClass> { return ptr.assumingMemoryBound(to: GtkWidgetAccessibleClass.self) }

}



