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

// MARK: - PadControllerClass Record

/// The `PadControllerClassProtocol` protocol exposes the methods and properties of an underlying `GtkPadControllerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PadControllerClass`.
/// Alternatively, use `PadControllerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PadControllerClassProtocol {
    /// Untyped pointer to the underlying `GtkPadControllerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPadControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPadControllerClass> { get }
}

/// The `PadControllerClassRef` type acts as a lightweight Swift reference to an underlying `GtkPadControllerClass` instance.
/// It exposes methods that can operate on this data type through `PadControllerClassProtocol` conformance.
/// Use `PadControllerClassRef` only as an `unowned` reference to an existing `GtkPadControllerClass` instance.
///

public struct PadControllerClassRef: PadControllerClassProtocol {
    /// Untyped pointer to the underlying `GtkPadControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PadControllerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPadControllerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PadControllerClassProtocol`
    init<T: PadControllerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PadControllerClass` type acts as an owner of an underlying `GtkPadControllerClass` instance.
/// It provides the methods that can operate on this data type through `PadControllerClassProtocol` conformance.
/// Use `PadControllerClass` as a strong reference or owner of a `GtkPadControllerClass` instance.
///

open class PadControllerClass: PadControllerClassProtocol {
    /// Untyped pointer to the underlying `GtkPadControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PadControllerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPadControllerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PadControllerClassProtocol`
    /// `GtkPadControllerClass` does not allow reference counting.
    public convenience init<T: PadControllerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPadControllerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPadControllerClass`.
    deinit {
        // no reference counting for GtkPadControllerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPadControllerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPadControllerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPadControllerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPadControllerClass>(opaquePointer))
    }



}

// MARK: - no PadControllerClass properties

// MARK: - no signals


public extension PadControllerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPadControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPadControllerClass> { return ptr.assumingMemoryBound(to: GtkPadControllerClass.self) }

}



// MARK: - PageRange Record

/// The `PageRangeProtocol` protocol exposes the methods and properties of an underlying `GtkPageRange` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PageRange`.
/// Alternatively, use `PageRangeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// See also `gtk_print_settings_set_page_ranges()`.
public protocol PageRangeProtocol {
    /// Untyped pointer to the underlying `GtkPageRange` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPageRange` instance.
    var _ptr: UnsafeMutablePointer<GtkPageRange> { get }
}

/// The `PageRangeRef` type acts as a lightweight Swift reference to an underlying `GtkPageRange` instance.
/// It exposes methods that can operate on this data type through `PageRangeProtocol` conformance.
/// Use `PageRangeRef` only as an `unowned` reference to an existing `GtkPageRange` instance.
///
/// See also `gtk_print_settings_set_page_ranges()`.
public struct PageRangeRef: PageRangeProtocol {
    /// Untyped pointer to the underlying `GtkPageRange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PageRangeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PageRangeProtocol`
    init<T: PageRangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PageRange` type acts as an owner of an underlying `GtkPageRange` instance.
/// It provides the methods that can operate on this data type through `PageRangeProtocol` conformance.
/// Use `PageRange` as a strong reference or owner of a `GtkPageRange` instance.
///
/// See also `gtk_print_settings_set_page_ranges()`.
open class PageRange: PageRangeProtocol {
    /// Untyped pointer to the underlying `GtkPageRange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PageRange` instance.
    public init(_ op: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PageRangeProtocol`
    /// `GtkPageRange` does not allow reference counting.
    public convenience init<T: PageRangeProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPageRange, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPageRange`.
    deinit {
        // no reference counting for GtkPageRange, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPageRange.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPageRange.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPageRange.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPageRange>(opaquePointer))
    }



}

// MARK: - no PageRange properties

// MARK: - no signals


public extension PageRangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPageRange` instance.
    var _ptr: UnsafeMutablePointer<GtkPageRange> { return ptr.assumingMemoryBound(to: GtkPageRange.self) }

}



// MARK: - PanedAccessibleClass Record

/// The `PanedAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkPanedAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PanedAccessibleClass`.
/// Alternatively, use `PanedAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PanedAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPanedAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedAccessibleClass> { get }
}

/// The `PanedAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkPanedAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `PanedAccessibleClassProtocol` conformance.
/// Use `PanedAccessibleClassRef` only as an `unowned` reference to an existing `GtkPanedAccessibleClass` instance.
///

public struct PanedAccessibleClassRef: PanedAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PanedAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPanedAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PanedAccessibleClassProtocol`
    init<T: PanedAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PanedAccessibleClass` type acts as an owner of an underlying `GtkPanedAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `PanedAccessibleClassProtocol` conformance.
/// Use `PanedAccessibleClass` as a strong reference or owner of a `GtkPanedAccessibleClass` instance.
///

open class PanedAccessibleClass: PanedAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PanedAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPanedAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PanedAccessibleClassProtocol`
    /// `GtkPanedAccessibleClass` does not allow reference counting.
    public convenience init<T: PanedAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPanedAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPanedAccessibleClass`.
    deinit {
        // no reference counting for GtkPanedAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPanedAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPanedAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPanedAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPanedAccessibleClass>(opaquePointer))
    }



}

// MARK: - no PanedAccessibleClass properties

// MARK: - no signals


public extension PanedAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPanedAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedAccessibleClass> { return ptr.assumingMemoryBound(to: GtkPanedAccessibleClass.self) }

}



// MARK: - PanedAccessiblePrivate Record

/// The `PanedAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkPanedAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PanedAccessiblePrivate`.
/// Alternatively, use `PanedAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PanedAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPanedAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedAccessiblePrivate> { get }
}

