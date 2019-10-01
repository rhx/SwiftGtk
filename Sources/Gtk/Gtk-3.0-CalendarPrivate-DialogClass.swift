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

// MARK: - CalendarPrivate Record

/// The `CalendarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCalendarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CalendarPrivate`.
/// Alternatively, use `CalendarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CalendarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCalendarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCalendarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCalendarPrivate> { get }
}

/// The `CalendarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCalendarPrivate` instance.
/// It exposes methods that can operate on this data type through `CalendarPrivateProtocol` conformance.
/// Use `CalendarPrivateRef` only as an `unowned` reference to an existing `GtkCalendarPrivate` instance.
///

public struct CalendarPrivateRef: CalendarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCalendarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CalendarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCalendarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CalendarPrivateProtocol`
    init<T: CalendarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CalendarPrivate` type acts as an owner of an underlying `GtkCalendarPrivate` instance.
/// It provides the methods that can operate on this data type through `CalendarPrivateProtocol` conformance.
/// Use `CalendarPrivate` as a strong reference or owner of a `GtkCalendarPrivate` instance.
///

open class CalendarPrivate: CalendarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCalendarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CalendarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCalendarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CalendarPrivateProtocol`
    /// `GtkCalendarPrivate` does not allow reference counting.
    public convenience init<T: CalendarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCalendarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCalendarPrivate`.
    deinit {
        // no reference counting for GtkCalendarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCalendarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCalendarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCalendarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCalendarPrivate>(opaquePointer))
    }



}

// MARK: - no CalendarPrivate properties

// MARK: - no signals


public extension CalendarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCalendarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCalendarPrivate> { return ptr.assumingMemoryBound(to: GtkCalendarPrivate.self) }

}



// MARK: - CellAccessibleClass Record

/// The `CellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAccessibleClass`.
/// Alternatively, use `CellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessibleClass> { get }
}

/// The `CellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `CellAccessibleClassProtocol` conformance.
/// Use `CellAccessibleClassRef` only as an `unowned` reference to an existing `GtkCellAccessibleClass` instance.
///

public struct CellAccessibleClassRef: CellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAccessibleClassProtocol`
    init<T: CellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAccessibleClass` type acts as an owner of an underlying `GtkCellAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `CellAccessibleClassProtocol` conformance.
/// Use `CellAccessibleClass` as a strong reference or owner of a `GtkCellAccessibleClass` instance.
///

open class CellAccessibleClass: CellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAccessibleClassProtocol`
    /// `GtkCellAccessibleClass` does not allow reference counting.
    public convenience init<T: CellAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAccessibleClass`.
    deinit {
        // no reference counting for GtkCellAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAccessibleClass>(opaquePointer))
    }



}

// MARK: - no CellAccessibleClass properties

// MARK: - no signals


public extension CellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessibleClass> { return ptr.assumingMemoryBound(to: GtkCellAccessibleClass.self) }

}



// MARK: - CellAccessibleParentIface Record

/// The `CellAccessibleParentIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkCellAccessibleParentIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAccessibleParentIface`.
/// Alternatively, use `CellAccessibleParentIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAccessibleParentIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessibleParentIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAccessibleParentIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessibleParentIface> { get }
}

/// The `CellAccessibleParentIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkCellAccessibleParentIface` instance.
/// It exposes methods that can operate on this data type through `CellAccessibleParentIfaceProtocol` conformance.
/// Use `CellAccessibleParentIfaceRef` only as an `unowned` reference to an existing `GtkCellAccessibleParentIface` instance.
///

public struct CellAccessibleParentIfaceRef: CellAccessibleParentIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessibleParentIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAccessibleParentIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAccessibleParentIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAccessibleParentIfaceProtocol`
    init<T: CellAccessibleParentIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAccessibleParentIface` type acts as an owner of an underlying `GtkCellAccessibleParentIface` instance.
/// It provides the methods that can operate on this data type through `CellAccessibleParentIfaceProtocol` conformance.
/// Use `CellAccessibleParentIface` as a strong reference or owner of a `GtkCellAccessibleParentIface` instance.
///

open class CellAccessibleParentIface: CellAccessibleParentIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessibleParentIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAccessibleParentIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAccessibleParentIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAccessibleParentIfaceProtocol`
    /// `GtkCellAccessibleParentIface` does not allow reference counting.
    public convenience init<T: CellAccessibleParentIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAccessibleParentIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAccessibleParentIface`.
    deinit {
        // no reference counting for GtkCellAccessibleParentIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAccessibleParentIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAccessibleParentIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAccessibleParentIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAccessibleParentIface>(opaquePointer))
    }



}

// MARK: - no CellAccessibleParentIface properties

// MARK: - no signals


public extension CellAccessibleParentIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAccessibleParentIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessibleParentIface> { return ptr.assumingMemoryBound(to: GtkCellAccessibleParentIface.self) }

}



// MARK: - CellAccessiblePrivate Record

/// The `CellAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAccessiblePrivate`.
/// Alternatively, use `CellAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessiblePrivate> { get }
}

/// The `CellAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `CellAccessiblePrivateProtocol` conformance.
/// Use `CellAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkCellAccessiblePrivate` instance.
///

public struct CellAccessiblePrivateRef: CellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAccessiblePrivateProtocol`
    init<T: CellAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAccessiblePrivate` type acts as an owner of an underlying `GtkCellAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `CellAccessiblePrivateProtocol` conformance.
/// Use `CellAccessiblePrivate` as a strong reference or owner of a `GtkCellAccessiblePrivate` instance.
///

open class CellAccessiblePrivate: CellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAccessiblePrivateProtocol`
    /// `GtkCellAccessiblePrivate` does not allow reference counting.
    public convenience init<T: CellAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAccessiblePrivate`.
    deinit {
        // no reference counting for GtkCellAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no CellAccessiblePrivate properties

// MARK: - no signals


public extension CellAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkCellAccessiblePrivate.self) }

}



// MARK: - CellAreaBoxClass Record

/// The `CellAreaBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaBoxClass`.
/// Alternatively, use `CellAreaBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAreaBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaBoxClass> { get }
}

/// The `CellAreaBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaBoxClass` instance.
/// It exposes methods that can operate on this data type through `CellAreaBoxClassProtocol` conformance.
/// Use `CellAreaBoxClassRef` only as an `unowned` reference to an existing `GtkCellAreaBoxClass` instance.
///

public struct CellAreaBoxClassRef: CellAreaBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAreaBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAreaBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAreaBoxClassProtocol`
    init<T: CellAreaBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAreaBoxClass` type acts as an owner of an underlying `GtkCellAreaBoxClass` instance.
/// It provides the methods that can operate on this data type through `CellAreaBoxClassProtocol` conformance.
/// Use `CellAreaBoxClass` as a strong reference or owner of a `GtkCellAreaBoxClass` instance.
///

open class CellAreaBoxClass: CellAreaBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAreaBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAreaBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAreaBoxClassProtocol`
    /// `GtkCellAreaBoxClass` does not allow reference counting.
    public convenience init<T: CellAreaBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAreaBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAreaBoxClass`.
    deinit {
        // no reference counting for GtkCellAreaBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAreaBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAreaBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAreaBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAreaBoxClass>(opaquePointer))
    }



}

// MARK: - no CellAreaBoxClass properties

// MARK: - no signals


public extension CellAreaBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaBoxClass> { return ptr.assumingMemoryBound(to: GtkCellAreaBoxClass.self) }

}



// MARK: - CellAreaBoxPrivate Record

/// The `CellAreaBoxPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaBoxPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaBoxPrivate`.
/// Alternatively, use `CellAreaBoxPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaBoxPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAreaBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaBoxPrivate> { get }
}

/// The `CellAreaBoxPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaBoxPrivate` instance.
/// It exposes methods that can operate on this data type through `CellAreaBoxPrivateProtocol` conformance.
/// Use `CellAreaBoxPrivateRef` only as an `unowned` reference to an existing `GtkCellAreaBoxPrivate` instance.
///

public struct CellAreaBoxPrivateRef: CellAreaBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAreaBoxPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAreaBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAreaBoxPrivateProtocol`
    init<T: CellAreaBoxPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAreaBoxPrivate` type acts as an owner of an underlying `GtkCellAreaBoxPrivate` instance.
/// It provides the methods that can operate on this data type through `CellAreaBoxPrivateProtocol` conformance.
/// Use `CellAreaBoxPrivate` as a strong reference or owner of a `GtkCellAreaBoxPrivate` instance.
///

open class CellAreaBoxPrivate: CellAreaBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAreaBoxPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAreaBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAreaBoxPrivateProtocol`
    /// `GtkCellAreaBoxPrivate` does not allow reference counting.
    public convenience init<T: CellAreaBoxPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAreaBoxPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAreaBoxPrivate`.
    deinit {
        // no reference counting for GtkCellAreaBoxPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAreaBoxPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAreaBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAreaBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAreaBoxPrivate>(opaquePointer))
    }



}

// MARK: - no CellAreaBoxPrivate properties

// MARK: - no signals


public extension CellAreaBoxPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaBoxPrivate> { return ptr.assumingMemoryBound(to: GtkCellAreaBoxPrivate.self) }

}



// MARK: - CellAreaClass Record

/// The `CellAreaClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaClass`.
/// Alternatively, use `CellAreaClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaClass> { get }
}

/// The `CellAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaClass` instance.
/// It exposes methods that can operate on this data type through `CellAreaClassProtocol` conformance.
/// Use `CellAreaClassRef` only as an `unowned` reference to an existing `GtkCellAreaClass` instance.
///

public struct CellAreaClassRef: CellAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAreaClassProtocol`
    init<T: CellAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAreaClass` type acts as an owner of an underlying `GtkCellAreaClass` instance.
/// It provides the methods that can operate on this data type through `CellAreaClassProtocol` conformance.
/// Use `CellAreaClass` as a strong reference or owner of a `GtkCellAreaClass` instance.
///

open class CellAreaClass: CellAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAreaClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAreaClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAreaClassProtocol`
    /// `GtkCellAreaClass` does not allow reference counting.
    public convenience init<T: CellAreaClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAreaClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAreaClass`.
    deinit {
        // no reference counting for GtkCellAreaClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAreaClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAreaClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAreaClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAreaClass>(opaquePointer))
    }



}

// MARK: - no CellAreaClass properties

// MARK: - no signals


public extension CellAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaClass> { return ptr.assumingMemoryBound(to: GtkCellAreaClass.self) }

    /// Finds a cell property of a cell area class by name.
    func findCellProperty(propertyName property_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GParamSpec>! {
        let rv = gtk_cell_area_class_find_cell_property(cast(_ptr), property_name)
        return cast(rv)
    }

    /// Installs a cell property on a cell area class.
    func installCellProperty(propertyID property_id: CUnsignedInt, pspec: ParamSpecProtocol) {
        gtk_cell_area_class_install_cell_property(cast(_ptr), guint(property_id), cast(pspec.ptr))
    
    }

    /// Returns all cell properties of a cell area class.
    func listCellProperties(nProperties n_properties: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>>! {
        let rv = gtk_cell_area_class_list_cell_properties(cast(_ptr), cast(n_properties))
        return cast(rv)
    }
}



// MARK: - CellAreaContextClass Record

/// The `CellAreaContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaContextClass`.
/// Alternatively, use `CellAreaContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaContextClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaContextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAreaContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaContextClass> { get }
}

/// The `CellAreaContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaContextClass` instance.
/// It exposes methods that can operate on this data type through `CellAreaContextClassProtocol` conformance.
/// Use `CellAreaContextClassRef` only as an `unowned` reference to an existing `GtkCellAreaContextClass` instance.
///

public struct CellAreaContextClassRef: CellAreaContextClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAreaContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAreaContextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAreaContextClassProtocol`
    init<T: CellAreaContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAreaContextClass` type acts as an owner of an underlying `GtkCellAreaContextClass` instance.
/// It provides the methods that can operate on this data type through `CellAreaContextClassProtocol` conformance.
/// Use `CellAreaContextClass` as a strong reference or owner of a `GtkCellAreaContextClass` instance.
///

open class CellAreaContextClass: CellAreaContextClassProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAreaContextClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAreaContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAreaContextClassProtocol`
    /// `GtkCellAreaContextClass` does not allow reference counting.
    public convenience init<T: CellAreaContextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAreaContextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAreaContextClass`.
    deinit {
        // no reference counting for GtkCellAreaContextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAreaContextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAreaContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAreaContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAreaContextClass>(opaquePointer))
    }



}

// MARK: - no CellAreaContextClass properties

// MARK: - no signals


public extension CellAreaContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaContextClass> { return ptr.assumingMemoryBound(to: GtkCellAreaContextClass.self) }

}



// MARK: - CellAreaContextPrivate Record

/// The `CellAreaContextPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaContextPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaContextPrivate`.
/// Alternatively, use `CellAreaContextPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaContextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaContextPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAreaContextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaContextPrivate> { get }
}

/// The `CellAreaContextPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaContextPrivate` instance.
/// It exposes methods that can operate on this data type through `CellAreaContextPrivateProtocol` conformance.
/// Use `CellAreaContextPrivateRef` only as an `unowned` reference to an existing `GtkCellAreaContextPrivate` instance.
///

public struct CellAreaContextPrivateRef: CellAreaContextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaContextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAreaContextPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAreaContextPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAreaContextPrivateProtocol`
    init<T: CellAreaContextPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAreaContextPrivate` type acts as an owner of an underlying `GtkCellAreaContextPrivate` instance.
/// It provides the methods that can operate on this data type through `CellAreaContextPrivateProtocol` conformance.
/// Use `CellAreaContextPrivate` as a strong reference or owner of a `GtkCellAreaContextPrivate` instance.
///

