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

// MARK: - OrientableIface Record

/// The `OrientableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkOrientableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OrientableIface`.
/// Alternatively, use `OrientableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OrientableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkOrientableIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkOrientableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkOrientableIface> { get }
}

/// The `OrientableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkOrientableIface` instance.
/// It exposes methods that can operate on this data type through `OrientableIfaceProtocol` conformance.
/// Use `OrientableIfaceRef` only as an `unowned` reference to an existing `GtkOrientableIface` instance.
///

public struct OrientableIfaceRef: OrientableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkOrientableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OrientableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkOrientableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OrientableIfaceProtocol`
    init<T: OrientableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OrientableIface` type acts as an owner of an underlying `GtkOrientableIface` instance.
/// It provides the methods that can operate on this data type through `OrientableIfaceProtocol` conformance.
/// Use `OrientableIface` as a strong reference or owner of a `GtkOrientableIface` instance.
///

open class OrientableIface: OrientableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkOrientableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OrientableIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkOrientableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OrientableIfaceProtocol`
    /// `GtkOrientableIface` does not allow reference counting.
    public convenience init<T: OrientableIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkOrientableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkOrientableIface`.
    deinit {
        // no reference counting for GtkOrientableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkOrientableIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkOrientableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkOrientableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkOrientableIface>(opaquePointer))
    }



}

// MARK: - no OrientableIface properties

// MARK: - no signals


public extension OrientableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOrientableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkOrientableIface> { return ptr.assumingMemoryBound(to: GtkOrientableIface.self) }

}



// MARK: - OverlayClass Record

/// The `OverlayClassProtocol` protocol exposes the methods and properties of an underlying `GtkOverlayClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OverlayClass`.
/// Alternatively, use `OverlayClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OverlayClassProtocol {
    /// Untyped pointer to the underlying `GtkOverlayClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkOverlayClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOverlayClass> { get }
}

/// The `OverlayClassRef` type acts as a lightweight Swift reference to an underlying `GtkOverlayClass` instance.
/// It exposes methods that can operate on this data type through `OverlayClassProtocol` conformance.
/// Use `OverlayClassRef` only as an `unowned` reference to an existing `GtkOverlayClass` instance.
///

public struct OverlayClassRef: OverlayClassProtocol {
    /// Untyped pointer to the underlying `GtkOverlayClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OverlayClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkOverlayClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OverlayClassProtocol`
    init<T: OverlayClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OverlayClass` type acts as an owner of an underlying `GtkOverlayClass` instance.
/// It provides the methods that can operate on this data type through `OverlayClassProtocol` conformance.
/// Use `OverlayClass` as a strong reference or owner of a `GtkOverlayClass` instance.
///

open class OverlayClass: OverlayClassProtocol {
    /// Untyped pointer to the underlying `GtkOverlayClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OverlayClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkOverlayClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OverlayClassProtocol`
    /// `GtkOverlayClass` does not allow reference counting.
    public convenience init<T: OverlayClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkOverlayClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkOverlayClass`.
    deinit {
        // no reference counting for GtkOverlayClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkOverlayClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkOverlayClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkOverlayClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkOverlayClass>(opaquePointer))
    }



}

// MARK: - no OverlayClass properties

// MARK: - no signals


public extension OverlayClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlayClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOverlayClass> { return ptr.assumingMemoryBound(to: GtkOverlayClass.self) }

}



// MARK: - OverlayPrivate Record

/// The `OverlayPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkOverlayPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OverlayPrivate`.
/// Alternatively, use `OverlayPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OverlayPrivateProtocol {
    /// Untyped pointer to the underlying `GtkOverlayPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkOverlayPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkOverlayPrivate> { get }
}

/// The `OverlayPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkOverlayPrivate` instance.
/// It exposes methods that can operate on this data type through `OverlayPrivateProtocol` conformance.
/// Use `OverlayPrivateRef` only as an `unowned` reference to an existing `GtkOverlayPrivate` instance.
///

public struct OverlayPrivateRef: OverlayPrivateProtocol {
    /// Untyped pointer to the underlying `GtkOverlayPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OverlayPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkOverlayPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OverlayPrivateProtocol`
    init<T: OverlayPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OverlayPrivate` type acts as an owner of an underlying `GtkOverlayPrivate` instance.
/// It provides the methods that can operate on this data type through `OverlayPrivateProtocol` conformance.
/// Use `OverlayPrivate` as a strong reference or owner of a `GtkOverlayPrivate` instance.
///

open class OverlayPrivate: OverlayPrivateProtocol {
    /// Untyped pointer to the underlying `GtkOverlayPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OverlayPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkOverlayPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OverlayPrivateProtocol`
    /// `GtkOverlayPrivate` does not allow reference counting.
    public convenience init<T: OverlayPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkOverlayPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkOverlayPrivate`.
    deinit {
        // no reference counting for GtkOverlayPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkOverlayPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkOverlayPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkOverlayPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkOverlayPrivate>(opaquePointer))
    }



}

// MARK: - no OverlayPrivate properties

// MARK: - no signals


public extension OverlayPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlayPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkOverlayPrivate> { return ptr.assumingMemoryBound(to: GtkOverlayPrivate.self) }

}



// MARK: - PadActionEntry Record

/// The `PadActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkPadActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PadActionEntry`.
/// Alternatively, use `PadActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Struct defining a pad action entry.
public protocol PadActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkPadActionEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPadActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkPadActionEntry> { get }
}

/// The `PadActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkPadActionEntry` instance.
/// It exposes methods that can operate on this data type through `PadActionEntryProtocol` conformance.
/// Use `PadActionEntryRef` only as an `unowned` reference to an existing `GtkPadActionEntry` instance.
///
/// Struct defining a pad action entry.
public struct PadActionEntryRef: PadActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkPadActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PadActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPadActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PadActionEntryProtocol`
    init<T: PadActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PadActionEntry` type acts as an owner of an underlying `GtkPadActionEntry` instance.
/// It provides the methods that can operate on this data type through `PadActionEntryProtocol` conformance.
/// Use `PadActionEntry` as a strong reference or owner of a `GtkPadActionEntry` instance.
///
/// Struct defining a pad action entry.
open class PadActionEntry: PadActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkPadActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PadActionEntry` instance.
    public init(_ op: UnsafeMutablePointer<GtkPadActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PadActionEntryProtocol`
    /// `GtkPadActionEntry` does not allow reference counting.
    public convenience init<T: PadActionEntryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPadActionEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPadActionEntry`.
    deinit {
        // no reference counting for GtkPadActionEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPadActionEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPadActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPadActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadActionEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPadActionEntry>(opaquePointer))
    }



}

// MARK: - no PadActionEntry properties

// MARK: - no signals


public extension PadActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPadActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkPadActionEntry> { return ptr.assumingMemoryBound(to: GtkPadActionEntry.self) }

}