/// The `PanedAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkPanedAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `PanedAccessiblePrivateProtocol` conformance.
/// Use `PanedAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkPanedAccessiblePrivate` instance.
///

public struct PanedAccessiblePrivateRef: PanedAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PanedAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPanedAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PanedAccessiblePrivateProtocol`
    init<T: PanedAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PanedAccessiblePrivate` type acts as an owner of an underlying `GtkPanedAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `PanedAccessiblePrivateProtocol` conformance.
/// Use `PanedAccessiblePrivate` as a strong reference or owner of a `GtkPanedAccessiblePrivate` instance.
///

open class PanedAccessiblePrivate: PanedAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PanedAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkPanedAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PanedAccessiblePrivateProtocol`
    /// `GtkPanedAccessiblePrivate` does not allow reference counting.
    public convenience init<T: PanedAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPanedAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPanedAccessiblePrivate`.
    deinit {
        // no reference counting for GtkPanedAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPanedAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPanedAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPanedAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPanedAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no PanedAccessiblePrivate properties

// MARK: - no signals


public extension PanedAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPanedAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkPanedAccessiblePrivate.self) }

}



// MARK: - PanedClass Record

/// The `PanedClassProtocol` protocol exposes the methods and properties of an underlying `GtkPanedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PanedClass`.
/// Alternatively, use `PanedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PanedClassProtocol {
    /// Untyped pointer to the underlying `GtkPanedClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedClass> { get }
}

/// The `PanedClassRef` type acts as a lightweight Swift reference to an underlying `GtkPanedClass` instance.
/// It exposes methods that can operate on this data type through `PanedClassProtocol` conformance.
/// Use `PanedClassRef` only as an `unowned` reference to an existing `GtkPanedClass` instance.
///

public struct PanedClassRef: PanedClassProtocol {
    /// Untyped pointer to the underlying `GtkPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PanedClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPanedClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PanedClassProtocol`
    init<T: PanedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PanedClass` type acts as an owner of an underlying `GtkPanedClass` instance.
/// It provides the methods that can operate on this data type through `PanedClassProtocol` conformance.
/// Use `PanedClass` as a strong reference or owner of a `GtkPanedClass` instance.
///

open class PanedClass: PanedClassProtocol {
    /// Untyped pointer to the underlying `GtkPanedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PanedClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPanedClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PanedClassProtocol`
    /// `GtkPanedClass` does not allow reference counting.
    public convenience init<T: PanedClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPanedClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPanedClass`.
    deinit {
        // no reference counting for GtkPanedClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPanedClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPanedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPanedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPanedClass>(opaquePointer))
    }



}

// MARK: - no PanedClass properties

// MARK: - no signals


public extension PanedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPanedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedClass> { return ptr.assumingMemoryBound(to: GtkPanedClass.self) }

}



// MARK: - PanedPrivate Record

/// The `PanedPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkPanedPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PanedPrivate`.
/// Alternatively, use `PanedPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PanedPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPanedPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPanedPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedPrivate> { get }
}

/// The `PanedPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkPanedPrivate` instance.
/// It exposes methods that can operate on this data type through `PanedPrivateProtocol` conformance.
/// Use `PanedPrivateRef` only as an `unowned` reference to an existing `GtkPanedPrivate` instance.
///

public struct PanedPrivateRef: PanedPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPanedPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PanedPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPanedPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PanedPrivateProtocol`
    init<T: PanedPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PanedPrivate` type acts as an owner of an underlying `GtkPanedPrivate` instance.
/// It provides the methods that can operate on this data type through `PanedPrivateProtocol` conformance.
/// Use `PanedPrivate` as a strong reference or owner of a `GtkPanedPrivate` instance.
///

open class PanedPrivate: PanedPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPanedPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PanedPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkPanedPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PanedPrivateProtocol`
    /// `GtkPanedPrivate` does not allow reference counting.
    public convenience init<T: PanedPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPanedPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPanedPrivate`.
    deinit {
        // no reference counting for GtkPanedPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPanedPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPanedPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPanedPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPanedPrivate>(opaquePointer))
    }



}

// MARK: - no PanedPrivate properties

// MARK: - no signals


public extension PanedPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPanedPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPanedPrivate> { return ptr.assumingMemoryBound(to: GtkPanedPrivate.self) }

}



// MARK: - PaperSize Record

/// The `PaperSizeProtocol` protocol exposes the methods and properties of an underlying `GtkPaperSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PaperSize`.
/// Alternatively, use `PaperSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
/// 
/// Printing support has been added in GTK+ 2.10.
public protocol PaperSizeProtocol {
    /// Untyped pointer to the underlying `GtkPaperSize` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPaperSize` instance.
    var paper_size_ptr: UnsafeMutablePointer<GtkPaperSize> { get }
}