open class CellAreaContextPrivate: CellAreaContextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaContextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAreaContextPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAreaContextPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAreaContextPrivateProtocol`
    /// `GtkCellAreaContextPrivate` does not allow reference counting.
    public convenience init<T: CellAreaContextPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAreaContextPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAreaContextPrivate`.
    deinit {
        // no reference counting for GtkCellAreaContextPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAreaContextPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAreaContextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAreaContextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAreaContextPrivate>(opaquePointer))
    }



}

// MARK: - no CellAreaContextPrivate properties

// MARK: - no signals


public extension CellAreaContextPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaContextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaContextPrivate> { return ptr.assumingMemoryBound(to: GtkCellAreaContextPrivate.self) }

}



// MARK: - CellAreaPrivate Record

/// The `CellAreaPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaPrivate`.
/// Alternatively, use `CellAreaPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellAreaPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaPrivate> { get }
}

/// The `CellAreaPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaPrivate` instance.
/// It exposes methods that can operate on this data type through `CellAreaPrivateProtocol` conformance.
/// Use `CellAreaPrivateRef` only as an `unowned` reference to an existing `GtkCellAreaPrivate` instance.
///

public struct CellAreaPrivateRef: CellAreaPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellAreaPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellAreaPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellAreaPrivateProtocol`
    init<T: CellAreaPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAreaPrivate` type acts as an owner of an underlying `GtkCellAreaPrivate` instance.
/// It provides the methods that can operate on this data type through `CellAreaPrivateProtocol` conformance.
/// Use `CellAreaPrivate` as a strong reference or owner of a `GtkCellAreaPrivate` instance.
///

open class CellAreaPrivate: CellAreaPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellAreaPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellAreaPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellAreaPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellAreaPrivateProtocol`
    /// `GtkCellAreaPrivate` does not allow reference counting.
    public convenience init<T: CellAreaPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellAreaPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellAreaPrivate`.
    deinit {
        // no reference counting for GtkCellAreaPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellAreaPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellAreaPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellAreaPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellAreaPrivate>(opaquePointer))
    }



}

// MARK: - no CellAreaPrivate properties

// MARK: - no signals


public extension CellAreaPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaPrivate> { return ptr.assumingMemoryBound(to: GtkCellAreaPrivate.self) }

}



// MARK: - CellEditableIface Record

/// The `CellEditableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkCellEditableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellEditableIface`.
/// Alternatively, use `CellEditableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellEditableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellEditableIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellEditableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellEditableIface> { get }
}

/// The `CellEditableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkCellEditableIface` instance.
/// It exposes methods that can operate on this data type through `CellEditableIfaceProtocol` conformance.
/// Use `CellEditableIfaceRef` only as an `unowned` reference to an existing `GtkCellEditableIface` instance.
///

public struct CellEditableIfaceRef: CellEditableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellEditableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellEditableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellEditableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellEditableIfaceProtocol`
    init<T: CellEditableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellEditableIface` type acts as an owner of an underlying `GtkCellEditableIface` instance.
/// It provides the methods that can operate on this data type through `CellEditableIfaceProtocol` conformance.
/// Use `CellEditableIface` as a strong reference or owner of a `GtkCellEditableIface` instance.
///

open class CellEditableIface: CellEditableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellEditableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellEditableIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellEditableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellEditableIfaceProtocol`
    /// `GtkCellEditableIface` does not allow reference counting.
    public convenience init<T: CellEditableIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellEditableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellEditableIface`.
    deinit {
        // no reference counting for GtkCellEditableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellEditableIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellEditableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellEditableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellEditableIface>(opaquePointer))
    }



}

// MARK: - no CellEditableIface properties

// MARK: - no signals


public extension CellEditableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellEditableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellEditableIface> { return ptr.assumingMemoryBound(to: GtkCellEditableIface.self) }

}



// MARK: - CellLayoutIface Record

/// The `CellLayoutIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkCellLayoutIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellLayoutIface`.
/// Alternatively, use `CellLayoutIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellLayoutIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellLayoutIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellLayoutIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellLayoutIface> { get }
}

/// The `CellLayoutIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkCellLayoutIface` instance.
/// It exposes methods that can operate on this data type through `CellLayoutIfaceProtocol` conformance.
/// Use `CellLayoutIfaceRef` only as an `unowned` reference to an existing `GtkCellLayoutIface` instance.
///

public struct CellLayoutIfaceRef: CellLayoutIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellLayoutIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellLayoutIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellLayoutIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellLayoutIfaceProtocol`
    init<T: CellLayoutIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellLayoutIface` type acts as an owner of an underlying `GtkCellLayoutIface` instance.
/// It provides the methods that can operate on this data type through `CellLayoutIfaceProtocol` conformance.
/// Use `CellLayoutIface` as a strong reference or owner of a `GtkCellLayoutIface` instance.
///

open class CellLayoutIface: CellLayoutIfaceProtocol {
    /// Untyped pointer to the underlying `GtkCellLayoutIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellLayoutIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellLayoutIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellLayoutIfaceProtocol`
    /// `GtkCellLayoutIface` does not allow reference counting.
    public convenience init<T: CellLayoutIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellLayoutIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellLayoutIface`.
    deinit {
        // no reference counting for GtkCellLayoutIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellLayoutIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellLayoutIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellLayoutIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellLayoutIface>(opaquePointer))
    }



}

// MARK: - no CellLayoutIface properties

// MARK: - no signals


public extension CellLayoutIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellLayoutIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellLayoutIface> { return ptr.assumingMemoryBound(to: GtkCellLayoutIface.self) }

}



// MARK: - CellRendererAccelClass Record

/// The `CellRendererAccelClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererAccelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererAccelClass`.
/// Alternatively, use `CellRendererAccelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererAccelClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererAccelClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererAccelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererAccelClass> { get }
}

/// The `CellRendererAccelClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererAccelClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererAccelClassProtocol` conformance.
/// Use `CellRendererAccelClassRef` only as an `unowned` reference to an existing `GtkCellRendererAccelClass` instance.
///

public struct CellRendererAccelClassRef: CellRendererAccelClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererAccelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererAccelClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererAccelClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererAccelClassProtocol`
    init<T: CellRendererAccelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererAccelClass` type acts as an owner of an underlying `GtkCellRendererAccelClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererAccelClassProtocol` conformance.
/// Use `CellRendererAccelClass` as a strong reference or owner of a `GtkCellRendererAccelClass` instance.
///

open class CellRendererAccelClass: CellRendererAccelClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererAccelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererAccelClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererAccelClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererAccelClassProtocol`
    /// `GtkCellRendererAccelClass` does not allow reference counting.
    public convenience init<T: CellRendererAccelClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererAccelClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererAccelClass`.
    deinit {
        // no reference counting for GtkCellRendererAccelClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererAccelClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererAccelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererAccelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererAccelClass>(opaquePointer))
    }



}

// MARK: - no CellRendererAccelClass properties

// MARK: - no signals


public extension CellRendererAccelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererAccelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererAccelClass> { return ptr.assumingMemoryBound(to: GtkCellRendererAccelClass.self) }

}



// MARK: - CellRendererAccelPrivate Record

/// The `CellRendererAccelPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererAccelPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererAccelPrivate`.
/// Alternatively, use `CellRendererAccelPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererAccelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererAccelPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererAccelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererAccelPrivate> { get }
}

/// The `CellRendererAccelPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererAccelPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererAccelPrivateProtocol` conformance.
/// Use `CellRendererAccelPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererAccelPrivate` instance.
///

public struct CellRendererAccelPrivateRef: CellRendererAccelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererAccelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererAccelPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererAccelPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererAccelPrivateProtocol`
    init<T: CellRendererAccelPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererAccelPrivate` type acts as an owner of an underlying `GtkCellRendererAccelPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererAccelPrivateProtocol` conformance.
/// Use `CellRendererAccelPrivate` as a strong reference or owner of a `GtkCellRendererAccelPrivate` instance.
///

open class CellRendererAccelPrivate: CellRendererAccelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererAccelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererAccelPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererAccelPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererAccelPrivateProtocol`
    /// `GtkCellRendererAccelPrivate` does not allow reference counting.
    public convenience init<T: CellRendererAccelPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererAccelPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererAccelPrivate`.
    deinit {
        // no reference counting for GtkCellRendererAccelPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererAccelPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererAccelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererAccelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererAccelPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererAccelPrivate properties

// MARK: - no signals


public extension CellRendererAccelPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererAccelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererAccelPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererAccelPrivate.self) }

}



// MARK: - CellRendererClass Record

/// The `CellRendererClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererClass`.
/// Alternatively, use `CellRendererClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererClass> { get }
}

/// The `CellRendererClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererClassProtocol` conformance.
/// Use `CellRendererClassRef` only as an `unowned` reference to an existing `GtkCellRendererClass` instance.
///

public struct CellRendererClassRef: CellRendererClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererClassProtocol`
    init<T: CellRendererClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererClass` type acts as an owner of an underlying `GtkCellRendererClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererClassProtocol` conformance.
/// Use `CellRendererClass` as a strong reference or owner of a `GtkCellRendererClass` instance.
///

open class CellRendererClass: CellRendererClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererClassProtocol`
    /// `GtkCellRendererClass` does not allow reference counting.
    public convenience init<T: CellRendererClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererClass`.
    deinit {
        // no reference counting for GtkCellRendererClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererClass>(opaquePointer))
    }



}

// MARK: - no CellRendererClass properties

// MARK: - no signals


public extension CellRendererClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererClass> { return ptr.assumingMemoryBound(to: GtkCellRendererClass.self) }

    /// Sets the type to be used for creating accessibles for cells rendered by
    /// cell renderers of `renderer_class`. Note that multiple accessibles will
    /// be created.
    /// 
    /// This function should only be called from class init functions of cell
    /// renderers.
    func setAccessible(type: GType) {
        gtk_cell_renderer_class_set_accessible_type(cast(_ptr), type)
    
    }
}



// MARK: - CellRendererClassPrivate Record

/// The `CellRendererClassPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererClassPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererClassPrivate`.
/// Alternatively, use `CellRendererClassPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererClassPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererClassPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererClassPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererClassPrivate> { get }
}

/// The `CellRendererClassPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererClassPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererClassPrivateProtocol` conformance.
/// Use `CellRendererClassPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererClassPrivate` instance.
///

public struct CellRendererClassPrivateRef: CellRendererClassPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererClassPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererClassPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererClassPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererClassPrivateProtocol`
    init<T: CellRendererClassPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererClassPrivate` type acts as an owner of an underlying `GtkCellRendererClassPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererClassPrivateProtocol` conformance.
/// Use `CellRendererClassPrivate` as a strong reference or owner of a `GtkCellRendererClassPrivate` instance.
///

open class CellRendererClassPrivate: CellRendererClassPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererClassPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererClassPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererClassPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererClassPrivateProtocol`
    /// `GtkCellRendererClassPrivate` does not allow reference counting.
    public convenience init<T: CellRendererClassPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererClassPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererClassPrivate`.
    deinit {
        // no reference counting for GtkCellRendererClassPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererClassPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererClassPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererClassPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererClassPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererClassPrivate properties

// MARK: - no signals


public extension CellRendererClassPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererClassPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererClassPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererClassPrivate.self) }

}



// MARK: - CellRendererComboClass Record

/// The `CellRendererComboClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererComboClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererComboClass`.
/// Alternatively, use `CellRendererComboClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererComboClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererComboClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererComboClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererComboClass> { get }
}

/// The `CellRendererComboClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererComboClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererComboClassProtocol` conformance.
/// Use `CellRendererComboClassRef` only as an `unowned` reference to an existing `GtkCellRendererComboClass` instance.
///

public struct CellRendererComboClassRef: CellRendererComboClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererComboClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererComboClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererComboClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererComboClassProtocol`
    init<T: CellRendererComboClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererComboClass` type acts as an owner of an underlying `GtkCellRendererComboClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererComboClassProtocol` conformance.
/// Use `CellRendererComboClass` as a strong reference or owner of a `GtkCellRendererComboClass` instance.
///

open class CellRendererComboClass: CellRendererComboClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererComboClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererComboClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererComboClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererComboClassProtocol`
    /// `GtkCellRendererComboClass` does not allow reference counting.
    public convenience init<T: CellRendererComboClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererComboClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererComboClass`.
    deinit {
        // no reference counting for GtkCellRendererComboClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererComboClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererComboClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererComboClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererComboClass>(opaquePointer))
    }



}

// MARK: - no CellRendererComboClass properties

// MARK: - no signals


public extension CellRendererComboClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererComboClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererComboClass> { return ptr.assumingMemoryBound(to: GtkCellRendererComboClass.self) }

}



// MARK: - CellRendererComboPrivate Record

/// The `CellRendererComboPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererComboPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererComboPrivate`.
/// Alternatively, use `CellRendererComboPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererComboPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererComboPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererComboPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererComboPrivate> { get }
}

/// The `CellRendererComboPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererComboPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererComboPrivateProtocol` conformance.
/// Use `CellRendererComboPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererComboPrivate` instance.
///

public struct CellRendererComboPrivateRef: CellRendererComboPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererComboPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererComboPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererComboPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererComboPrivateProtocol`
    init<T: CellRendererComboPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererComboPrivate` type acts as an owner of an underlying `GtkCellRendererComboPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererComboPrivateProtocol` conformance.
/// Use `CellRendererComboPrivate` as a strong reference or owner of a `GtkCellRendererComboPrivate` instance.
///

open class CellRendererComboPrivate: CellRendererComboPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererComboPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererComboPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererComboPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererComboPrivateProtocol`
    /// `GtkCellRendererComboPrivate` does not allow reference counting.
    public convenience init<T: CellRendererComboPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererComboPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererComboPrivate`.
    deinit {
        // no reference counting for GtkCellRendererComboPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererComboPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererComboPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererComboPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererComboPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererComboPrivate properties

// MARK: - no signals


public extension CellRendererComboPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererComboPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererComboPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererComboPrivate.self) }

}



// MARK: - CellRendererPixbufClass Record

/// The `CellRendererPixbufClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererPixbufClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererPixbufClass`.
/// Alternatively, use `CellRendererPixbufClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererPixbufClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPixbufClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererPixbufClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererPixbufClass> { get }
}

/// The `CellRendererPixbufClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererPixbufClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererPixbufClassProtocol` conformance.
/// Use `CellRendererPixbufClassRef` only as an `unowned` reference to an existing `GtkCellRendererPixbufClass` instance.
///

public struct CellRendererPixbufClassRef: CellRendererPixbufClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPixbufClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererPixbufClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererPixbufClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererPixbufClassProtocol`
    init<T: CellRendererPixbufClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererPixbufClass` type acts as an owner of an underlying `GtkCellRendererPixbufClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererPixbufClassProtocol` conformance.
/// Use `CellRendererPixbufClass` as a strong reference or owner of a `GtkCellRendererPixbufClass` instance.
///

open class CellRendererPixbufClass: CellRendererPixbufClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPixbufClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererPixbufClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererPixbufClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererPixbufClassProtocol`
    /// `GtkCellRendererPixbufClass` does not allow reference counting.
    public convenience init<T: CellRendererPixbufClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererPixbufClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererPixbufClass`.
    deinit {
        // no reference counting for GtkCellRendererPixbufClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererPixbufClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererPixbufClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererPixbufClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererPixbufClass>(opaquePointer))
    }



}

// MARK: - no CellRendererPixbufClass properties

// MARK: - no signals


public extension CellRendererPixbufClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererPixbufClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererPixbufClass> { return ptr.assumingMemoryBound(to: GtkCellRendererPixbufClass.self) }

}



// MARK: - CellRendererPixbufPrivate Record

/// The `CellRendererPixbufPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererPixbufPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererPixbufPrivate`.
/// Alternatively, use `CellRendererPixbufPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererPixbufPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPixbufPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererPixbufPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererPixbufPrivate> { get }
}

/// The `CellRendererPixbufPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererPixbufPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererPixbufPrivateProtocol` conformance.
/// Use `CellRendererPixbufPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererPixbufPrivate` instance.
///

public struct CellRendererPixbufPrivateRef: CellRendererPixbufPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPixbufPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererPixbufPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererPixbufPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererPixbufPrivateProtocol`
    init<T: CellRendererPixbufPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererPixbufPrivate` type acts as an owner of an underlying `GtkCellRendererPixbufPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererPixbufPrivateProtocol` conformance.
/// Use `CellRendererPixbufPrivate` as a strong reference or owner of a `GtkCellRendererPixbufPrivate` instance.
///

open class CellRendererPixbufPrivate: CellRendererPixbufPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPixbufPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererPixbufPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererPixbufPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererPixbufPrivateProtocol`
    /// `GtkCellRendererPixbufPrivate` does not allow reference counting.
    public convenience init<T: CellRendererPixbufPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererPixbufPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererPixbufPrivate`.
    deinit {
        // no reference counting for GtkCellRendererPixbufPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererPixbufPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererPixbufPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererPixbufPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererPixbufPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererPixbufPrivate properties

// MARK: - no signals


public extension CellRendererPixbufPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererPixbufPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererPixbufPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererPixbufPrivate.self) }

}



// MARK: - CellRendererPrivate Record

/// The `CellRendererPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererPrivate`.
/// Alternatively, use `CellRendererPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererPrivate> { get }
}

/// The `CellRendererPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererPrivateProtocol` conformance.
/// Use `CellRendererPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererPrivate` instance.
///

public struct CellRendererPrivateRef: CellRendererPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererPrivateProtocol`
    init<T: CellRendererPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererPrivate` type acts as an owner of an underlying `GtkCellRendererPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererPrivateProtocol` conformance.
/// Use `CellRendererPrivate` as a strong reference or owner of a `GtkCellRendererPrivate` instance.
///

open class CellRendererPrivate: CellRendererPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererPrivateProtocol`
    /// `GtkCellRendererPrivate` does not allow reference counting.
    public convenience init<T: CellRendererPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererPrivate`.
    deinit {
        // no reference counting for GtkCellRendererPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererPrivate properties

// MARK: - no signals


public extension CellRendererPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererPrivate.self) }

}



// MARK: - CellRendererProgressClass Record

/// The `CellRendererProgressClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererProgressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererProgressClass`.
/// Alternatively, use `CellRendererProgressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererProgressClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererProgressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererProgressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererProgressClass> { get }
}

/// The `CellRendererProgressClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererProgressClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererProgressClassProtocol` conformance.
/// Use `CellRendererProgressClassRef` only as an `unowned` reference to an existing `GtkCellRendererProgressClass` instance.
///

public struct CellRendererProgressClassRef: CellRendererProgressClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererProgressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererProgressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererProgressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererProgressClassProtocol`
    init<T: CellRendererProgressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererProgressClass` type acts as an owner of an underlying `GtkCellRendererProgressClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererProgressClassProtocol` conformance.
/// Use `CellRendererProgressClass` as a strong reference or owner of a `GtkCellRendererProgressClass` instance.
///

open class CellRendererProgressClass: CellRendererProgressClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererProgressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererProgressClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererProgressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererProgressClassProtocol`
    /// `GtkCellRendererProgressClass` does not allow reference counting.
    public convenience init<T: CellRendererProgressClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererProgressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererProgressClass`.
    deinit {
        // no reference counting for GtkCellRendererProgressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererProgressClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererProgressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererProgressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererProgressClass>(opaquePointer))
    }



}

// MARK: - no CellRendererProgressClass properties

// MARK: - no signals


public extension CellRendererProgressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererProgressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererProgressClass> { return ptr.assumingMemoryBound(to: GtkCellRendererProgressClass.self) }

}



// MARK: - CellRendererProgressPrivate Record

/// The `CellRendererProgressPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererProgressPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererProgressPrivate`.
/// Alternatively, use `CellRendererProgressPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererProgressPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererProgressPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererProgressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererProgressPrivate> { get }
}

/// The `CellRendererProgressPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererProgressPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererProgressPrivateProtocol` conformance.
/// Use `CellRendererProgressPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererProgressPrivate` instance.
///

public struct CellRendererProgressPrivateRef: CellRendererProgressPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererProgressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererProgressPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererProgressPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererProgressPrivateProtocol`
    init<T: CellRendererProgressPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererProgressPrivate` type acts as an owner of an underlying `GtkCellRendererProgressPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererProgressPrivateProtocol` conformance.
/// Use `CellRendererProgressPrivate` as a strong reference or owner of a `GtkCellRendererProgressPrivate` instance.
///

open class CellRendererProgressPrivate: CellRendererProgressPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererProgressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererProgressPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererProgressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererProgressPrivateProtocol`
    /// `GtkCellRendererProgressPrivate` does not allow reference counting.
    public convenience init<T: CellRendererProgressPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererProgressPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererProgressPrivate`.
    deinit {
        // no reference counting for GtkCellRendererProgressPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererProgressPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererProgressPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererProgressPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererProgressPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererProgressPrivate properties

// MARK: - no signals


public extension CellRendererProgressPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererProgressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererProgressPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererProgressPrivate.self) }

}



// MARK: - CellRendererSpinClass Record

/// The `CellRendererSpinClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererSpinClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererSpinClass`.
/// Alternatively, use `CellRendererSpinClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererSpinClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererSpinClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinClass> { get }
}

/// The `CellRendererSpinClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererSpinClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererSpinClassProtocol` conformance.
/// Use `CellRendererSpinClassRef` only as an `unowned` reference to an existing `GtkCellRendererSpinClass` instance.
///

public struct CellRendererSpinClassRef: CellRendererSpinClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererSpinClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererSpinClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererSpinClassProtocol`
    init<T: CellRendererSpinClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererSpinClass` type acts as an owner of an underlying `GtkCellRendererSpinClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererSpinClassProtocol` conformance.
/// Use `CellRendererSpinClass` as a strong reference or owner of a `GtkCellRendererSpinClass` instance.
///

open class CellRendererSpinClass: CellRendererSpinClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererSpinClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererSpinClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererSpinClassProtocol`
    /// `GtkCellRendererSpinClass` does not allow reference counting.
    public convenience init<T: CellRendererSpinClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererSpinClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererSpinClass`.
    deinit {
        // no reference counting for GtkCellRendererSpinClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererSpinClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererSpinClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererSpinClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererSpinClass>(opaquePointer))
    }



}

// MARK: - no CellRendererSpinClass properties

// MARK: - no signals


public extension CellRendererSpinClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererSpinClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinClass> { return ptr.assumingMemoryBound(to: GtkCellRendererSpinClass.self) }

}



// MARK: - CellRendererSpinPrivate Record

/// The `CellRendererSpinPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererSpinPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererSpinPrivate`.
/// Alternatively, use `CellRendererSpinPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererSpinPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererSpinPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinPrivate> { get }
}

/// The `CellRendererSpinPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererSpinPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererSpinPrivateProtocol` conformance.
/// Use `CellRendererSpinPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererSpinPrivate` instance.
///

public struct CellRendererSpinPrivateRef: CellRendererSpinPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererSpinPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererSpinPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererSpinPrivateProtocol`
    init<T: CellRendererSpinPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererSpinPrivate` type acts as an owner of an underlying `GtkCellRendererSpinPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererSpinPrivateProtocol` conformance.
/// Use `CellRendererSpinPrivate` as a strong reference or owner of a `GtkCellRendererSpinPrivate` instance.
///

open class CellRendererSpinPrivate: CellRendererSpinPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererSpinPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererSpinPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererSpinPrivateProtocol`
    /// `GtkCellRendererSpinPrivate` does not allow reference counting.
    public convenience init<T: CellRendererSpinPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererSpinPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererSpinPrivate`.
    deinit {
        // no reference counting for GtkCellRendererSpinPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererSpinPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererSpinPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererSpinPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererSpinPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererSpinPrivate properties

// MARK: - no signals


public extension CellRendererSpinPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererSpinPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererSpinPrivate.self) }

}



// MARK: - CellRendererSpinnerClass Record

/// The `CellRendererSpinnerClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererSpinnerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererSpinnerClass`.
/// Alternatively, use `CellRendererSpinnerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererSpinnerClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinnerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererSpinnerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinnerClass> { get }
}

/// The `CellRendererSpinnerClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererSpinnerClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererSpinnerClassProtocol` conformance.
/// Use `CellRendererSpinnerClassRef` only as an `unowned` reference to an existing `GtkCellRendererSpinnerClass` instance.
///

public struct CellRendererSpinnerClassRef: CellRendererSpinnerClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinnerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererSpinnerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererSpinnerClassProtocol`
    init<T: CellRendererSpinnerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererSpinnerClass` type acts as an owner of an underlying `GtkCellRendererSpinnerClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererSpinnerClassProtocol` conformance.
/// Use `CellRendererSpinnerClass` as a strong reference or owner of a `GtkCellRendererSpinnerClass` instance.
///

open class CellRendererSpinnerClass: CellRendererSpinnerClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinnerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererSpinnerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererSpinnerClassProtocol`
    /// `GtkCellRendererSpinnerClass` does not allow reference counting.
    public convenience init<T: CellRendererSpinnerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererSpinnerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererSpinnerClass`.
    deinit {
        // no reference counting for GtkCellRendererSpinnerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererSpinnerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererSpinnerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererSpinnerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererSpinnerClass>(opaquePointer))
    }



}

// MARK: - no CellRendererSpinnerClass properties

// MARK: - no signals


public extension CellRendererSpinnerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererSpinnerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinnerClass> { return ptr.assumingMemoryBound(to: GtkCellRendererSpinnerClass.self) }

}



// MARK: - CellRendererSpinnerPrivate Record

/// The `CellRendererSpinnerPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererSpinnerPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererSpinnerPrivate`.
/// Alternatively, use `CellRendererSpinnerPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererSpinnerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinnerPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererSpinnerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinnerPrivate> { get }
}

/// The `CellRendererSpinnerPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererSpinnerPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererSpinnerPrivateProtocol` conformance.
/// Use `CellRendererSpinnerPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererSpinnerPrivate` instance.
///