/// The `PaperSizeRef` type acts as a lightweight Swift reference to an underlying `GtkPaperSize` instance.
/// It exposes methods that can operate on this data type through `PaperSizeProtocol` conformance.
/// Use `PaperSizeRef` only as an `unowned` reference to an existing `GtkPaperSize` instance.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
/// 
/// Printing support has been added in GTK+ 2.10.
public struct PaperSizeRef: PaperSizeProtocol {
    /// Untyped pointer to the underlying `GtkPaperSize` instance.
    /// For type-safe access, use the generated, typed pointer `paper_size_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PaperSizeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PaperSizeProtocol`
    init<T: PaperSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPaperSize` object by parsing a
    /// [PWG 5101.1-2002](ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf)
    /// paper name.
    /// 
    /// If `name` is `nil`, the default paper size is returned,
    /// see `gtk_paper_size_get_default()`.
    init( name: UnsafePointer<gchar>) {
        let rv = gtk_paper_size_new(name)
        self.init(cast(rv))
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    init(custom name: UnsafePointer<gchar>, displayName display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble, unit: Unit) {
        let rv = gtk_paper_size_new_custom(name, display_name, width, height, unit)
        self.init(cast(rv))
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    init(gvariant variant: VariantProtocol) {
        let rv = gtk_paper_size_new_from_gvariant(cast(variant.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    init(ipp ipp_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) {
        let rv = gtk_paper_size_new_from_ipp(ipp_name, width, height)
        self.init(cast(rv))
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    init(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_paper_size_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    init(ppd ppd_name: UnsafePointer<gchar>, ppdDisplayName ppd_display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) {
        let rv = gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        self.init(cast(rv))
    }
    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    static func new(custom name: UnsafePointer<gchar>, displayName display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble, unit: Unit) -> PaperSizeRef! {
        let rv = gtk_paper_size_new_custom(name, display_name, width, height, unit)
        return rv.map { PaperSizeRef(cast($0)) }
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    static func newFromG(gvariant variant: VariantProtocol) -> PaperSizeRef! {
        let rv = gtk_paper_size_new_from_gvariant(cast(variant.ptr))
        return rv.map { PaperSizeRef(cast($0)) }
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    static func newFrom(ipp ipp_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) -> PaperSizeRef! {
        let rv = gtk_paper_size_new_from_ipp(ipp_name, width, height)
        return rv.map { PaperSizeRef(cast($0)) }
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    static func newFrom(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> PaperSizeRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_paper_size_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PaperSizeRef(cast($0)) }
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    static func newFrom(ppd ppd_name: UnsafePointer<gchar>, ppdDisplayName ppd_display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) -> PaperSizeRef! {
        let rv = gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        return rv.map { PaperSizeRef(cast($0)) }
    }
}

/// The `PaperSize` type acts as an owner of an underlying `GtkPaperSize` instance.
/// It provides the methods that can operate on this data type through `PaperSizeProtocol` conformance.
/// Use `PaperSize` as a strong reference or owner of a `GtkPaperSize` instance.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
/// 
/// Printing support has been added in GTK+ 2.10.
open class PaperSize: PaperSizeProtocol {
    /// Untyped pointer to the underlying `GtkPaperSize` instance.
    /// For type-safe access, use the generated, typed pointer `paper_size_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PaperSize` instance.
    public init(_ op: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PaperSizeProtocol`
    /// `GtkPaperSize` does not allow reference counting.
    public convenience init<T: PaperSizeProtocol>(_ other: T) {
        self.init(cast(other.paper_size_ptr))
        // no reference counting for GtkPaperSize, cannot ref(cast(paper_size_ptr))
    }

    /// Do-nothing destructor for`GtkPaperSize`.
    deinit {
        // no reference counting for GtkPaperSize, cannot unref(cast(paper_size_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPaperSize.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPaperSize.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPaperSize.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPaperSize>(opaquePointer))
    }