public struct CellRendererSpinnerPrivateRef: CellRendererSpinnerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinnerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererSpinnerPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererSpinnerPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererSpinnerPrivateProtocol`
    init<T: CellRendererSpinnerPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererSpinnerPrivate` type acts as an owner of an underlying `GtkCellRendererSpinnerPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererSpinnerPrivateProtocol` conformance.
/// Use `CellRendererSpinnerPrivate` as a strong reference or owner of a `GtkCellRendererSpinnerPrivate` instance.
///

open class CellRendererSpinnerPrivate: CellRendererSpinnerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererSpinnerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererSpinnerPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererSpinnerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererSpinnerPrivateProtocol`
    /// `GtkCellRendererSpinnerPrivate` does not allow reference counting.
    public convenience init<T: CellRendererSpinnerPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererSpinnerPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererSpinnerPrivate`.
    deinit {
        // no reference counting for GtkCellRendererSpinnerPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererSpinnerPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererSpinnerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererSpinnerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererSpinnerPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererSpinnerPrivate properties

// MARK: - no signals


public extension CellRendererSpinnerPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererSpinnerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinnerPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererSpinnerPrivate.self) }

}



// MARK: - CellRendererTextClass Record

/// The `CellRendererTextClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererTextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererTextClass`.
/// Alternatively, use `CellRendererTextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererTextClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererTextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererTextClass> { get }
}

/// The `CellRendererTextClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererTextClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererTextClassProtocol` conformance.
/// Use `CellRendererTextClassRef` only as an `unowned` reference to an existing `GtkCellRendererTextClass` instance.
///

public struct CellRendererTextClassRef: CellRendererTextClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererTextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererTextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererTextClassProtocol`
    init<T: CellRendererTextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererTextClass` type acts as an owner of an underlying `GtkCellRendererTextClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererTextClassProtocol` conformance.
/// Use `CellRendererTextClass` as a strong reference or owner of a `GtkCellRendererTextClass` instance.
///

open class CellRendererTextClass: CellRendererTextClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererTextClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererTextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererTextClassProtocol`
    /// `GtkCellRendererTextClass` does not allow reference counting.
    public convenience init<T: CellRendererTextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererTextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererTextClass`.
    deinit {
        // no reference counting for GtkCellRendererTextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererTextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererTextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererTextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererTextClass>(opaquePointer))
    }



}

// MARK: - no CellRendererTextClass properties

// MARK: - no signals


public extension CellRendererTextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererTextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererTextClass> { return ptr.assumingMemoryBound(to: GtkCellRendererTextClass.self) }

}



// MARK: - CellRendererTextPrivate Record

/// The `CellRendererTextPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererTextPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererTextPrivate`.
/// Alternatively, use `CellRendererTextPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererTextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTextPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererTextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererTextPrivate> { get }
}

/// The `CellRendererTextPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererTextPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererTextPrivateProtocol` conformance.
/// Use `CellRendererTextPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererTextPrivate` instance.
///

public struct CellRendererTextPrivateRef: CellRendererTextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererTextPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererTextPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererTextPrivateProtocol`
    init<T: CellRendererTextPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererTextPrivate` type acts as an owner of an underlying `GtkCellRendererTextPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererTextPrivateProtocol` conformance.
/// Use `CellRendererTextPrivate` as a strong reference or owner of a `GtkCellRendererTextPrivate` instance.
///

open class CellRendererTextPrivate: CellRendererTextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererTextPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererTextPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererTextPrivateProtocol`
    /// `GtkCellRendererTextPrivate` does not allow reference counting.
    public convenience init<T: CellRendererTextPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererTextPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererTextPrivate`.
    deinit {
        // no reference counting for GtkCellRendererTextPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererTextPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererTextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererTextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererTextPrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererTextPrivate properties

// MARK: - no signals


public extension CellRendererTextPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererTextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererTextPrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererTextPrivate.self) }

}



// MARK: - CellRendererToggleClass Record

/// The `CellRendererToggleClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererToggleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererToggleClass`.
/// Alternatively, use `CellRendererToggleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererToggleClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererToggleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererToggleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererToggleClass> { get }
}

/// The `CellRendererToggleClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererToggleClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererToggleClassProtocol` conformance.
/// Use `CellRendererToggleClassRef` only as an `unowned` reference to an existing `GtkCellRendererToggleClass` instance.
///

public struct CellRendererToggleClassRef: CellRendererToggleClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererToggleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererToggleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererToggleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererToggleClassProtocol`
    init<T: CellRendererToggleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererToggleClass` type acts as an owner of an underlying `GtkCellRendererToggleClass` instance.
/// It provides the methods that can operate on this data type through `CellRendererToggleClassProtocol` conformance.
/// Use `CellRendererToggleClass` as a strong reference or owner of a `GtkCellRendererToggleClass` instance.
///

open class CellRendererToggleClass: CellRendererToggleClassProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererToggleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererToggleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererToggleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererToggleClassProtocol`
    /// `GtkCellRendererToggleClass` does not allow reference counting.
    public convenience init<T: CellRendererToggleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererToggleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererToggleClass`.
    deinit {
        // no reference counting for GtkCellRendererToggleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererToggleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererToggleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererToggleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererToggleClass>(opaquePointer))
    }



}

// MARK: - no CellRendererToggleClass properties

// MARK: - no signals


public extension CellRendererToggleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererToggleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererToggleClass> { return ptr.assumingMemoryBound(to: GtkCellRendererToggleClass.self) }

}



// MARK: - CellRendererTogglePrivate Record

/// The `CellRendererTogglePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererTogglePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererTogglePrivate`.
/// Alternatively, use `CellRendererTogglePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererTogglePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTogglePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellRendererTogglePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererTogglePrivate> { get }
}

/// The `CellRendererTogglePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererTogglePrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererTogglePrivateProtocol` conformance.
/// Use `CellRendererTogglePrivateRef` only as an `unowned` reference to an existing `GtkCellRendererTogglePrivate` instance.
///

public struct CellRendererTogglePrivateRef: CellRendererTogglePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTogglePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellRendererTogglePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellRendererTogglePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellRendererTogglePrivateProtocol`
    init<T: CellRendererTogglePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererTogglePrivate` type acts as an owner of an underlying `GtkCellRendererTogglePrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererTogglePrivateProtocol` conformance.
/// Use `CellRendererTogglePrivate` as a strong reference or owner of a `GtkCellRendererTogglePrivate` instance.
///

open class CellRendererTogglePrivate: CellRendererTogglePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellRendererTogglePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellRendererTogglePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellRendererTogglePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellRendererTogglePrivateProtocol`
    /// `GtkCellRendererTogglePrivate` does not allow reference counting.
    public convenience init<T: CellRendererTogglePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellRendererTogglePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellRendererTogglePrivate`.
    deinit {
        // no reference counting for GtkCellRendererTogglePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellRendererTogglePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellRendererTogglePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellRendererTogglePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTogglePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellRendererTogglePrivate>(opaquePointer))
    }



}

// MARK: - no CellRendererTogglePrivate properties

// MARK: - no signals


public extension CellRendererTogglePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererTogglePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererTogglePrivate> { return ptr.assumingMemoryBound(to: GtkCellRendererTogglePrivate.self) }

}



// MARK: - CellViewClass Record

/// The `CellViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellViewClass`.
/// Alternatively, use `CellViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellViewClassProtocol {
    /// Untyped pointer to the underlying `GtkCellViewClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellViewClass> { get }
}

/// The `CellViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellViewClass` instance.
/// It exposes methods that can operate on this data type through `CellViewClassProtocol` conformance.
/// Use `CellViewClassRef` only as an `unowned` reference to an existing `GtkCellViewClass` instance.
///

public struct CellViewClassRef: CellViewClassProtocol {
    /// Untyped pointer to the underlying `GtkCellViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellViewClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellViewClassProtocol`
    init<T: CellViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellViewClass` type acts as an owner of an underlying `GtkCellViewClass` instance.
/// It provides the methods that can operate on this data type through `CellViewClassProtocol` conformance.
/// Use `CellViewClass` as a strong reference or owner of a `GtkCellViewClass` instance.
///

open class CellViewClass: CellViewClassProtocol {
    /// Untyped pointer to the underlying `GtkCellViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellViewClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellViewClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellViewClassProtocol`
    /// `GtkCellViewClass` does not allow reference counting.
    public convenience init<T: CellViewClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellViewClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellViewClass`.
    deinit {
        // no reference counting for GtkCellViewClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellViewClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellViewClass>(opaquePointer))
    }



}

// MARK: - no CellViewClass properties

// MARK: - no signals


public extension CellViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellViewClass> { return ptr.assumingMemoryBound(to: GtkCellViewClass.self) }

}



// MARK: - CellViewPrivate Record

/// The `CellViewPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellViewPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellViewPrivate`.
/// Alternatively, use `CellViewPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellViewPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCellViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellViewPrivate> { get }
}

/// The `CellViewPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellViewPrivate` instance.
/// It exposes methods that can operate on this data type through `CellViewPrivateProtocol` conformance.
/// Use `CellViewPrivateRef` only as an `unowned` reference to an existing `GtkCellViewPrivate` instance.
///

public struct CellViewPrivateRef: CellViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CellViewPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCellViewPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CellViewPrivateProtocol`
    init<T: CellViewPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellViewPrivate` type acts as an owner of an underlying `GtkCellViewPrivate` instance.
/// It provides the methods that can operate on this data type through `CellViewPrivateProtocol` conformance.
/// Use `CellViewPrivate` as a strong reference or owner of a `GtkCellViewPrivate` instance.
///

open class CellViewPrivate: CellViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCellViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CellViewPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCellViewPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CellViewPrivateProtocol`
    /// `GtkCellViewPrivate` does not allow reference counting.
    public convenience init<T: CellViewPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCellViewPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCellViewPrivate`.
    deinit {
        // no reference counting for GtkCellViewPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCellViewPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCellViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCellViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCellViewPrivate>(opaquePointer))
    }



}

// MARK: - no CellViewPrivate properties

// MARK: - no signals


public extension CellViewPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellViewPrivate> { return ptr.assumingMemoryBound(to: GtkCellViewPrivate.self) }

}



// MARK: - CheckButtonClass Record

/// The `CheckButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkCheckButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckButtonClass`.
/// Alternatively, use `CheckButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CheckButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCheckButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckButtonClass> { get }
}

/// The `CheckButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkCheckButtonClass` instance.
/// It exposes methods that can operate on this data type through `CheckButtonClassProtocol` conformance.
/// Use `CheckButtonClassRef` only as an `unowned` reference to an existing `GtkCheckButtonClass` instance.
///

public struct CheckButtonClassRef: CheckButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CheckButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCheckButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CheckButtonClassProtocol`
    init<T: CheckButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CheckButtonClass` type acts as an owner of an underlying `GtkCheckButtonClass` instance.
/// It provides the methods that can operate on this data type through `CheckButtonClassProtocol` conformance.
/// Use `CheckButtonClass` as a strong reference or owner of a `GtkCheckButtonClass` instance.
///

open class CheckButtonClass: CheckButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CheckButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCheckButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CheckButtonClassProtocol`
    /// `GtkCheckButtonClass` does not allow reference counting.
    public convenience init<T: CheckButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCheckButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCheckButtonClass`.
    deinit {
        // no reference counting for GtkCheckButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCheckButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCheckButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCheckButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCheckButtonClass>(opaquePointer))
    }



}

// MARK: - no CheckButtonClass properties

// MARK: - no signals


public extension CheckButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckButtonClass> { return ptr.assumingMemoryBound(to: GtkCheckButtonClass.self) }

}



// MARK: - CheckMenuItemAccessibleClass Record

/// The `CheckMenuItemAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkCheckMenuItemAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckMenuItemAccessibleClass`.
/// Alternatively, use `CheckMenuItemAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CheckMenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCheckMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass> { get }
}

/// The `CheckMenuItemAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkCheckMenuItemAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `CheckMenuItemAccessibleClassProtocol` conformance.
/// Use `CheckMenuItemAccessibleClassRef` only as an `unowned` reference to an existing `GtkCheckMenuItemAccessibleClass` instance.
///

public struct CheckMenuItemAccessibleClassRef: CheckMenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CheckMenuItemAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CheckMenuItemAccessibleClassProtocol`
    init<T: CheckMenuItemAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CheckMenuItemAccessibleClass` type acts as an owner of an underlying `GtkCheckMenuItemAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `CheckMenuItemAccessibleClassProtocol` conformance.
/// Use `CheckMenuItemAccessibleClass` as a strong reference or owner of a `GtkCheckMenuItemAccessibleClass` instance.
///

open class CheckMenuItemAccessibleClass: CheckMenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CheckMenuItemAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CheckMenuItemAccessibleClassProtocol`
    /// `GtkCheckMenuItemAccessibleClass` does not allow reference counting.
    public convenience init<T: CheckMenuItemAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCheckMenuItemAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCheckMenuItemAccessibleClass`.
    deinit {
        // no reference counting for GtkCheckMenuItemAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCheckMenuItemAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCheckMenuItemAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCheckMenuItemAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>(opaquePointer))
    }



}

// MARK: - no CheckMenuItemAccessibleClass properties

// MARK: - no signals


public extension CheckMenuItemAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass> { return ptr.assumingMemoryBound(to: GtkCheckMenuItemAccessibleClass.self) }

}



// MARK: - CheckMenuItemAccessiblePrivate Record

/// The `CheckMenuItemAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCheckMenuItemAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckMenuItemAccessiblePrivate`.
/// Alternatively, use `CheckMenuItemAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CheckMenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCheckMenuItemAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemAccessiblePrivate> { get }
}

/// The `CheckMenuItemAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCheckMenuItemAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `CheckMenuItemAccessiblePrivateProtocol` conformance.
/// Use `CheckMenuItemAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkCheckMenuItemAccessiblePrivate` instance.
///

public struct CheckMenuItemAccessiblePrivateRef: CheckMenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CheckMenuItemAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCheckMenuItemAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CheckMenuItemAccessiblePrivateProtocol`
    init<T: CheckMenuItemAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CheckMenuItemAccessiblePrivate` type acts as an owner of an underlying `GtkCheckMenuItemAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `CheckMenuItemAccessiblePrivateProtocol` conformance.
/// Use `CheckMenuItemAccessiblePrivate` as a strong reference or owner of a `GtkCheckMenuItemAccessiblePrivate` instance.
///

open class CheckMenuItemAccessiblePrivate: CheckMenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CheckMenuItemAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCheckMenuItemAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CheckMenuItemAccessiblePrivateProtocol`
    /// `GtkCheckMenuItemAccessiblePrivate` does not allow reference counting.
    public convenience init<T: CheckMenuItemAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCheckMenuItemAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCheckMenuItemAccessiblePrivate`.
    deinit {
        // no reference counting for GtkCheckMenuItemAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCheckMenuItemAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCheckMenuItemAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCheckMenuItemAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCheckMenuItemAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no CheckMenuItemAccessiblePrivate properties

// MARK: - no signals


public extension CheckMenuItemAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckMenuItemAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkCheckMenuItemAccessiblePrivate.self) }

}



// MARK: - CheckMenuItemClass Record

/// The `CheckMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkCheckMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckMenuItemClass`.
/// Alternatively, use `CheckMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CheckMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCheckMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemClass> { get }
}

/// The `CheckMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkCheckMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `CheckMenuItemClassProtocol` conformance.
/// Use `CheckMenuItemClassRef` only as an `unowned` reference to an existing `GtkCheckMenuItemClass` instance.
///

public struct CheckMenuItemClassRef: CheckMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CheckMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCheckMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CheckMenuItemClassProtocol`
    init<T: CheckMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CheckMenuItemClass` type acts as an owner of an underlying `GtkCheckMenuItemClass` instance.
/// It provides the methods that can operate on this data type through `CheckMenuItemClassProtocol` conformance.
/// Use `CheckMenuItemClass` as a strong reference or owner of a `GtkCheckMenuItemClass` instance.
///

open class CheckMenuItemClass: CheckMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CheckMenuItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCheckMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CheckMenuItemClassProtocol`
    /// `GtkCheckMenuItemClass` does not allow reference counting.
    public convenience init<T: CheckMenuItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCheckMenuItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCheckMenuItemClass`.
    deinit {
        // no reference counting for GtkCheckMenuItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCheckMenuItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCheckMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCheckMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCheckMenuItemClass>(opaquePointer))
    }



}

// MARK: - no CheckMenuItemClass properties

// MARK: - no signals


public extension CheckMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemClass> { return ptr.assumingMemoryBound(to: GtkCheckMenuItemClass.self) }

}



// MARK: - CheckMenuItemPrivate Record

/// The `CheckMenuItemPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCheckMenuItemPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckMenuItemPrivate`.
/// Alternatively, use `CheckMenuItemPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CheckMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCheckMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemPrivate> { get }
}

/// The `CheckMenuItemPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCheckMenuItemPrivate` instance.
/// It exposes methods that can operate on this data type through `CheckMenuItemPrivateProtocol` conformance.
/// Use `CheckMenuItemPrivateRef` only as an `unowned` reference to an existing `GtkCheckMenuItemPrivate` instance.
///

public struct CheckMenuItemPrivateRef: CheckMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CheckMenuItemPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCheckMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CheckMenuItemPrivateProtocol`
    init<T: CheckMenuItemPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CheckMenuItemPrivate` type acts as an owner of an underlying `GtkCheckMenuItemPrivate` instance.
/// It provides the methods that can operate on this data type through `CheckMenuItemPrivateProtocol` conformance.
/// Use `CheckMenuItemPrivate` as a strong reference or owner of a `GtkCheckMenuItemPrivate` instance.
///

open class CheckMenuItemPrivate: CheckMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCheckMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CheckMenuItemPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCheckMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CheckMenuItemPrivateProtocol`
    /// `GtkCheckMenuItemPrivate` does not allow reference counting.
    public convenience init<T: CheckMenuItemPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCheckMenuItemPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCheckMenuItemPrivate`.
    deinit {
        // no reference counting for GtkCheckMenuItemPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCheckMenuItemPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCheckMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCheckMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCheckMenuItemPrivate>(opaquePointer))
    }



}

// MARK: - no CheckMenuItemPrivate properties

// MARK: - no signals


public extension CheckMenuItemPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemPrivate> { return ptr.assumingMemoryBound(to: GtkCheckMenuItemPrivate.self) }

}



// MARK: - ColorButtonClass Record

/// The `ColorButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorButtonClass`.
/// Alternatively, use `ColorButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkColorButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorButtonClass> { get }
}

/// The `ColorButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorButtonClass` instance.
/// It exposes methods that can operate on this data type through `ColorButtonClassProtocol` conformance.
/// Use `ColorButtonClassRef` only as an `unowned` reference to an existing `GtkColorButtonClass` instance.
///

public struct ColorButtonClassRef: ColorButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkColorButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorButtonClassProtocol`
    init<T: ColorButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorButtonClass` type acts as an owner of an underlying `GtkColorButtonClass` instance.
/// It provides the methods that can operate on this data type through `ColorButtonClassProtocol` conformance.
/// Use `ColorButtonClass` as a strong reference or owner of a `GtkColorButtonClass` instance.
///

open class ColorButtonClass: ColorButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkColorButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorButtonClassProtocol`
    /// `GtkColorButtonClass` does not allow reference counting.
    public convenience init<T: ColorButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorButtonClass`.
    deinit {
        // no reference counting for GtkColorButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorButtonClass>(opaquePointer))
    }



}

// MARK: - no ColorButtonClass properties

// MARK: - no signals


public extension ColorButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorButtonClass> { return ptr.assumingMemoryBound(to: GtkColorButtonClass.self) }

}



// MARK: - ColorButtonPrivate Record

/// The `ColorButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkColorButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorButtonPrivate`.
/// Alternatively, use `ColorButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorButtonPrivate> { get }
}

/// The `ColorButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkColorButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `ColorButtonPrivateProtocol` conformance.
/// Use `ColorButtonPrivateRef` only as an `unowned` reference to an existing `GtkColorButtonPrivate` instance.
///

public struct ColorButtonPrivateRef: ColorButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorButtonPrivateProtocol`
    init<T: ColorButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorButtonPrivate` type acts as an owner of an underlying `GtkColorButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `ColorButtonPrivateProtocol` conformance.
/// Use `ColorButtonPrivate` as a strong reference or owner of a `GtkColorButtonPrivate` instance.
///

open class ColorButtonPrivate: ColorButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorButtonPrivateProtocol`
    /// `GtkColorButtonPrivate` does not allow reference counting.
    public convenience init<T: ColorButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorButtonPrivate`.
    deinit {
        // no reference counting for GtkColorButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorButtonPrivate>(opaquePointer))
    }



}

// MARK: - no ColorButtonPrivate properties

// MARK: - no signals


public extension ColorButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorButtonPrivate> { return ptr.assumingMemoryBound(to: GtkColorButtonPrivate.self) }

}



// MARK: - ColorChooserDialogClass Record

/// The `ColorChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserDialogClass`.
/// Alternatively, use `ColorChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserDialogClass> { get }
}

/// The `ColorChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `ColorChooserDialogClassProtocol` conformance.
/// Use `ColorChooserDialogClassRef` only as an `unowned` reference to an existing `GtkColorChooserDialogClass` instance.
///

public struct ColorChooserDialogClassRef: ColorChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorChooserDialogClassProtocol`
    init<T: ColorChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorChooserDialogClass` type acts as an owner of an underlying `GtkColorChooserDialogClass` instance.
/// It provides the methods that can operate on this data type through `ColorChooserDialogClassProtocol` conformance.
/// Use `ColorChooserDialogClass` as a strong reference or owner of a `GtkColorChooserDialogClass` instance.
///

open class ColorChooserDialogClass: ColorChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorChooserDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorChooserDialogClassProtocol`
    /// `GtkColorChooserDialogClass` does not allow reference counting.
    public convenience init<T: ColorChooserDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorChooserDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorChooserDialogClass`.
    deinit {
        // no reference counting for GtkColorChooserDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorChooserDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorChooserDialogClass>(opaquePointer))
    }



}

// MARK: - no ColorChooserDialogClass properties

// MARK: - no signals


public extension ColorChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserDialogClass> { return ptr.assumingMemoryBound(to: GtkColorChooserDialogClass.self) }

}



// MARK: - ColorChooserDialogPrivate Record

/// The `ColorChooserDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserDialogPrivate`.
/// Alternatively, use `ColorChooserDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserDialogPrivate> { get }
}

/// The `ColorChooserDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `ColorChooserDialogPrivateProtocol` conformance.
/// Use `ColorChooserDialogPrivateRef` only as an `unowned` reference to an existing `GtkColorChooserDialogPrivate` instance.
///

public struct ColorChooserDialogPrivateRef: ColorChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorChooserDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorChooserDialogPrivateProtocol`
    init<T: ColorChooserDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorChooserDialogPrivate` type acts as an owner of an underlying `GtkColorChooserDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `ColorChooserDialogPrivateProtocol` conformance.
/// Use `ColorChooserDialogPrivate` as a strong reference or owner of a `GtkColorChooserDialogPrivate` instance.
///

open class ColorChooserDialogPrivate: ColorChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorChooserDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorChooserDialogPrivateProtocol`
    /// `GtkColorChooserDialogPrivate` does not allow reference counting.
    public convenience init<T: ColorChooserDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorChooserDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorChooserDialogPrivate`.
    deinit {
        // no reference counting for GtkColorChooserDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorChooserDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorChooserDialogPrivate>(opaquePointer))
    }



}

// MARK: - no ColorChooserDialogPrivate properties

// MARK: - no signals


public extension ColorChooserDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserDialogPrivate> { return ptr.assumingMemoryBound(to: GtkColorChooserDialogPrivate.self) }

}



// MARK: - ColorChooserInterface Record

/// The `ColorChooserInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserInterface`.
/// Alternatively, use `ColorChooserInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorChooserInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorChooserInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserInterface> { get }
}

/// The `ColorChooserInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserInterface` instance.
/// It exposes methods that can operate on this data type through `ColorChooserInterfaceProtocol` conformance.
/// Use `ColorChooserInterfaceRef` only as an `unowned` reference to an existing `GtkColorChooserInterface` instance.
///

public struct ColorChooserInterfaceRef: ColorChooserInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorChooserInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorChooserInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorChooserInterfaceProtocol`
    init<T: ColorChooserInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorChooserInterface` type acts as an owner of an underlying `GtkColorChooserInterface` instance.
/// It provides the methods that can operate on this data type through `ColorChooserInterfaceProtocol` conformance.
/// Use `ColorChooserInterface` as a strong reference or owner of a `GtkColorChooserInterface` instance.
///

open class ColorChooserInterface: ColorChooserInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorChooserInterface` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorChooserInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorChooserInterfaceProtocol`
    /// `GtkColorChooserInterface` does not allow reference counting.
    public convenience init<T: ColorChooserInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorChooserInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorChooserInterface`.
    deinit {
        // no reference counting for GtkColorChooserInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorChooserInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorChooserInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorChooserInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorChooserInterface>(opaquePointer))
    }



}

// MARK: - no ColorChooserInterface properties

// MARK: - no signals


public extension ColorChooserInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserInterface> { return ptr.assumingMemoryBound(to: GtkColorChooserInterface.self) }

}



// MARK: - ColorChooserWidgetClass Record

/// The `ColorChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserWidgetClass`.
/// Alternatively, use `ColorChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserWidgetClass> { get }
}

/// The `ColorChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `ColorChooserWidgetClassProtocol` conformance.
/// Use `ColorChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkColorChooserWidgetClass` instance.
///

public struct ColorChooserWidgetClassRef: ColorChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorChooserWidgetClassProtocol`
    init<T: ColorChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorChooserWidgetClass` type acts as an owner of an underlying `GtkColorChooserWidgetClass` instance.
/// It provides the methods that can operate on this data type through `ColorChooserWidgetClassProtocol` conformance.
/// Use `ColorChooserWidgetClass` as a strong reference or owner of a `GtkColorChooserWidgetClass` instance.
///

open class ColorChooserWidgetClass: ColorChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorChooserWidgetClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorChooserWidgetClassProtocol`
    /// `GtkColorChooserWidgetClass` does not allow reference counting.
    public convenience init<T: ColorChooserWidgetClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorChooserWidgetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorChooserWidgetClass`.
    deinit {
        // no reference counting for GtkColorChooserWidgetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorChooserWidgetClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorChooserWidgetClass>(opaquePointer))
    }



}

// MARK: - no ColorChooserWidgetClass properties

// MARK: - no signals


public extension ColorChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserWidgetClass> { return ptr.assumingMemoryBound(to: GtkColorChooserWidgetClass.self) }

}



// MARK: - ColorChooserWidgetPrivate Record

/// The `ColorChooserWidgetPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserWidgetPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserWidgetPrivate`.
/// Alternatively, use `ColorChooserWidgetPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserWidgetPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserWidgetPrivate> { get }
}