    /// Creates a new `GtkPaperSize` object by parsing a
    /// [PWG 5101.1-2002](ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf)
    /// paper name.
    /// 
    /// If `name` is `nil`, the default paper size is returned,
    /// see `gtk_paper_size_get_default()`.
    public convenience init( name: UnsafePointer<gchar>) {
        let rv = gtk_paper_size_new(name)
        self.init(cast(rv))
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    public convenience init(custom name: UnsafePointer<gchar>, displayName display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble, unit: Unit) {
        let rv = gtk_paper_size_new_custom(name, display_name, width, height, unit)
        self.init(cast(rv))
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    public convenience init(gvariant variant: VariantProtocol) {
        let rv = gtk_paper_size_new_from_gvariant(cast(variant.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    public convenience init(ipp ipp_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) {
        let rv = gtk_paper_size_new_from_ipp(ipp_name, width, height)
        self.init(cast(rv))
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    public convenience init(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_paper_size_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    public convenience init(ppd ppd_name: UnsafePointer<gchar>, ppdDisplayName ppd_display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) {
        let rv = gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        self.init(cast(rv))
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    public static func new(custom name: UnsafePointer<gchar>, displayName display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble, unit: Unit) -> PaperSize! {
        let rv = gtk_paper_size_new_custom(name, display_name, width, height, unit)
        return rv.map { PaperSize(cast($0)) }
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    public static func newFromG(gvariant variant: VariantProtocol) -> PaperSize! {
        let rv = gtk_paper_size_new_from_gvariant(cast(variant.ptr))
        return rv.map { PaperSize(cast($0)) }
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    public static func newFrom(ipp ipp_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) -> PaperSize! {
        let rv = gtk_paper_size_new_from_ipp(ipp_name, width, height)
        return rv.map { PaperSize(cast($0)) }
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    public static func newFrom(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> PaperSize! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_paper_size_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PaperSize(cast($0)) }
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    public static func newFrom(ppd ppd_name: UnsafePointer<gchar>, ppdDisplayName ppd_display_name: UnsafePointer<gchar>, width: gdouble, height: gdouble) -> PaperSize! {
        let rv = gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        return rv.map { PaperSize(cast($0)) }
    }

}

// MARK: - no PaperSize properties

// MARK: - no signals


public extension PaperSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPaperSize` instance.
    var paper_size_ptr: UnsafeMutablePointer<GtkPaperSize> { return ptr.assumingMemoryBound(to: GtkPaperSize.self) }

    /// Copies an existing `GtkPaperSize`.
    func copy() -> UnsafeMutablePointer<GtkPaperSize>! {
        let rv = gtk_paper_size_copy(cast(paper_size_ptr))
        return cast(rv)
    }

    /// Free the given `GtkPaperSize` object.
    func free() {
        gtk_paper_size_free(cast(paper_size_ptr))
    
    }

    /// Gets the default bottom margin for the `GtkPaperSize`.
    func getDefaultBottomMargin(unit: Unit) -> gdouble {
        let rv = gtk_paper_size_get_default_bottom_margin(cast(paper_size_ptr), unit)
        return rv
    }

    /// Gets the default left margin for the `GtkPaperSize`.
    func getDefaultLeftMargin(unit: Unit) -> gdouble {
        let rv = gtk_paper_size_get_default_left_margin(cast(paper_size_ptr), unit)
        return rv
    }

    /// Gets the default right margin for the `GtkPaperSize`.
    func getDefaultRightMargin(unit: Unit) -> gdouble {
        let rv = gtk_paper_size_get_default_right_margin(cast(paper_size_ptr), unit)
        return rv
    }

    /// Gets the default top margin for the `GtkPaperSize`.
    func getDefaultTopMargin(unit: Unit) -> gdouble {
        let rv = gtk_paper_size_get_default_top_margin(cast(paper_size_ptr), unit)
        return rv
    }

    /// Gets the human-readable name of the `GtkPaperSize`.
    func getDisplayName() -> String! {
        let rv = gtk_paper_size_get_display_name(cast(paper_size_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the paper height of the `GtkPaperSize`, in
    /// units of `unit`.
    func getHeight(unit: Unit) -> gdouble {
        let rv = gtk_paper_size_get_height(cast(paper_size_ptr), unit)
        return rv
    }

    /// Gets the name of the `GtkPaperSize`.
    func getName() -> String! {
        let rv = gtk_paper_size_get_name(cast(paper_size_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the PPD name of the `GtkPaperSize`, which
    /// may be `nil`.
    func getPpdName() -> String! {
        let rv = gtk_paper_size_get_ppd_name(cast(paper_size_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the paper width of the `GtkPaperSize`, in
    /// units of `unit`.
    func getWidth(unit: Unit) -> gdouble {
        let rv = gtk_paper_size_get_width(cast(paper_size_ptr), unit)
        return rv
    }

    /// Compares two `GtkPaperSize` objects.
    func isEqual(size2: PaperSizeProtocol) -> Bool {
        let rv = gtk_paper_size_is_equal(cast(paper_size_ptr), cast(size2.ptr))
        return Bool(rv != 0)
    }

    /// Changes the dimensions of a `size` to `width` x `height`.
    func setSize(width: gdouble, height: gdouble, unit: Unit) {
        gtk_paper_size_set_size(cast(paper_size_ptr), width, height, unit)
    
    }

    /// Serialize a paper size to an a{sv} variant.
    func toGvariant() -> UnsafeMutablePointer<GVariant>! {
        let rv = gtk_paper_size_to_gvariant(cast(paper_size_ptr))
        return cast(rv)
    }

    /// This function adds the paper size from `size` to `key_file`.
    func to(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) {
        gtk_paper_size_to_key_file(cast(paper_size_ptr), cast(key_file.ptr), group_name)
    
    }
    /// Gets the human-readable name of the `GtkPaperSize`.
    var displayName: String! {
        /// Gets the human-readable name of the `GtkPaperSize`.
        get {
            let rv = gtk_paper_size_get_display_name(cast(paper_size_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Returns `true` if `size` is not a standard paper size.
    var isCustom: Bool {
        /// Returns `true` if `size` is not a standard paper size.
        get {
            let rv = gtk_paper_size_is_custom(cast(paper_size_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns `true` if `size` is an IPP standard paper size.
    var isIpp: Bool {
        /// Returns `true` if `size` is an IPP standard paper size.
        get {
            let rv = gtk_paper_size_is_ipp(cast(paper_size_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the name of the `GtkPaperSize`.
    var name: String! {
        /// Gets the name of the `GtkPaperSize`.
        get {
            let rv = gtk_paper_size_get_name(cast(paper_size_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the PPD name of the `GtkPaperSize`, which
    /// may be `nil`.
    var ppdName: String! {
        /// Gets the PPD name of the `GtkPaperSize`, which
        /// may be `nil`.
        get {
            let rv = gtk_paper_size_get_ppd_name(cast(paper_size_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



// MARK: - PlacesSidebarClass Record

/// The `PlacesSidebarClassProtocol` protocol exposes the methods and properties of an underlying `GtkPlacesSidebarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PlacesSidebarClass`.
/// Alternatively, use `PlacesSidebarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PlacesSidebarClassProtocol {
    /// Untyped pointer to the underlying `GtkPlacesSidebarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPlacesSidebarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPlacesSidebarClass> { get }
}

/// The `PlacesSidebarClassRef` type acts as a lightweight Swift reference to an underlying `GtkPlacesSidebarClass` instance.
/// It exposes methods that can operate on this data type through `PlacesSidebarClassProtocol` conformance.
/// Use `PlacesSidebarClassRef` only as an `unowned` reference to an existing `GtkPlacesSidebarClass` instance.
///

public struct PlacesSidebarClassRef: PlacesSidebarClassProtocol {
    /// Untyped pointer to the underlying `GtkPlacesSidebarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PlacesSidebarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPlacesSidebarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PlacesSidebarClassProtocol`
    init<T: PlacesSidebarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PlacesSidebarClass` type acts as an owner of an underlying `GtkPlacesSidebarClass` instance.
/// It provides the methods that can operate on this data type through `PlacesSidebarClassProtocol` conformance.
/// Use `PlacesSidebarClass` as a strong reference or owner of a `GtkPlacesSidebarClass` instance.
///

open class PlacesSidebarClass: PlacesSidebarClassProtocol {
    /// Untyped pointer to the underlying `GtkPlacesSidebarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PlacesSidebarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPlacesSidebarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PlacesSidebarClassProtocol`
    /// `GtkPlacesSidebarClass` does not allow reference counting.
    public convenience init<T: PlacesSidebarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPlacesSidebarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPlacesSidebarClass`.
    deinit {
        // no reference counting for GtkPlacesSidebarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPlacesSidebarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPlacesSidebarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPlacesSidebarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPlacesSidebarClass>(opaquePointer))
    }



}

// MARK: - no PlacesSidebarClass properties

// MARK: - no signals


public extension PlacesSidebarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPlacesSidebarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPlacesSidebarClass> { return ptr.assumingMemoryBound(to: GtkPlacesSidebarClass.self) }

}



// MARK: - PopoverAccessibleClass Record

/// The `PopoverAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverAccessibleClass`.
/// Alternatively, use `PopoverAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPopoverAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverAccessibleClass> { get }
}

/// The `PopoverAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `PopoverAccessibleClassProtocol` conformance.
/// Use `PopoverAccessibleClassRef` only as an `unowned` reference to an existing `GtkPopoverAccessibleClass` instance.
///

public struct PopoverAccessibleClassRef: PopoverAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PopoverAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPopoverAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PopoverAccessibleClassProtocol`
    init<T: PopoverAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PopoverAccessibleClass` type acts as an owner of an underlying `GtkPopoverAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `PopoverAccessibleClassProtocol` conformance.
/// Use `PopoverAccessibleClass` as a strong reference or owner of a `GtkPopoverAccessibleClass` instance.
///

open class PopoverAccessibleClass: PopoverAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PopoverAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPopoverAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PopoverAccessibleClassProtocol`
    /// `GtkPopoverAccessibleClass` does not allow reference counting.
    public convenience init<T: PopoverAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPopoverAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPopoverAccessibleClass`.
    deinit {
        // no reference counting for GtkPopoverAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPopoverAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPopoverAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPopoverAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPopoverAccessibleClass>(opaquePointer))
    }



}

// MARK: - no PopoverAccessibleClass properties

// MARK: - no signals


public extension PopoverAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverAccessibleClass> { return ptr.assumingMemoryBound(to: GtkPopoverAccessibleClass.self) }

}



// MARK: - PopoverClass Record

/// The `PopoverClassProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverClass`.
/// Alternatively, use `PopoverClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPopoverClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverClass> { get }
}

/// The `PopoverClassRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverClass` instance.
/// It exposes methods that can operate on this data type through `PopoverClassProtocol` conformance.
/// Use `PopoverClassRef` only as an `unowned` reference to an existing `GtkPopoverClass` instance.
///

public struct PopoverClassRef: PopoverClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PopoverClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPopoverClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PopoverClassProtocol`
    init<T: PopoverClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PopoverClass` type acts as an owner of an underlying `GtkPopoverClass` instance.
/// It provides the methods that can operate on this data type through `PopoverClassProtocol` conformance.
/// Use `PopoverClass` as a strong reference or owner of a `GtkPopoverClass` instance.
///

open class PopoverClass: PopoverClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PopoverClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPopoverClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PopoverClassProtocol`
    /// `GtkPopoverClass` does not allow reference counting.
    public convenience init<T: PopoverClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPopoverClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPopoverClass`.
    deinit {
        // no reference counting for GtkPopoverClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPopoverClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPopoverClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPopoverClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPopoverClass>(opaquePointer))
    }



}

// MARK: - no PopoverClass properties

// MARK: - no signals


public extension PopoverClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverClass> { return ptr.assumingMemoryBound(to: GtkPopoverClass.self) }

}



// MARK: - PopoverMenuClass Record

/// The `PopoverMenuClassProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverMenuClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverMenuClass`.
/// Alternatively, use `PopoverMenuClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverMenuClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverMenuClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPopoverMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverMenuClass> { get }
}

/// The `PopoverMenuClassRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverMenuClass` instance.
/// It exposes methods that can operate on this data type through `PopoverMenuClassProtocol` conformance.
/// Use `PopoverMenuClassRef` only as an `unowned` reference to an existing `GtkPopoverMenuClass` instance.
///

public struct PopoverMenuClassRef: PopoverMenuClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PopoverMenuClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPopoverMenuClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PopoverMenuClassProtocol`
    init<T: PopoverMenuClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PopoverMenuClass` type acts as an owner of an underlying `GtkPopoverMenuClass` instance.
/// It provides the methods that can operate on this data type through `PopoverMenuClassProtocol` conformance.
/// Use `PopoverMenuClass` as a strong reference or owner of a `GtkPopoverMenuClass` instance.
///

open class PopoverMenuClass: PopoverMenuClassProtocol {
    /// Untyped pointer to the underlying `GtkPopoverMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PopoverMenuClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPopoverMenuClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PopoverMenuClassProtocol`
    /// `GtkPopoverMenuClass` does not allow reference counting.
    public convenience init<T: PopoverMenuClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPopoverMenuClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPopoverMenuClass`.
    deinit {
        // no reference counting for GtkPopoverMenuClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPopoverMenuClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPopoverMenuClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPopoverMenuClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPopoverMenuClass>(opaquePointer))
    }



}

// MARK: - no PopoverMenuClass properties

// MARK: - no signals


public extension PopoverMenuClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverMenuClass> { return ptr.assumingMemoryBound(to: GtkPopoverMenuClass.self) }

}



// MARK: - PopoverPrivate Record

/// The `PopoverPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverPrivate`.
/// Alternatively, use `PopoverPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPopoverPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPopoverPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverPrivate> { get }
}

/// The `PopoverPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverPrivate` instance.
/// It exposes methods that can operate on this data type through `PopoverPrivateProtocol` conformance.
/// Use `PopoverPrivateRef` only as an `unowned` reference to an existing `GtkPopoverPrivate` instance.
///

public struct PopoverPrivateRef: PopoverPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPopoverPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PopoverPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPopoverPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PopoverPrivateProtocol`
    init<T: PopoverPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PopoverPrivate` type acts as an owner of an underlying `GtkPopoverPrivate` instance.
/// It provides the methods that can operate on this data type through `PopoverPrivateProtocol` conformance.
/// Use `PopoverPrivate` as a strong reference or owner of a `GtkPopoverPrivate` instance.
///

open class PopoverPrivate: PopoverPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPopoverPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PopoverPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkPopoverPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PopoverPrivateProtocol`
    /// `GtkPopoverPrivate` does not allow reference counting.
    public convenience init<T: PopoverPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPopoverPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPopoverPrivate`.
    deinit {
        // no reference counting for GtkPopoverPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPopoverPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPopoverPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPopoverPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPopoverPrivate>(opaquePointer))
    }



}

// MARK: - no PopoverPrivate properties

// MARK: - no signals


public extension PopoverPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverPrivate> { return ptr.assumingMemoryBound(to: GtkPopoverPrivate.self) }

}



// MARK: - PrintOperationClass Record

/// The `PrintOperationClassProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationClass`.
/// Alternatively, use `PrintOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationClassProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPrintOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationClass> { get }
}

/// The `PrintOperationClassRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationClass` instance.
/// It exposes methods that can operate on this data type through `PrintOperationClassProtocol` conformance.
/// Use `PrintOperationClassRef` only as an `unowned` reference to an existing `GtkPrintOperationClass` instance.
///

public struct PrintOperationClassRef: PrintOperationClassProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrintOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPrintOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrintOperationClassProtocol`
    init<T: PrintOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PrintOperationClass` type acts as an owner of an underlying `GtkPrintOperationClass` instance.
/// It provides the methods that can operate on this data type through `PrintOperationClassProtocol` conformance.
/// Use `PrintOperationClass` as a strong reference or owner of a `GtkPrintOperationClass` instance.
///

open class PrintOperationClass: PrintOperationClassProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PrintOperationClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkPrintOperationClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PrintOperationClassProtocol`
    /// `GtkPrintOperationClass` does not allow reference counting.
    public convenience init<T: PrintOperationClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPrintOperationClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPrintOperationClass`.
    deinit {
        // no reference counting for GtkPrintOperationClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPrintOperationClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPrintOperationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPrintOperationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPrintOperationClass>(opaquePointer))
    }



}

// MARK: - no PrintOperationClass properties

// MARK: - no signals


public extension PrintOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationClass> { return ptr.assumingMemoryBound(to: GtkPrintOperationClass.self) }

}