/// The `ColorChooserWidgetPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserWidgetPrivate` instance.
/// It exposes methods that can operate on this data type through `ColorChooserWidgetPrivateProtocol` conformance.
/// Use `ColorChooserWidgetPrivateRef` only as an `unowned` reference to an existing `GtkColorChooserWidgetPrivate` instance.
///

public struct ColorChooserWidgetPrivateRef: ColorChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorChooserWidgetPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorChooserWidgetPrivateProtocol`
    init<T: ColorChooserWidgetPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorChooserWidgetPrivate` type acts as an owner of an underlying `GtkColorChooserWidgetPrivate` instance.
/// It provides the methods that can operate on this data type through `ColorChooserWidgetPrivateProtocol` conformance.
/// Use `ColorChooserWidgetPrivate` as a strong reference or owner of a `GtkColorChooserWidgetPrivate` instance.
///

open class ColorChooserWidgetPrivate: ColorChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorChooserWidgetPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorChooserWidgetPrivateProtocol`
    /// `GtkColorChooserWidgetPrivate` does not allow reference counting.
    public convenience init<T: ColorChooserWidgetPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorChooserWidgetPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorChooserWidgetPrivate`.
    deinit {
        // no reference counting for GtkColorChooserWidgetPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorChooserWidgetPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorChooserWidgetPrivate>(opaquePointer))
    }



}

// MARK: - no ColorChooserWidgetPrivate properties

// MARK: - no signals


public extension ColorChooserWidgetPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserWidgetPrivate> { return ptr.assumingMemoryBound(to: GtkColorChooserWidgetPrivate.self) }

}



// MARK: - ColorSelectionClass Record

/// The `ColorSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorSelectionClass`.
/// Alternatively, use `ColorSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionClass> { get }
}

/// The `ColorSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorSelectionClass` instance.
/// It exposes methods that can operate on this data type through `ColorSelectionClassProtocol` conformance.
/// Use `ColorSelectionClassRef` only as an `unowned` reference to an existing `GtkColorSelectionClass` instance.
///

public struct ColorSelectionClassRef: ColorSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorSelectionClassProtocol`
    init<T: ColorSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorSelectionClass` type acts as an owner of an underlying `GtkColorSelectionClass` instance.
/// It provides the methods that can operate on this data type through `ColorSelectionClassProtocol` conformance.
/// Use `ColorSelectionClass` as a strong reference or owner of a `GtkColorSelectionClass` instance.
///

open class ColorSelectionClass: ColorSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorSelectionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorSelectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorSelectionClassProtocol`
    /// `GtkColorSelectionClass` does not allow reference counting.
    public convenience init<T: ColorSelectionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorSelectionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorSelectionClass`.
    deinit {
        // no reference counting for GtkColorSelectionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorSelectionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorSelectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorSelectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorSelectionClass>(opaquePointer))
    }



}

// MARK: - no ColorSelectionClass properties

// MARK: - no signals


public extension ColorSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionClass> { return ptr.assumingMemoryBound(to: GtkColorSelectionClass.self) }

}



// MARK: - ColorSelectionDialogClass Record

/// The `ColorSelectionDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorSelectionDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorSelectionDialogClass`.
/// Alternatively, use `ColorSelectionDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorSelectionDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorSelectionDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionDialogClass> { get }
}

/// The `ColorSelectionDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorSelectionDialogClass` instance.
/// It exposes methods that can operate on this data type through `ColorSelectionDialogClassProtocol` conformance.
/// Use `ColorSelectionDialogClassRef` only as an `unowned` reference to an existing `GtkColorSelectionDialogClass` instance.
///

public struct ColorSelectionDialogClassRef: ColorSelectionDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorSelectionDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorSelectionDialogClassProtocol`
    init<T: ColorSelectionDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorSelectionDialogClass` type acts as an owner of an underlying `GtkColorSelectionDialogClass` instance.
/// It provides the methods that can operate on this data type through `ColorSelectionDialogClassProtocol` conformance.
/// Use `ColorSelectionDialogClass` as a strong reference or owner of a `GtkColorSelectionDialogClass` instance.
///

open class ColorSelectionDialogClass: ColorSelectionDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorSelectionDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorSelectionDialogClassProtocol`
    /// `GtkColorSelectionDialogClass` does not allow reference counting.
    public convenience init<T: ColorSelectionDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorSelectionDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorSelectionDialogClass`.
    deinit {
        // no reference counting for GtkColorSelectionDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorSelectionDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorSelectionDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorSelectionDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorSelectionDialogClass>(opaquePointer))
    }



}

// MARK: - no ColorSelectionDialogClass properties

// MARK: - no signals


public extension ColorSelectionDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorSelectionDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionDialogClass> { return ptr.assumingMemoryBound(to: GtkColorSelectionDialogClass.self) }

}



// MARK: - ColorSelectionDialogPrivate Record

/// The `ColorSelectionDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkColorSelectionDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorSelectionDialogPrivate`.
/// Alternatively, use `ColorSelectionDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorSelectionDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorSelectionDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionDialogPrivate> { get }
}

/// The `ColorSelectionDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkColorSelectionDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `ColorSelectionDialogPrivateProtocol` conformance.
/// Use `ColorSelectionDialogPrivateRef` only as an `unowned` reference to an existing `GtkColorSelectionDialogPrivate` instance.
///

public struct ColorSelectionDialogPrivateRef: ColorSelectionDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorSelectionDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorSelectionDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorSelectionDialogPrivateProtocol`
    init<T: ColorSelectionDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorSelectionDialogPrivate` type acts as an owner of an underlying `GtkColorSelectionDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `ColorSelectionDialogPrivateProtocol` conformance.
/// Use `ColorSelectionDialogPrivate` as a strong reference or owner of a `GtkColorSelectionDialogPrivate` instance.
///

open class ColorSelectionDialogPrivate: ColorSelectionDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorSelectionDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorSelectionDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorSelectionDialogPrivateProtocol`
    /// `GtkColorSelectionDialogPrivate` does not allow reference counting.
    public convenience init<T: ColorSelectionDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorSelectionDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorSelectionDialogPrivate`.
    deinit {
        // no reference counting for GtkColorSelectionDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorSelectionDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorSelectionDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorSelectionDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorSelectionDialogPrivate>(opaquePointer))
    }



}

// MARK: - no ColorSelectionDialogPrivate properties

// MARK: - no signals


public extension ColorSelectionDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorSelectionDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionDialogPrivate> { return ptr.assumingMemoryBound(to: GtkColorSelectionDialogPrivate.self) }

}



// MARK: - ColorSelectionPrivate Record

/// The `ColorSelectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkColorSelectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorSelectionPrivate`.
/// Alternatively, use `ColorSelectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkColorSelectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionPrivate> { get }
}

/// The `ColorSelectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkColorSelectionPrivate` instance.
/// It exposes methods that can operate on this data type through `ColorSelectionPrivateProtocol` conformance.
/// Use `ColorSelectionPrivateRef` only as an `unowned` reference to an existing `GtkColorSelectionPrivate` instance.
///

public struct ColorSelectionPrivateRef: ColorSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorSelectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkColorSelectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorSelectionPrivateProtocol`
    init<T: ColorSelectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorSelectionPrivate` type acts as an owner of an underlying `GtkColorSelectionPrivate` instance.
/// It provides the methods that can operate on this data type through `ColorSelectionPrivateProtocol` conformance.
/// Use `ColorSelectionPrivate` as a strong reference or owner of a `GtkColorSelectionPrivate` instance.
///

open class ColorSelectionPrivate: ColorSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkColorSelectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ColorSelectionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkColorSelectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorSelectionPrivateProtocol`
    /// `GtkColorSelectionPrivate` does not allow reference counting.
    public convenience init<T: ColorSelectionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkColorSelectionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkColorSelectionPrivate`.
    deinit {
        // no reference counting for GtkColorSelectionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkColorSelectionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkColorSelectionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkColorSelectionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkColorSelectionPrivate>(opaquePointer))
    }



}

// MARK: - no ColorSelectionPrivate properties

// MARK: - no signals


public extension ColorSelectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorSelectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionPrivate> { return ptr.assumingMemoryBound(to: GtkColorSelectionPrivate.self) }

}



// MARK: - ComboBoxAccessibleClass Record

/// The `ComboBoxAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxAccessibleClass`.
/// Alternatively, use `ComboBoxAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ComboBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkComboBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxAccessibleClass> { get }
}

/// The `ComboBoxAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ComboBoxAccessibleClassProtocol` conformance.
/// Use `ComboBoxAccessibleClassRef` only as an `unowned` reference to an existing `GtkComboBoxAccessibleClass` instance.
///

public struct ComboBoxAccessibleClassRef: ComboBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ComboBoxAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkComboBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ComboBoxAccessibleClassProtocol`
    init<T: ComboBoxAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ComboBoxAccessibleClass` type acts as an owner of an underlying `GtkComboBoxAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ComboBoxAccessibleClassProtocol` conformance.
/// Use `ComboBoxAccessibleClass` as a strong reference or owner of a `GtkComboBoxAccessibleClass` instance.
///

open class ComboBoxAccessibleClass: ComboBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ComboBoxAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkComboBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ComboBoxAccessibleClassProtocol`
    /// `GtkComboBoxAccessibleClass` does not allow reference counting.
    public convenience init<T: ComboBoxAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkComboBoxAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkComboBoxAccessibleClass`.
    deinit {
        // no reference counting for GtkComboBoxAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkComboBoxAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkComboBoxAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkComboBoxAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkComboBoxAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ComboBoxAccessibleClass properties

// MARK: - no signals


public extension ComboBoxAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxAccessibleClass> { return ptr.assumingMemoryBound(to: GtkComboBoxAccessibleClass.self) }

}



// MARK: - ComboBoxAccessiblePrivate Record

/// The `ComboBoxAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxAccessiblePrivate`.
/// Alternatively, use `ComboBoxAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ComboBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkComboBoxAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxAccessiblePrivate> { get }
}

/// The `ComboBoxAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ComboBoxAccessiblePrivateProtocol` conformance.
/// Use `ComboBoxAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkComboBoxAccessiblePrivate` instance.
///

public struct ComboBoxAccessiblePrivateRef: ComboBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ComboBoxAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkComboBoxAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ComboBoxAccessiblePrivateProtocol`
    init<T: ComboBoxAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ComboBoxAccessiblePrivate` type acts as an owner of an underlying `GtkComboBoxAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ComboBoxAccessiblePrivateProtocol` conformance.
/// Use `ComboBoxAccessiblePrivate` as a strong reference or owner of a `GtkComboBoxAccessiblePrivate` instance.
///

open class ComboBoxAccessiblePrivate: ComboBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ComboBoxAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkComboBoxAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ComboBoxAccessiblePrivateProtocol`
    /// `GtkComboBoxAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ComboBoxAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkComboBoxAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkComboBoxAccessiblePrivate`.
    deinit {
        // no reference counting for GtkComboBoxAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkComboBoxAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkComboBoxAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkComboBoxAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkComboBoxAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ComboBoxAccessiblePrivate properties

// MARK: - no signals


public extension ComboBoxAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkComboBoxAccessiblePrivate.self) }

}



// MARK: - ComboBoxClass Record

/// The `ComboBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxClass`.
/// Alternatively, use `ComboBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ComboBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkComboBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxClass> { get }
}

/// The `ComboBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxClass` instance.
/// It exposes methods that can operate on this data type through `ComboBoxClassProtocol` conformance.
/// Use `ComboBoxClassRef` only as an `unowned` reference to an existing `GtkComboBoxClass` instance.
///

public struct ComboBoxClassRef: ComboBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ComboBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkComboBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ComboBoxClassProtocol`
    init<T: ComboBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ComboBoxClass` type acts as an owner of an underlying `GtkComboBoxClass` instance.
/// It provides the methods that can operate on this data type through `ComboBoxClassProtocol` conformance.
/// Use `ComboBoxClass` as a strong reference or owner of a `GtkComboBoxClass` instance.
///

open class ComboBoxClass: ComboBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ComboBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkComboBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ComboBoxClassProtocol`
    /// `GtkComboBoxClass` does not allow reference counting.
    public convenience init<T: ComboBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkComboBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkComboBoxClass`.
    deinit {
        // no reference counting for GtkComboBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkComboBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkComboBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkComboBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkComboBoxClass>(opaquePointer))
    }



}

// MARK: - no ComboBoxClass properties

// MARK: - no signals


public extension ComboBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxClass> { return ptr.assumingMemoryBound(to: GtkComboBoxClass.self) }

}



// MARK: - ComboBoxPrivate Record

/// The `ComboBoxPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxPrivate`.
/// Alternatively, use `ComboBoxPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ComboBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkComboBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxPrivate> { get }
}

/// The `ComboBoxPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxPrivate` instance.
/// It exposes methods that can operate on this data type through `ComboBoxPrivateProtocol` conformance.
/// Use `ComboBoxPrivateRef` only as an `unowned` reference to an existing `GtkComboBoxPrivate` instance.
///

public struct ComboBoxPrivateRef: ComboBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ComboBoxPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkComboBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ComboBoxPrivateProtocol`
    init<T: ComboBoxPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ComboBoxPrivate` type acts as an owner of an underlying `GtkComboBoxPrivate` instance.
/// It provides the methods that can operate on this data type through `ComboBoxPrivateProtocol` conformance.
/// Use `ComboBoxPrivate` as a strong reference or owner of a `GtkComboBoxPrivate` instance.
///

open class ComboBoxPrivate: ComboBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ComboBoxPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkComboBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ComboBoxPrivateProtocol`
    /// `GtkComboBoxPrivate` does not allow reference counting.
    public convenience init<T: ComboBoxPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkComboBoxPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkComboBoxPrivate`.
    deinit {
        // no reference counting for GtkComboBoxPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkComboBoxPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkComboBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkComboBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkComboBoxPrivate>(opaquePointer))
    }



}