// MARK: - PrintOperationPreviewIface Record

/// The `PrintOperationPreviewIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationPreviewIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationPreviewIface`.
/// Alternatively, use `PrintOperationPreviewIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationPreviewIfaceProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationPreviewIface> { get }
}

/// The `PrintOperationPreviewIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationPreviewIface` instance.
/// It exposes methods that can operate on this data type through `PrintOperationPreviewIfaceProtocol` conformance.
/// Use `PrintOperationPreviewIfaceRef` only as an `unowned` reference to an existing `GtkPrintOperationPreviewIface` instance.
///

public struct PrintOperationPreviewIfaceRef: PrintOperationPreviewIfaceProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrintOperationPreviewIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPrintOperationPreviewIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrintOperationPreviewIfaceProtocol`
    init<T: PrintOperationPreviewIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PrintOperationPreviewIface` type acts as an owner of an underlying `GtkPrintOperationPreviewIface` instance.
/// It provides the methods that can operate on this data type through `PrintOperationPreviewIfaceProtocol` conformance.
/// Use `PrintOperationPreviewIface` as a strong reference or owner of a `GtkPrintOperationPreviewIface` instance.
///

open class PrintOperationPreviewIface: PrintOperationPreviewIfaceProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PrintOperationPreviewIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkPrintOperationPreviewIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PrintOperationPreviewIfaceProtocol`
    /// `GtkPrintOperationPreviewIface` does not allow reference counting.
    public convenience init<T: PrintOperationPreviewIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPrintOperationPreviewIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPrintOperationPreviewIface`.
    deinit {
        // no reference counting for GtkPrintOperationPreviewIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPrintOperationPreviewIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPrintOperationPreviewIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPrintOperationPreviewIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPrintOperationPreviewIface>(opaquePointer))
    }



}

// MARK: - no PrintOperationPreviewIface properties

// MARK: - no signals


public extension PrintOperationPreviewIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationPreviewIface` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationPreviewIface> { return ptr.assumingMemoryBound(to: GtkPrintOperationPreviewIface.self) }

}



// MARK: - PrintOperationPrivate Record

/// The `PrintOperationPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationPrivate`.
/// Alternatively, use `PrintOperationPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPrintOperationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationPrivate> { get }
}

/// The `PrintOperationPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationPrivate` instance.
/// It exposes methods that can operate on this data type through `PrintOperationPrivateProtocol` conformance.
/// Use `PrintOperationPrivateRef` only as an `unowned` reference to an existing `GtkPrintOperationPrivate` instance.
///

public struct PrintOperationPrivateRef: PrintOperationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrintOperationPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPrintOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrintOperationPrivateProtocol`
    init<T: PrintOperationPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PrintOperationPrivate` type acts as an owner of an underlying `GtkPrintOperationPrivate` instance.
/// It provides the methods that can operate on this data type through `PrintOperationPrivateProtocol` conformance.
/// Use `PrintOperationPrivate` as a strong reference or owner of a `GtkPrintOperationPrivate` instance.
///

open class PrintOperationPrivate: PrintOperationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PrintOperationPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkPrintOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PrintOperationPrivateProtocol`
    /// `GtkPrintOperationPrivate` does not allow reference counting.
    public convenience init<T: PrintOperationPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkPrintOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkPrintOperationPrivate`.
    deinit {
        // no reference counting for GtkPrintOperationPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPrintOperationPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPrintOperationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPrintOperationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPrintOperationPrivate>(opaquePointer))
    }



}