// MARK: - no ComboBoxPrivate properties

// MARK: - no signals


public extension ComboBoxPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxPrivate> { return ptr.assumingMemoryBound(to: GtkComboBoxPrivate.self) }

}



// MARK: - ComboBoxTextClass Record

/// The `ComboBoxTextClassProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxTextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxTextClass`.
/// Alternatively, use `ComboBoxTextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ComboBoxTextClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxTextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkComboBoxTextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxTextClass> { get }
}

/// The `ComboBoxTextClassRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxTextClass` instance.
/// It exposes methods that can operate on this data type through `ComboBoxTextClassProtocol` conformance.
/// Use `ComboBoxTextClassRef` only as an `unowned` reference to an existing `GtkComboBoxTextClass` instance.
///

public struct ComboBoxTextClassRef: ComboBoxTextClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxTextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ComboBoxTextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkComboBoxTextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ComboBoxTextClassProtocol`
    init<T: ComboBoxTextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ComboBoxTextClass` type acts as an owner of an underlying `GtkComboBoxTextClass` instance.
/// It provides the methods that can operate on this data type through `ComboBoxTextClassProtocol` conformance.
/// Use `ComboBoxTextClass` as a strong reference or owner of a `GtkComboBoxTextClass` instance.
///

open class ComboBoxTextClass: ComboBoxTextClassProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxTextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ComboBoxTextClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkComboBoxTextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ComboBoxTextClassProtocol`
    /// `GtkComboBoxTextClass` does not allow reference counting.
    public convenience init<T: ComboBoxTextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkComboBoxTextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkComboBoxTextClass`.
    deinit {
        // no reference counting for GtkComboBoxTextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkComboBoxTextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkComboBoxTextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkComboBoxTextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkComboBoxTextClass>(opaquePointer))
    }



}

// MARK: - no ComboBoxTextClass properties

// MARK: - no signals


public extension ComboBoxTextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxTextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxTextClass> { return ptr.assumingMemoryBound(to: GtkComboBoxTextClass.self) }

}



// MARK: - ComboBoxTextPrivate Record

/// The `ComboBoxTextPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxTextPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxTextPrivate`.
/// Alternatively, use `ComboBoxTextPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ComboBoxTextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxTextPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkComboBoxTextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxTextPrivate> { get }
}

/// The `ComboBoxTextPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxTextPrivate` instance.
/// It exposes methods that can operate on this data type through `ComboBoxTextPrivateProtocol` conformance.
/// Use `ComboBoxTextPrivateRef` only as an `unowned` reference to an existing `GtkComboBoxTextPrivate` instance.
///

public struct ComboBoxTextPrivateRef: ComboBoxTextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxTextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ComboBoxTextPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkComboBoxTextPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ComboBoxTextPrivateProtocol`
    init<T: ComboBoxTextPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ComboBoxTextPrivate` type acts as an owner of an underlying `GtkComboBoxTextPrivate` instance.
/// It provides the methods that can operate on this data type through `ComboBoxTextPrivateProtocol` conformance.
/// Use `ComboBoxTextPrivate` as a strong reference or owner of a `GtkComboBoxTextPrivate` instance.
///

open class ComboBoxTextPrivate: ComboBoxTextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkComboBoxTextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ComboBoxTextPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkComboBoxTextPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ComboBoxTextPrivateProtocol`
    /// `GtkComboBoxTextPrivate` does not allow reference counting.
    public convenience init<T: ComboBoxTextPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkComboBoxTextPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkComboBoxTextPrivate`.
    deinit {
        // no reference counting for GtkComboBoxTextPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkComboBoxTextPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkComboBoxTextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkComboBoxTextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkComboBoxTextPrivate>(opaquePointer))
    }



}

// MARK: - no ComboBoxTextPrivate properties

// MARK: - no signals


public extension ComboBoxTextPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxTextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxTextPrivate> { return ptr.assumingMemoryBound(to: GtkComboBoxTextPrivate.self) }

}



// MARK: - ContainerAccessibleClass Record

/// The `ContainerAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkContainerAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerAccessibleClass`.
/// Alternatively, use `ContainerAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ContainerAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkContainerAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerAccessibleClass> { get }
}

/// The `ContainerAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkContainerAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ContainerAccessibleClassProtocol` conformance.
/// Use `ContainerAccessibleClassRef` only as an `unowned` reference to an existing `GtkContainerAccessibleClass` instance.
///

public struct ContainerAccessibleClassRef: ContainerAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ContainerAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkContainerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContainerAccessibleClassProtocol`
    init<T: ContainerAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContainerAccessibleClass` type acts as an owner of an underlying `GtkContainerAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ContainerAccessibleClassProtocol` conformance.
/// Use `ContainerAccessibleClass` as a strong reference or owner of a `GtkContainerAccessibleClass` instance.
///

open class ContainerAccessibleClass: ContainerAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ContainerAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkContainerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ContainerAccessibleClassProtocol`
    /// `GtkContainerAccessibleClass` does not allow reference counting.
    public convenience init<T: ContainerAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkContainerAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkContainerAccessibleClass`.
    deinit {
        // no reference counting for GtkContainerAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkContainerAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkContainerAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkContainerAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkContainerAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ContainerAccessibleClass properties

// MARK: - no signals


public extension ContainerAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerAccessibleClass> { return ptr.assumingMemoryBound(to: GtkContainerAccessibleClass.self) }

}



// MARK: - ContainerAccessiblePrivate Record

/// The `ContainerAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkContainerAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerAccessiblePrivate`.
/// Alternatively, use `ContainerAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ContainerAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkContainerAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerAccessiblePrivate> { get }
}

/// The `ContainerAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkContainerAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ContainerAccessiblePrivateProtocol` conformance.
/// Use `ContainerAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkContainerAccessiblePrivate` instance.
///

public struct ContainerAccessiblePrivateRef: ContainerAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ContainerAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkContainerAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContainerAccessiblePrivateProtocol`
    init<T: ContainerAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContainerAccessiblePrivate` type acts as an owner of an underlying `GtkContainerAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ContainerAccessiblePrivateProtocol` conformance.
/// Use `ContainerAccessiblePrivate` as a strong reference or owner of a `GtkContainerAccessiblePrivate` instance.
///

open class ContainerAccessiblePrivate: ContainerAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ContainerAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkContainerAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ContainerAccessiblePrivateProtocol`
    /// `GtkContainerAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ContainerAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkContainerAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkContainerAccessiblePrivate`.
    deinit {
        // no reference counting for GtkContainerAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkContainerAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkContainerAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkContainerAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkContainerAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ContainerAccessiblePrivate properties

// MARK: - no signals


public extension ContainerAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkContainerAccessiblePrivate.self) }

}



// MARK: - ContainerCellAccessibleClass Record

/// The `ContainerCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkContainerCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerCellAccessibleClass`.
/// Alternatively, use `ContainerCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ContainerCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkContainerCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerCellAccessibleClass> { get }
}

/// The `ContainerCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkContainerCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ContainerCellAccessibleClassProtocol` conformance.
/// Use `ContainerCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkContainerCellAccessibleClass` instance.
///

public struct ContainerCellAccessibleClassRef: ContainerCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ContainerCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkContainerCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContainerCellAccessibleClassProtocol`
    init<T: ContainerCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContainerCellAccessibleClass` type acts as an owner of an underlying `GtkContainerCellAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ContainerCellAccessibleClassProtocol` conformance.
/// Use `ContainerCellAccessibleClass` as a strong reference or owner of a `GtkContainerCellAccessibleClass` instance.
///

open class ContainerCellAccessibleClass: ContainerCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ContainerCellAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkContainerCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ContainerCellAccessibleClassProtocol`
    /// `GtkContainerCellAccessibleClass` does not allow reference counting.
    public convenience init<T: ContainerCellAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkContainerCellAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkContainerCellAccessibleClass`.
    deinit {
        // no reference counting for GtkContainerCellAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkContainerCellAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkContainerCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkContainerCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkContainerCellAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ContainerCellAccessibleClass properties

// MARK: - no signals


public extension ContainerCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerCellAccessibleClass> { return ptr.assumingMemoryBound(to: GtkContainerCellAccessibleClass.self) }

}



// MARK: - ContainerCellAccessiblePrivate Record

/// The `ContainerCellAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkContainerCellAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerCellAccessiblePrivate`.
/// Alternatively, use `ContainerCellAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ContainerCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerCellAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkContainerCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerCellAccessiblePrivate> { get }
}

/// The `ContainerCellAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkContainerCellAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ContainerCellAccessiblePrivateProtocol` conformance.
/// Use `ContainerCellAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkContainerCellAccessiblePrivate` instance.
///

public struct ContainerCellAccessiblePrivateRef: ContainerCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ContainerCellAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkContainerCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContainerCellAccessiblePrivateProtocol`
    init<T: ContainerCellAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContainerCellAccessiblePrivate` type acts as an owner of an underlying `GtkContainerCellAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ContainerCellAccessiblePrivateProtocol` conformance.
/// Use `ContainerCellAccessiblePrivate` as a strong reference or owner of a `GtkContainerCellAccessiblePrivate` instance.
///

open class ContainerCellAccessiblePrivate: ContainerCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ContainerCellAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkContainerCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ContainerCellAccessiblePrivateProtocol`
    /// `GtkContainerCellAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ContainerCellAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkContainerCellAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkContainerCellAccessiblePrivate`.
    deinit {
        // no reference counting for GtkContainerCellAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkContainerCellAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkContainerCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkContainerCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkContainerCellAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ContainerCellAccessiblePrivate properties

// MARK: - no signals


public extension ContainerCellAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerCellAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkContainerCellAccessiblePrivate.self) }

}



// MARK: - ContainerClass Record

/// The `ContainerClassProtocol` protocol exposes the methods and properties of an underlying `GtkContainerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerClass`.
/// Alternatively, use `ContainerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base class for containers.
public protocol ContainerClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkContainerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerClass> { get }
}

/// The `ContainerClassRef` type acts as a lightweight Swift reference to an underlying `GtkContainerClass` instance.
/// It exposes methods that can operate on this data type through `ContainerClassProtocol` conformance.
/// Use `ContainerClassRef` only as an `unowned` reference to an existing `GtkContainerClass` instance.
///
/// Base class for containers.
public struct ContainerClassRef: ContainerClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ContainerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkContainerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContainerClassProtocol`
    init<T: ContainerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContainerClass` type acts as an owner of an underlying `GtkContainerClass` instance.
/// It provides the methods that can operate on this data type through `ContainerClassProtocol` conformance.
/// Use `ContainerClass` as a strong reference or owner of a `GtkContainerClass` instance.
///
/// Base class for containers.
open class ContainerClass: ContainerClassProtocol {
    /// Untyped pointer to the underlying `GtkContainerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ContainerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkContainerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ContainerClassProtocol`
    /// `GtkContainerClass` does not allow reference counting.
    public convenience init<T: ContainerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkContainerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkContainerClass`.
    deinit {
        // no reference counting for GtkContainerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkContainerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkContainerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkContainerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkContainerClass>(opaquePointer))
    }



}

// MARK: - no ContainerClass properties

// MARK: - no signals


public extension ContainerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerClass> { return ptr.assumingMemoryBound(to: GtkContainerClass.self) }

    /// Finds a child property of a container class by name.
    func findChildProperty(propertyName property_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GParamSpec>! {
        let rv = gtk_container_class_find_child_property(cast(_ptr), property_name)
        return cast(rv)
    }

    /// Modifies a subclass of `GtkContainerClass` to automatically add and
    /// remove the border-width setting on GtkContainer.  This allows the
    /// subclass to ignore the border width in its size request and
    /// allocate methods. The intent is for a subclass to invoke this
    /// in its class_init function.
    /// 
    /// gtk_container_class_handle_border_width() is necessary because it
    /// would break API too badly to make this behavior the default. So
    /// subclasses must “opt in” to the parent class handling border_width
    /// for them.
    func handleBorderWidth() {
        gtk_container_class_handle_border_width(cast(_ptr))
    
    }

    /// Installs child properties on a container class.
    func installChildProperties(nPspecs n_pspecs: CUnsignedInt, pspecs: UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>>) {
        gtk_container_class_install_child_properties(cast(_ptr), guint(n_pspecs), cast(pspecs))
    
    }

    /// Installs a child property on a container class.
    func installChildProperty(propertyID property_id: CUnsignedInt, pspec: ParamSpecProtocol) {
        gtk_container_class_install_child_property(cast(_ptr), guint(property_id), cast(pspec.ptr))
    
    }

    /// Returns all child properties of a container class.
    func listChildProperties(nProperties n_properties: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>>! {
        let rv = gtk_container_class_list_child_properties(cast(_ptr), cast(n_properties))
        return cast(rv)
    }
}



// MARK: - ContainerPrivate Record

/// The `ContainerPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkContainerPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerPrivate`.
/// Alternatively, use `ContainerPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ContainerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkContainerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerPrivate> { get }
}

/// The `ContainerPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkContainerPrivate` instance.
/// It exposes methods that can operate on this data type through `ContainerPrivateProtocol` conformance.
/// Use `ContainerPrivateRef` only as an `unowned` reference to an existing `GtkContainerPrivate` instance.
///

public struct ContainerPrivateRef: ContainerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ContainerPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkContainerPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContainerPrivateProtocol`
    init<T: ContainerPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContainerPrivate` type acts as an owner of an underlying `GtkContainerPrivate` instance.
/// It provides the methods that can operate on this data type through `ContainerPrivateProtocol` conformance.
/// Use `ContainerPrivate` as a strong reference or owner of a `GtkContainerPrivate` instance.
///