// MARK: - no PrintOperationPrivate properties

// MARK: - no signals


public extension PrintOperationPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationPrivate> { return ptr.assumingMemoryBound(to: GtkPrintOperationPrivate.self) }

}



// MARK: - ProgressBarAccessibleClass Record

/// The `ProgressBarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBarAccessibleClass`.
/// Alternatively, use `ProgressBarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProgressBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkProgressBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarAccessibleClass> { get }
}

/// The `ProgressBarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ProgressBarAccessibleClassProtocol` conformance.
/// Use `ProgressBarAccessibleClassRef` only as an `unowned` reference to an existing `GtkProgressBarAccessibleClass` instance.
///

public struct ProgressBarAccessibleClassRef: ProgressBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProgressBarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkProgressBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProgressBarAccessibleClassProtocol`
    init<T: ProgressBarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProgressBarAccessibleClass` type acts as an owner of an underlying `GtkProgressBarAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ProgressBarAccessibleClassProtocol` conformance.
/// Use `ProgressBarAccessibleClass` as a strong reference or owner of a `GtkProgressBarAccessibleClass` instance.
///

open class ProgressBarAccessibleClass: ProgressBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProgressBarAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkProgressBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ProgressBarAccessibleClassProtocol`
    /// `GtkProgressBarAccessibleClass` does not allow reference counting.
    public convenience init<T: ProgressBarAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkProgressBarAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkProgressBarAccessibleClass`.
    deinit {
        // no reference counting for GtkProgressBarAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkProgressBarAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkProgressBarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkProgressBarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkProgressBarAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ProgressBarAccessibleClass properties

// MARK: - no signals


public extension ProgressBarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarAccessibleClass> { return ptr.assumingMemoryBound(to: GtkProgressBarAccessibleClass.self) }

}



// MARK: - ProgressBarAccessiblePrivate Record

/// The `ProgressBarAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBarAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBarAccessiblePrivate`.
/// Alternatively, use `ProgressBarAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProgressBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkProgressBarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarAccessiblePrivate> { get }
}

/// The `ProgressBarAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBarAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ProgressBarAccessiblePrivateProtocol` conformance.
/// Use `ProgressBarAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkProgressBarAccessiblePrivate` instance.
///

public struct ProgressBarAccessiblePrivateRef: ProgressBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProgressBarAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkProgressBarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProgressBarAccessiblePrivateProtocol`
    init<T: ProgressBarAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProgressBarAccessiblePrivate` type acts as an owner of an underlying `GtkProgressBarAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ProgressBarAccessiblePrivateProtocol` conformance.
/// Use `ProgressBarAccessiblePrivate` as a strong reference or owner of a `GtkProgressBarAccessiblePrivate` instance.
///

open class ProgressBarAccessiblePrivate: ProgressBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProgressBarAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkProgressBarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ProgressBarAccessiblePrivateProtocol`
    /// `GtkProgressBarAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ProgressBarAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkProgressBarAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkProgressBarAccessiblePrivate`.
    deinit {
        // no reference counting for GtkProgressBarAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkProgressBarAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkProgressBarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkProgressBarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkProgressBarAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ProgressBarAccessiblePrivate properties

// MARK: - no signals


public extension ProgressBarAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkProgressBarAccessiblePrivate.self) }

}



// MARK: - ProgressBarClass Record

/// The `ProgressBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBarClass`.
/// Alternatively, use `ProgressBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProgressBarClassProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkProgressBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarClass> { get }
}

/// The `ProgressBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBarClass` instance.
/// It exposes methods that can operate on this data type through `ProgressBarClassProtocol` conformance.
/// Use `ProgressBarClassRef` only as an `unowned` reference to an existing `GtkProgressBarClass` instance.
///

public struct ProgressBarClassRef: ProgressBarClassProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProgressBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkProgressBarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProgressBarClassProtocol`
    init<T: ProgressBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProgressBarClass` type acts as an owner of an underlying `GtkProgressBarClass` instance.
/// It provides the methods that can operate on this data type through `ProgressBarClassProtocol` conformance.
/// Use `ProgressBarClass` as a strong reference or owner of a `GtkProgressBarClass` instance.
///

open class ProgressBarClass: ProgressBarClassProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProgressBarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkProgressBarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ProgressBarClassProtocol`
    /// `GtkProgressBarClass` does not allow reference counting.
    public convenience init<T: ProgressBarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkProgressBarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkProgressBarClass`.
    deinit {
        // no reference counting for GtkProgressBarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkProgressBarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkProgressBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkProgressBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkProgressBarClass>(opaquePointer))
    }



}

// MARK: - no ProgressBarClass properties

// MARK: - no signals


public extension ProgressBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarClass> { return ptr.assumingMemoryBound(to: GtkProgressBarClass.self) }

}



// MARK: - ProgressBarPrivate Record

/// The `ProgressBarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBarPrivate`.
/// Alternatively, use `ProgressBarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProgressBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkProgressBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarPrivate> { get }
}

/// The `ProgressBarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBarPrivate` instance.
/// It exposes methods that can operate on this data type through `ProgressBarPrivateProtocol` conformance.
/// Use `ProgressBarPrivateRef` only as an `unowned` reference to an existing `GtkProgressBarPrivate` instance.
///

public struct ProgressBarPrivateRef: ProgressBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProgressBarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkProgressBarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProgressBarPrivateProtocol`
    init<T: ProgressBarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProgressBarPrivate` type acts as an owner of an underlying `GtkProgressBarPrivate` instance.
/// It provides the methods that can operate on this data type through `ProgressBarPrivateProtocol` conformance.
/// Use `ProgressBarPrivate` as a strong reference or owner of a `GtkProgressBarPrivate` instance.
///

open class ProgressBarPrivate: ProgressBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProgressBarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkProgressBarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ProgressBarPrivateProtocol`
    /// `GtkProgressBarPrivate` does not allow reference counting.
    public convenience init<T: ProgressBarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkProgressBarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkProgressBarPrivate`.
    deinit {
        // no reference counting for GtkProgressBarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkProgressBarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkProgressBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkProgressBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkProgressBarPrivate>(opaquePointer))
    }



}

// MARK: - no ProgressBarPrivate properties

// MARK: - no signals


public extension ProgressBarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkProgressBarPrivate> { return ptr.assumingMemoryBound(to: GtkProgressBarPrivate.self) }

}



// MARK: - RadioActionClass Record

/// The `RadioActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioActionClass`.
/// Alternatively, use `RadioActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioActionClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionClass> { get }
}

/// The `RadioActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioActionClass` instance.
/// It exposes methods that can operate on this data type through `RadioActionClassProtocol` conformance.
/// Use `RadioActionClassRef` only as an `unowned` reference to an existing `GtkRadioActionClass` instance.
///

public struct RadioActionClassRef: RadioActionClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioActionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioActionClassProtocol`
    init<T: RadioActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioActionClass` type acts as an owner of an underlying `GtkRadioActionClass` instance.
/// It provides the methods that can operate on this data type through `RadioActionClassProtocol` conformance.
/// Use `RadioActionClass` as a strong reference or owner of a `GtkRadioActionClass` instance.
///

open class RadioActionClass: RadioActionClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioActionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioActionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioActionClassProtocol`
    /// `GtkRadioActionClass` does not allow reference counting.
    public convenience init<T: RadioActionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioActionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioActionClass`.
    deinit {
        // no reference counting for GtkRadioActionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioActionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioActionClass>(opaquePointer))
    }



}

// MARK: - no RadioActionClass properties

// MARK: - no signals


public extension RadioActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionClass> { return ptr.assumingMemoryBound(to: GtkRadioActionClass.self) }

}