open class ContainerPrivate: ContainerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkContainerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ContainerPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkContainerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ContainerPrivateProtocol`
    /// `GtkContainerPrivate` does not allow reference counting.
    public convenience init<T: ContainerPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkContainerPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkContainerPrivate`.
    deinit {
        // no reference counting for GtkContainerPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkContainerPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkContainerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkContainerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkContainerPrivate>(opaquePointer))
    }



}

// MARK: - no ContainerPrivate properties

// MARK: - no signals


public extension ContainerPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerPrivate> { return ptr.assumingMemoryBound(to: GtkContainerPrivate.self) }

}



// MARK: - CssProviderClass Record

/// The `CssProviderClassProtocol` protocol exposes the methods and properties of an underlying `GtkCssProviderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssProviderClass`.
/// Alternatively, use `CssProviderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CssProviderClassProtocol {
    /// Untyped pointer to the underlying `GtkCssProviderClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCssProviderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCssProviderClass> { get }
}

/// The `CssProviderClassRef` type acts as a lightweight Swift reference to an underlying `GtkCssProviderClass` instance.
/// It exposes methods that can operate on this data type through `CssProviderClassProtocol` conformance.
/// Use `CssProviderClassRef` only as an `unowned` reference to an existing `GtkCssProviderClass` instance.
///

public struct CssProviderClassRef: CssProviderClassProtocol {
    /// Untyped pointer to the underlying `GtkCssProviderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CssProviderClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCssProviderClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CssProviderClassProtocol`
    init<T: CssProviderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CssProviderClass` type acts as an owner of an underlying `GtkCssProviderClass` instance.
/// It provides the methods that can operate on this data type through `CssProviderClassProtocol` conformance.
/// Use `CssProviderClass` as a strong reference or owner of a `GtkCssProviderClass` instance.
///

open class CssProviderClass: CssProviderClassProtocol {
    /// Untyped pointer to the underlying `GtkCssProviderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CssProviderClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCssProviderClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CssProviderClassProtocol`
    /// `GtkCssProviderClass` does not allow reference counting.
    public convenience init<T: CssProviderClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCssProviderClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCssProviderClass`.
    deinit {
        // no reference counting for GtkCssProviderClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCssProviderClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCssProviderClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCssProviderClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCssProviderClass>(opaquePointer))
    }



}

// MARK: - no CssProviderClass properties

// MARK: - no signals


public extension CssProviderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssProviderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCssProviderClass> { return ptr.assumingMemoryBound(to: GtkCssProviderClass.self) }

}



// MARK: - CssProviderPrivate Record

/// The `CssProviderPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCssProviderPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssProviderPrivate`.
/// Alternatively, use `CssProviderPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CssProviderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCssProviderPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCssProviderPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCssProviderPrivate> { get }
}

/// The `CssProviderPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCssProviderPrivate` instance.
/// It exposes methods that can operate on this data type through `CssProviderPrivateProtocol` conformance.
/// Use `CssProviderPrivateRef` only as an `unowned` reference to an existing `GtkCssProviderPrivate` instance.
///

public struct CssProviderPrivateRef: CssProviderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCssProviderPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CssProviderPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCssProviderPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CssProviderPrivateProtocol`
    init<T: CssProviderPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CssProviderPrivate` type acts as an owner of an underlying `GtkCssProviderPrivate` instance.
/// It provides the methods that can operate on this data type through `CssProviderPrivateProtocol` conformance.
/// Use `CssProviderPrivate` as a strong reference or owner of a `GtkCssProviderPrivate` instance.
///

open class CssProviderPrivate: CssProviderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkCssProviderPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CssProviderPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkCssProviderPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CssProviderPrivateProtocol`
    /// `GtkCssProviderPrivate` does not allow reference counting.
    public convenience init<T: CssProviderPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCssProviderPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCssProviderPrivate`.
    deinit {
        // no reference counting for GtkCssProviderPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCssProviderPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCssProviderPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCssProviderPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCssProviderPrivate>(opaquePointer))
    }



}

// MARK: - no CssProviderPrivate properties

// MARK: - no signals


public extension CssProviderPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssProviderPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCssProviderPrivate> { return ptr.assumingMemoryBound(to: GtkCssProviderPrivate.self) }

}



// MARK: - CssSection Record

/// The `CssSectionProtocol` protocol exposes the methods and properties of an underlying `GtkCssSection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssSection`.
/// Alternatively, use `CssSectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use gtk_css_section_get_parent() to get the
/// containing region.
public protocol CssSectionProtocol {
    /// Untyped pointer to the underlying `GtkCssSection` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCssSection` instance.
    var css_section_ptr: UnsafeMutablePointer<GtkCssSection> { get }
}

/// The `CssSectionRef` type acts as a lightweight Swift reference to an underlying `GtkCssSection` instance.
/// It exposes methods that can operate on this data type through `CssSectionProtocol` conformance.
/// Use `CssSectionRef` only as an `unowned` reference to an existing `GtkCssSection` instance.
///
/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use gtk_css_section_get_parent() to get the
/// containing region.
public struct CssSectionRef: CssSectionProtocol {
    /// Untyped pointer to the underlying `GtkCssSection` instance.
    /// For type-safe access, use the generated, typed pointer `css_section_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CssSectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCssSection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CssSectionProtocol`
    init<T: CssSectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CssSection` type acts as a reference-counted owner of an underlying `GtkCssSection` instance.
/// It provides the methods that can operate on this data type through `CssSectionProtocol` conformance.
/// Use `CssSection` as a strong reference or owner of a `GtkCssSection` instance.
///
/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use gtk_css_section_get_parent() to get the
/// containing region.
open class CssSection: CssSectionProtocol {
    /// Untyped pointer to the underlying `GtkCssSection` instance.
    /// For type-safe access, use the generated, typed pointer `css_section_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CssSection` instance.
    public init(_ op: UnsafeMutablePointer<GtkCssSection>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CssSectionProtocol`
    /// Will retain `GtkCssSection`.
    public convenience init<T: CssSectionProtocol>(_ other: T) {
        self.init(cast(other.css_section_ptr))
        gtk_css_section_ref(cast(css_section_ptr))
    }

    /// Releases the underlying `GtkCssSection` instance using `gtk_css_section_unref`.
    deinit {
        gtk_css_section_unref(cast(css_section_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCssSection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCssSection>(opaquePointer))
    }



}

// MARK: - no CssSection properties

// MARK: - no signals


public extension CssSectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssSection` instance.
    var css_section_ptr: UnsafeMutablePointer<GtkCssSection> { return ptr.assumingMemoryBound(to: GtkCssSection.self) }

    /// Returns the line in the CSS document where this section end.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider::parsing-error signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    func getEndLine() -> CUnsignedInt {
        let rv = gtk_css_section_get_end_line(cast(css_section_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via gtk_css_section_get_end_line().
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider::parsing-error signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    func getEndPosition() -> CUnsignedInt {
        let rv = gtk_css_section_get_end_position(cast(css_section_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the file that `section` was parsed from. If no such file exists,
    /// for example because the CSS was loaded via
    /// `gtk_css_provider_load_from_data`(), then `nil` is returned.
    func getFile() -> UnsafeMutablePointer<GFile>! {
        let rv = gtk_css_section_get_file(cast(css_section_ptr))
        return cast(rv)
    }

    /// Gets the parent section for the given `section`. The parent section is
    /// the section that contains this `section`. A special case are sections of
    /// type `GTK_CSS_SECTION_DOCUMENT`. Their parent will either be `nil`
    /// if they are the original CSS document that was loaded by
    /// gtk_css_provider_load_from_file() or a section of type
    /// `GTK_CSS_SECTION_IMPORT` if it was loaded with an import rule from
    /// a different file.
    func getParent() -> UnsafeMutablePointer<GtkCssSection>! {
        let rv = gtk_css_section_get_parent(cast(css_section_ptr))
        return cast(rv)
    }

    /// Gets the type of information that `section` describes.
    func getSectionType() -> GtkCssSectionType {
        let rv = gtk_css_section_get_section_type(cast(css_section_ptr))
        return rv
    }

    /// Returns the line in the CSS document where this section starts.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    func getStartLine() -> CUnsignedInt {
        let rv = gtk_css_section_get_start_line(cast(css_section_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via gtk_css_section_get_start_line().
    func getStartPosition() -> CUnsignedInt {
        let rv = gtk_css_section_get_start_position(cast(css_section_ptr))
        return CUnsignedInt(rv)
    }

    /// Increments the reference count on `section`.
    func ref() -> UnsafeMutablePointer<GtkCssSection>! {
        let rv = gtk_css_section_ref(cast(css_section_ptr))
        return cast(rv)
    }

    /// Decrements the reference count on `section`, freeing the
    /// structure if the reference count reaches 0.
    func unref() {
        gtk_css_section_unref(cast(css_section_ptr))
    
    }
    /// Returns the line in the CSS document where this section end.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider::parsing-error signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    var endLine: CUnsignedInt {
        /// Returns the line in the CSS document where this section end.
        /// The line number is 0-indexed, so the first line of the document
        /// will return 0.
        /// This value may change in future invocations of this function if
        /// `section` is not yet parsed completely. This will for example
        /// happen in the GtkCssProvider::parsing-error signal.
        /// The end position and line may be identical to the start
        /// position and line for sections which failed to parse anything
        /// successfully.
        get {
            let rv = gtk_css_section_get_end_line(cast(css_section_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via gtk_css_section_get_end_line().
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider::parsing-error signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    var endPosition: CUnsignedInt {
        /// Returns the offset in bytes from the start of the current line
        /// returned via gtk_css_section_get_end_line().
        /// This value may change in future invocations of this function if
        /// `section` is not yet parsed completely. This will for example
        /// happen in the GtkCssProvider::parsing-error signal.
        /// The end position and line may be identical to the start
        /// position and line for sections which failed to parse anything
        /// successfully.
        get {
            let rv = gtk_css_section_get_end_position(cast(css_section_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Gets the file that `section` was parsed from. If no such file exists,
    /// for example because the CSS was loaded via
    /// `gtk_css_provider_load_from_data`(), then `nil` is returned.
    var file: UnsafeMutablePointer<GFile>! {
        /// Gets the file that `section` was parsed from. If no such file exists,
        /// for example because the CSS was loaded via
        /// `gtk_css_provider_load_from_data`(), then `nil` is returned.
        get {
            let rv = gtk_css_section_get_file(cast(css_section_ptr))
            return cast(rv)
        }
    }

    /// Gets the parent section for the given `section`. The parent section is
    /// the section that contains this `section`. A special case are sections of
    /// type `GTK_CSS_SECTION_DOCUMENT`. Their parent will either be `nil`
    /// if they are the original CSS document that was loaded by
    /// gtk_css_provider_load_from_file() or a section of type
    /// `GTK_CSS_SECTION_IMPORT` if it was loaded with an import rule from
    /// a different file.
    var parent: UnsafeMutablePointer<GtkCssSection>! {
        /// Gets the parent section for the given `section`. The parent section is
        /// the section that contains this `section`. A special case are sections of
        /// type `GTK_CSS_SECTION_DOCUMENT`. Their parent will either be `nil`
        /// if they are the original CSS document that was loaded by
        /// gtk_css_provider_load_from_file() or a section of type
        /// `GTK_CSS_SECTION_IMPORT` if it was loaded with an import rule from
        /// a different file.
        get {
            let rv = gtk_css_section_get_parent(cast(css_section_ptr))
            return cast(rv)
        }
    }

    /// Gets the type of information that `section` describes.
    var sectionType: GtkCssSectionType {
        /// Gets the type of information that `section` describes.
        get {
            let rv = gtk_css_section_get_section_type(cast(css_section_ptr))
            return rv
        }
    }

    /// Returns the line in the CSS document where this section starts.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    var startLine: CUnsignedInt {
        /// Returns the line in the CSS document where this section starts.
        /// The line number is 0-indexed, so the first line of the document
        /// will return 0.
        get {
            let rv = gtk_css_section_get_start_line(cast(css_section_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via gtk_css_section_get_start_line().
    var startPosition: CUnsignedInt {
        /// Returns the offset in bytes from the start of the current line
        /// returned via gtk_css_section_get_start_line().
        get {
            let rv = gtk_css_section_get_start_position(cast(css_section_ptr))
            return CUnsignedInt(rv)
        }
    }
}



// MARK: - DialogClass Record

/// The `DialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DialogClass`.
/// Alternatively, use `DialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DialogClassProtocol {
    /// Untyped pointer to the underlying `GtkDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDialogClass> { get }
}

/// The `DialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkDialogClass` instance.
/// It exposes methods that can operate on this data type through `DialogClassProtocol` conformance.
/// Use `DialogClassRef` only as an `unowned` reference to an existing `GtkDialogClass` instance.
///

public struct DialogClassRef: DialogClassProtocol {
    /// Untyped pointer to the underlying `GtkDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DialogClassProtocol`
    init<T: DialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DialogClass` type acts as an owner of an underlying `GtkDialogClass` instance.
/// It provides the methods that can operate on this data type through `DialogClassProtocol` conformance.
/// Use `DialogClass` as a strong reference or owner of a `GtkDialogClass` instance.
///

open class DialogClass: DialogClassProtocol {
    /// Untyped pointer to the underlying `GtkDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DialogClassProtocol`
    /// `GtkDialogClass` does not allow reference counting.
    public convenience init<T: DialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkDialogClass`.
    deinit {
        // no reference counting for GtkDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkDialogClass>(opaquePointer))
    }



}

// MARK: - no DialogClass properties

// MARK: - no signals


public extension DialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDialogClass> { return ptr.assumingMemoryBound(to: GtkDialogClass.self) }

}



