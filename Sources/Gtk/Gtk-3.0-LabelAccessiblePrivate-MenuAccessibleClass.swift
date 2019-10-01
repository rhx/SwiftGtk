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

// MARK: - LabelAccessiblePrivate Record

/// The `LabelAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLabelAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelAccessiblePrivate`.
/// Alternatively, use `LabelAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLabelAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelAccessiblePrivate> { get }
}

/// The `LabelAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLabelAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `LabelAccessiblePrivateProtocol` conformance.
/// Use `LabelAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkLabelAccessiblePrivate` instance.
///

public struct LabelAccessiblePrivateRef: LabelAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LabelAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLabelAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LabelAccessiblePrivateProtocol`
    init<T: LabelAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelAccessiblePrivate` type acts as an owner of an underlying `GtkLabelAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `LabelAccessiblePrivateProtocol` conformance.
/// Use `LabelAccessiblePrivate` as a strong reference or owner of a `GtkLabelAccessiblePrivate` instance.
///

open class LabelAccessiblePrivate: LabelAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LabelAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLabelAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LabelAccessiblePrivateProtocol`
    /// `GtkLabelAccessiblePrivate` does not allow reference counting.
    public convenience init<T: LabelAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLabelAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLabelAccessiblePrivate`.
    deinit {
        // no reference counting for GtkLabelAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLabelAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLabelAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLabelAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLabelAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no LabelAccessiblePrivate properties

// MARK: - no signals


public extension LabelAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkLabelAccessiblePrivate.self) }

}



// MARK: - LabelClass Record

/// The `LabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelClass`.
/// Alternatively, use `LabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelClassProtocol {
    /// Untyped pointer to the underlying `GtkLabelClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelClass> { get }
}

/// The `LabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkLabelClass` instance.
/// It exposes methods that can operate on this data type through `LabelClassProtocol` conformance.
/// Use `LabelClassRef` only as an `unowned` reference to an existing `GtkLabelClass` instance.
///

public struct LabelClassRef: LabelClassProtocol {
    /// Untyped pointer to the underlying `GtkLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LabelClassProtocol`
    init<T: LabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelClass` type acts as an owner of an underlying `GtkLabelClass` instance.
/// It provides the methods that can operate on this data type through `LabelClassProtocol` conformance.
/// Use `LabelClass` as a strong reference or owner of a `GtkLabelClass` instance.
///

open class LabelClass: LabelClassProtocol {
    /// Untyped pointer to the underlying `GtkLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LabelClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLabelClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LabelClassProtocol`
    /// `GtkLabelClass` does not allow reference counting.
    public convenience init<T: LabelClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLabelClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLabelClass`.
    deinit {
        // no reference counting for GtkLabelClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLabelClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLabelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLabelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLabelClass>(opaquePointer))
    }



}

// MARK: - no LabelClass properties

// MARK: - no signals


public extension LabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelClass> { return ptr.assumingMemoryBound(to: GtkLabelClass.self) }

}



// MARK: - LabelPrivate Record

/// The `LabelPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLabelPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelPrivate`.
/// Alternatively, use `LabelPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLabelPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLabelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelPrivate> { get }
}

/// The `LabelPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLabelPrivate` instance.
/// It exposes methods that can operate on this data type through `LabelPrivateProtocol` conformance.
/// Use `LabelPrivateRef` only as an `unowned` reference to an existing `GtkLabelPrivate` instance.
///

public struct LabelPrivateRef: LabelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLabelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LabelPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLabelPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LabelPrivateProtocol`
    init<T: LabelPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelPrivate` type acts as an owner of an underlying `GtkLabelPrivate` instance.
/// It provides the methods that can operate on this data type through `LabelPrivateProtocol` conformance.
/// Use `LabelPrivate` as a strong reference or owner of a `GtkLabelPrivate` instance.
///

open class LabelPrivate: LabelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLabelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LabelPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLabelPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LabelPrivateProtocol`
    /// `GtkLabelPrivate` does not allow reference counting.
    public convenience init<T: LabelPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLabelPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLabelPrivate`.
    deinit {
        // no reference counting for GtkLabelPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLabelPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLabelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLabelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLabelPrivate>(opaquePointer))
    }



}

// MARK: - no LabelPrivate properties

// MARK: - no signals


public extension LabelPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelPrivate> { return ptr.assumingMemoryBound(to: GtkLabelPrivate.self) }

}



// MARK: - LabelSelectionInfo Record

/// The `LabelSelectionInfoProtocol` protocol exposes the methods and properties of an underlying `GtkLabelSelectionInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelSelectionInfo`.
/// Alternatively, use `LabelSelectionInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelSelectionInfoProtocol {
    /// Untyped pointer to the underlying `GtkLabelSelectionInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLabelSelectionInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelSelectionInfo> { get }
}

/// The `LabelSelectionInfoRef` type acts as a lightweight Swift reference to an underlying `GtkLabelSelectionInfo` instance.
/// It exposes methods that can operate on this data type through `LabelSelectionInfoProtocol` conformance.
/// Use `LabelSelectionInfoRef` only as an `unowned` reference to an existing `GtkLabelSelectionInfo` instance.
///

public struct LabelSelectionInfoRef: LabelSelectionInfoProtocol {
    /// Untyped pointer to the underlying `GtkLabelSelectionInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LabelSelectionInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLabelSelectionInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LabelSelectionInfoProtocol`
    init<T: LabelSelectionInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelSelectionInfo` type acts as an owner of an underlying `GtkLabelSelectionInfo` instance.
/// It provides the methods that can operate on this data type through `LabelSelectionInfoProtocol` conformance.
/// Use `LabelSelectionInfo` as a strong reference or owner of a `GtkLabelSelectionInfo` instance.
///

open class LabelSelectionInfo: LabelSelectionInfoProtocol {
    /// Untyped pointer to the underlying `GtkLabelSelectionInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LabelSelectionInfo` instance.
    public init(_ op: UnsafeMutablePointer<GtkLabelSelectionInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LabelSelectionInfoProtocol`
    /// `GtkLabelSelectionInfo` does not allow reference counting.
    public convenience init<T: LabelSelectionInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLabelSelectionInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLabelSelectionInfo`.
    deinit {
        // no reference counting for GtkLabelSelectionInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLabelSelectionInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLabelSelectionInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLabelSelectionInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLabelSelectionInfo>(opaquePointer))
    }



}

// MARK: - no LabelSelectionInfo properties

// MARK: - no signals


public extension LabelSelectionInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelSelectionInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelSelectionInfo> { return ptr.assumingMemoryBound(to: GtkLabelSelectionInfo.self) }

}



// MARK: - LayoutClass Record

/// The `LayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutClass`.
/// Alternatively, use `LayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LayoutClassProtocol {
    /// Untyped pointer to the underlying `GtkLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLayoutClass> { get }
}

/// The `LayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkLayoutClass` instance.
/// It exposes methods that can operate on this data type through `LayoutClassProtocol` conformance.
/// Use `LayoutClassRef` only as an `unowned` reference to an existing `GtkLayoutClass` instance.
///

public struct LayoutClassRef: LayoutClassProtocol {
    /// Untyped pointer to the underlying `GtkLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LayoutClassProtocol`
    init<T: LayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LayoutClass` type acts as an owner of an underlying `GtkLayoutClass` instance.
/// It provides the methods that can operate on this data type through `LayoutClassProtocol` conformance.
/// Use `LayoutClass` as a strong reference or owner of a `GtkLayoutClass` instance.
///

open class LayoutClass: LayoutClassProtocol {
    /// Untyped pointer to the underlying `GtkLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LayoutClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLayoutClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LayoutClassProtocol`
    /// `GtkLayoutClass` does not allow reference counting.
    public convenience init<T: LayoutClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLayoutClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLayoutClass`.
    deinit {
        // no reference counting for GtkLayoutClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLayoutClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLayoutClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLayoutClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLayoutClass>(opaquePointer))
    }



}

// MARK: - no LayoutClass properties

// MARK: - no signals


public extension LayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLayoutClass> { return ptr.assumingMemoryBound(to: GtkLayoutClass.self) }

}



// MARK: - LayoutPrivate Record

/// The `LayoutPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLayoutPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutPrivate`.
/// Alternatively, use `LayoutPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LayoutPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLayoutPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLayoutPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLayoutPrivate> { get }
}

/// The `LayoutPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLayoutPrivate` instance.
/// It exposes methods that can operate on this data type through `LayoutPrivateProtocol` conformance.
/// Use `LayoutPrivateRef` only as an `unowned` reference to an existing `GtkLayoutPrivate` instance.
///

public struct LayoutPrivateRef: LayoutPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLayoutPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LayoutPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLayoutPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LayoutPrivateProtocol`
    init<T: LayoutPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LayoutPrivate` type acts as an owner of an underlying `GtkLayoutPrivate` instance.
/// It provides the methods that can operate on this data type through `LayoutPrivateProtocol` conformance.
/// Use `LayoutPrivate` as a strong reference or owner of a `GtkLayoutPrivate` instance.
///

open class LayoutPrivate: LayoutPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLayoutPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LayoutPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLayoutPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LayoutPrivateProtocol`
    /// `GtkLayoutPrivate` does not allow reference counting.
    public convenience init<T: LayoutPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLayoutPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLayoutPrivate`.
    deinit {
        // no reference counting for GtkLayoutPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLayoutPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLayoutPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLayoutPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLayoutPrivate>(opaquePointer))
    }



}

// MARK: - no LayoutPrivate properties

// MARK: - no signals


public extension LayoutPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayoutPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLayoutPrivate> { return ptr.assumingMemoryBound(to: GtkLayoutPrivate.self) }

}



// MARK: - LevelBarAccessibleClass Record

/// The `LevelBarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarAccessibleClass`.
/// Alternatively, use `LevelBarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLevelBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarAccessibleClass> { get }
}

/// The `LevelBarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LevelBarAccessibleClassProtocol` conformance.
/// Use `LevelBarAccessibleClassRef` only as an `unowned` reference to an existing `GtkLevelBarAccessibleClass` instance.
///

public struct LevelBarAccessibleClassRef: LevelBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LevelBarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLevelBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LevelBarAccessibleClassProtocol`
    init<T: LevelBarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LevelBarAccessibleClass` type acts as an owner of an underlying `GtkLevelBarAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `LevelBarAccessibleClassProtocol` conformance.
/// Use `LevelBarAccessibleClass` as a strong reference or owner of a `GtkLevelBarAccessibleClass` instance.
///

open class LevelBarAccessibleClass: LevelBarAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LevelBarAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLevelBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LevelBarAccessibleClassProtocol`
    /// `GtkLevelBarAccessibleClass` does not allow reference counting.
    public convenience init<T: LevelBarAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLevelBarAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLevelBarAccessibleClass`.
    deinit {
        // no reference counting for GtkLevelBarAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLevelBarAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLevelBarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLevelBarAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLevelBarAccessibleClass>(opaquePointer))
    }



}

// MARK: - no LevelBarAccessibleClass properties

// MARK: - no signals


public extension LevelBarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarAccessibleClass> { return ptr.assumingMemoryBound(to: GtkLevelBarAccessibleClass.self) }

}



// MARK: - LevelBarAccessiblePrivate Record

/// The `LevelBarAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarAccessiblePrivate`.
/// Alternatively, use `LevelBarAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLevelBarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarAccessiblePrivate> { get }
}

/// The `LevelBarAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `LevelBarAccessiblePrivateProtocol` conformance.
/// Use `LevelBarAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkLevelBarAccessiblePrivate` instance.
///

public struct LevelBarAccessiblePrivateRef: LevelBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LevelBarAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLevelBarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LevelBarAccessiblePrivateProtocol`
    init<T: LevelBarAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LevelBarAccessiblePrivate` type acts as an owner of an underlying `GtkLevelBarAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `LevelBarAccessiblePrivateProtocol` conformance.
/// Use `LevelBarAccessiblePrivate` as a strong reference or owner of a `GtkLevelBarAccessiblePrivate` instance.
///

open class LevelBarAccessiblePrivate: LevelBarAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LevelBarAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLevelBarAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LevelBarAccessiblePrivateProtocol`
    /// `GtkLevelBarAccessiblePrivate` does not allow reference counting.
    public convenience init<T: LevelBarAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLevelBarAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLevelBarAccessiblePrivate`.
    deinit {
        // no reference counting for GtkLevelBarAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLevelBarAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLevelBarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLevelBarAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLevelBarAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no LevelBarAccessiblePrivate properties

// MARK: - no signals


public extension LevelBarAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkLevelBarAccessiblePrivate.self) }

}



// MARK: - LevelBarClass Record

/// The `LevelBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarClass`.
/// Alternatively, use `LevelBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarClassProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLevelBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarClass> { get }
}

/// The `LevelBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarClass` instance.
/// It exposes methods that can operate on this data type through `LevelBarClassProtocol` conformance.
/// Use `LevelBarClassRef` only as an `unowned` reference to an existing `GtkLevelBarClass` instance.
///

public struct LevelBarClassRef: LevelBarClassProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LevelBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLevelBarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LevelBarClassProtocol`
    init<T: LevelBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LevelBarClass` type acts as an owner of an underlying `GtkLevelBarClass` instance.
/// It provides the methods that can operate on this data type through `LevelBarClassProtocol` conformance.
/// Use `LevelBarClass` as a strong reference or owner of a `GtkLevelBarClass` instance.
///

open class LevelBarClass: LevelBarClassProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LevelBarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLevelBarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LevelBarClassProtocol`
    /// `GtkLevelBarClass` does not allow reference counting.
    public convenience init<T: LevelBarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLevelBarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLevelBarClass`.
    deinit {
        // no reference counting for GtkLevelBarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLevelBarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLevelBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLevelBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLevelBarClass>(opaquePointer))
    }



}

// MARK: - no LevelBarClass properties

// MARK: - no signals


public extension LevelBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarClass> { return ptr.assumingMemoryBound(to: GtkLevelBarClass.self) }

}



// MARK: - LevelBarPrivate Record

/// The `LevelBarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarPrivate`.
/// Alternatively, use `LevelBarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLevelBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarPrivate> { get }
}

/// The `LevelBarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarPrivate` instance.
/// It exposes methods that can operate on this data type through `LevelBarPrivateProtocol` conformance.
/// Use `LevelBarPrivateRef` only as an `unowned` reference to an existing `GtkLevelBarPrivate` instance.
///

public struct LevelBarPrivateRef: LevelBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LevelBarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLevelBarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LevelBarPrivateProtocol`
    init<T: LevelBarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LevelBarPrivate` type acts as an owner of an underlying `GtkLevelBarPrivate` instance.
/// It provides the methods that can operate on this data type through `LevelBarPrivateProtocol` conformance.
/// Use `LevelBarPrivate` as a strong reference or owner of a `GtkLevelBarPrivate` instance.
///

open class LevelBarPrivate: LevelBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LevelBarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLevelBarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LevelBarPrivateProtocol`
    /// `GtkLevelBarPrivate` does not allow reference counting.
    public convenience init<T: LevelBarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLevelBarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLevelBarPrivate`.
    deinit {
        // no reference counting for GtkLevelBarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLevelBarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLevelBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLevelBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLevelBarPrivate>(opaquePointer))
    }



}

// MARK: - no LevelBarPrivate properties

// MARK: - no signals


public extension LevelBarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarPrivate> { return ptr.assumingMemoryBound(to: GtkLevelBarPrivate.self) }

}



// MARK: - LinkButtonAccessibleClass Record

/// The `LinkButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonAccessibleClass`.
/// Alternatively, use `LinkButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LinkButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLinkButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonAccessibleClass> { get }
}

/// The `LinkButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LinkButtonAccessibleClassProtocol` conformance.
/// Use `LinkButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkLinkButtonAccessibleClass` instance.
///

public struct LinkButtonAccessibleClassRef: LinkButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LinkButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLinkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LinkButtonAccessibleClassProtocol`
    init<T: LinkButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LinkButtonAccessibleClass` type acts as an owner of an underlying `GtkLinkButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `LinkButtonAccessibleClassProtocol` conformance.
/// Use `LinkButtonAccessibleClass` as a strong reference or owner of a `GtkLinkButtonAccessibleClass` instance.
///

open class LinkButtonAccessibleClass: LinkButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LinkButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLinkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LinkButtonAccessibleClassProtocol`
    /// `GtkLinkButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: LinkButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLinkButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLinkButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkLinkButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLinkButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLinkButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLinkButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLinkButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no LinkButtonAccessibleClass properties

// MARK: - no signals


public extension LinkButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkLinkButtonAccessibleClass.self) }

}



// MARK: - LinkButtonAccessiblePrivate Record

/// The `LinkButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonAccessiblePrivate`.
/// Alternatively, use `LinkButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LinkButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLinkButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonAccessiblePrivate> { get }
}

/// The `LinkButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `LinkButtonAccessiblePrivateProtocol` conformance.
/// Use `LinkButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkLinkButtonAccessiblePrivate` instance.
///

public struct LinkButtonAccessiblePrivateRef: LinkButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LinkButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLinkButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LinkButtonAccessiblePrivateProtocol`
    init<T: LinkButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LinkButtonAccessiblePrivate` type acts as an owner of an underlying `GtkLinkButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `LinkButtonAccessiblePrivateProtocol` conformance.
/// Use `LinkButtonAccessiblePrivate` as a strong reference or owner of a `GtkLinkButtonAccessiblePrivate` instance.
///

open class LinkButtonAccessiblePrivate: LinkButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LinkButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLinkButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LinkButtonAccessiblePrivateProtocol`
    /// `GtkLinkButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: LinkButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLinkButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLinkButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkLinkButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLinkButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLinkButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLinkButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLinkButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no LinkButtonAccessiblePrivate properties

// MARK: - no signals


public extension LinkButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkLinkButtonAccessiblePrivate.self) }

}



// MARK: - LinkButtonClass Record

/// The `LinkButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonClass`.
/// Alternatively, use `LinkButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkLinkButtonClass` contains only
/// private data.
public protocol LinkButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLinkButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonClass> { get }
}

/// The `LinkButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonClass` instance.
/// It exposes methods that can operate on this data type through `LinkButtonClassProtocol` conformance.
/// Use `LinkButtonClassRef` only as an `unowned` reference to an existing `GtkLinkButtonClass` instance.
///
/// The `GtkLinkButtonClass` contains only
/// private data.
public struct LinkButtonClassRef: LinkButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LinkButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLinkButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LinkButtonClassProtocol`
    init<T: LinkButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LinkButtonClass` type acts as an owner of an underlying `GtkLinkButtonClass` instance.
/// It provides the methods that can operate on this data type through `LinkButtonClassProtocol` conformance.
/// Use `LinkButtonClass` as a strong reference or owner of a `GtkLinkButtonClass` instance.
///
/// The `GtkLinkButtonClass` contains only
/// private data.
open class LinkButtonClass: LinkButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LinkButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLinkButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LinkButtonClassProtocol`
    /// `GtkLinkButtonClass` does not allow reference counting.
    public convenience init<T: LinkButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLinkButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLinkButtonClass`.
    deinit {
        // no reference counting for GtkLinkButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLinkButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLinkButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLinkButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLinkButtonClass>(opaquePointer))
    }



}

// MARK: - no LinkButtonClass properties

// MARK: - no signals


public extension LinkButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonClass> { return ptr.assumingMemoryBound(to: GtkLinkButtonClass.self) }

}



// MARK: - LinkButtonPrivate Record

/// The `LinkButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonPrivate`.
/// Alternatively, use `LinkButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LinkButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLinkButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonPrivate> { get }
}

/// The `LinkButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `LinkButtonPrivateProtocol` conformance.
/// Use `LinkButtonPrivateRef` only as an `unowned` reference to an existing `GtkLinkButtonPrivate` instance.
///

public struct LinkButtonPrivateRef: LinkButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LinkButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLinkButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LinkButtonPrivateProtocol`
    init<T: LinkButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LinkButtonPrivate` type acts as an owner of an underlying `GtkLinkButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `LinkButtonPrivateProtocol` conformance.
/// Use `LinkButtonPrivate` as a strong reference or owner of a `GtkLinkButtonPrivate` instance.
///

open class LinkButtonPrivate: LinkButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LinkButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLinkButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LinkButtonPrivateProtocol`
    /// `GtkLinkButtonPrivate` does not allow reference counting.
    public convenience init<T: LinkButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLinkButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLinkButtonPrivate`.
    deinit {
        // no reference counting for GtkLinkButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLinkButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLinkButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLinkButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLinkButtonPrivate>(opaquePointer))
    }



}

// MARK: - no LinkButtonPrivate properties

// MARK: - no signals


public extension LinkButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonPrivate> { return ptr.assumingMemoryBound(to: GtkLinkButtonPrivate.self) }

}



// MARK: - ListBoxAccessibleClass Record

/// The `ListBoxAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxAccessibleClass`.
/// Alternatively, use `ListBoxAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxAccessibleClass> { get }
}

/// The `ListBoxAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxAccessibleClassProtocol` conformance.
/// Use `ListBoxAccessibleClassRef` only as an `unowned` reference to an existing `GtkListBoxAccessibleClass` instance.
///

public struct ListBoxAccessibleClassRef: ListBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxAccessibleClassProtocol`
    init<T: ListBoxAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxAccessibleClass` type acts as an owner of an underlying `GtkListBoxAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ListBoxAccessibleClassProtocol` conformance.
/// Use `ListBoxAccessibleClass` as a strong reference or owner of a `GtkListBoxAccessibleClass` instance.
///

open class ListBoxAccessibleClass: ListBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxAccessibleClassProtocol`
    /// `GtkListBoxAccessibleClass` does not allow reference counting.
    public convenience init<T: ListBoxAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkListBoxAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkListBoxAccessibleClass`.
    deinit {
        // no reference counting for GtkListBoxAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ListBoxAccessibleClass properties

// MARK: - no signals


public extension ListBoxAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxAccessibleClass> { return ptr.assumingMemoryBound(to: GtkListBoxAccessibleClass.self) }

}



// MARK: - ListBoxAccessiblePrivate Record

/// The `ListBoxAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxAccessiblePrivate`.
/// Alternatively, use `ListBoxAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxAccessiblePrivate> { get }
}

/// The `ListBoxAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ListBoxAccessiblePrivateProtocol` conformance.
/// Use `ListBoxAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkListBoxAccessiblePrivate` instance.
///

public struct ListBoxAccessiblePrivateRef: ListBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxAccessiblePrivateProtocol`
    init<T: ListBoxAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxAccessiblePrivate` type acts as an owner of an underlying `GtkListBoxAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ListBoxAccessiblePrivateProtocol` conformance.
/// Use `ListBoxAccessiblePrivate` as a strong reference or owner of a `GtkListBoxAccessiblePrivate` instance.
///

open class ListBoxAccessiblePrivate: ListBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxAccessiblePrivateProtocol`
    /// `GtkListBoxAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ListBoxAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkListBoxAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkListBoxAccessiblePrivate`.
    deinit {
        // no reference counting for GtkListBoxAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ListBoxAccessiblePrivate properties

// MARK: - no signals


public extension ListBoxAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkListBoxAccessiblePrivate.self) }

}



// MARK: - ListBoxClass Record

/// The `ListBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxClass`.
/// Alternatively, use `ListBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxClass> { get }
}

/// The `ListBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxClassProtocol` conformance.
/// Use `ListBoxClassRef` only as an `unowned` reference to an existing `GtkListBoxClass` instance.
///

public struct ListBoxClassRef: ListBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxClassProtocol`
    init<T: ListBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxClass` type acts as an owner of an underlying `GtkListBoxClass` instance.
/// It provides the methods that can operate on this data type through `ListBoxClassProtocol` conformance.
/// Use `ListBoxClass` as a strong reference or owner of a `GtkListBoxClass` instance.
///

open class ListBoxClass: ListBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxClassProtocol`
    /// `GtkListBoxClass` does not allow reference counting.
    public convenience init<T: ListBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkListBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkListBoxClass`.
    deinit {
        // no reference counting for GtkListBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxClass>(opaquePointer))
    }



}

// MARK: - no ListBoxClass properties

// MARK: - no signals


public extension ListBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxClass> { return ptr.assumingMemoryBound(to: GtkListBoxClass.self) }

}



// MARK: - ListBoxRowAccessibleClass Record

/// The `ListBoxRowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRowAccessibleClass`.
/// Alternatively, use `ListBoxRowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxRowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxRowAccessibleClass> { get }
}

/// The `ListBoxRowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowAccessibleClassProtocol` conformance.
/// Use `ListBoxRowAccessibleClassRef` only as an `unowned` reference to an existing `GtkListBoxRowAccessibleClass` instance.
///

public struct ListBoxRowAccessibleClassRef: ListBoxRowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxRowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxRowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxRowAccessibleClassProtocol`
    init<T: ListBoxRowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxRowAccessibleClass` type acts as an owner of an underlying `GtkListBoxRowAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ListBoxRowAccessibleClassProtocol` conformance.
/// Use `ListBoxRowAccessibleClass` as a strong reference or owner of a `GtkListBoxRowAccessibleClass` instance.
///

open class ListBoxRowAccessibleClass: ListBoxRowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxRowAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxRowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxRowAccessibleClassProtocol`
    /// `GtkListBoxRowAccessibleClass` does not allow reference counting.
    public convenience init<T: ListBoxRowAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkListBoxRowAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkListBoxRowAccessibleClass`.
    deinit {
        // no reference counting for GtkListBoxRowAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxRowAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxRowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxRowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxRowAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ListBoxRowAccessibleClass properties

// MARK: - no signals


public extension ListBoxRowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxRowAccessibleClass> { return ptr.assumingMemoryBound(to: GtkListBoxRowAccessibleClass.self) }

}



// MARK: - ListBoxRowClass Record

/// The `ListBoxRowClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRowClass`.
/// Alternatively, use `ListBoxRowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxRowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxRowClass> { get }
}

/// The `ListBoxRowClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRowClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowClassProtocol` conformance.
/// Use `ListBoxRowClassRef` only as an `unowned` reference to an existing `GtkListBoxRowClass` instance.
///

public struct ListBoxRowClassRef: ListBoxRowClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxRowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxRowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxRowClassProtocol`
    init<T: ListBoxRowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxRowClass` type acts as an owner of an underlying `GtkListBoxRowClass` instance.
/// It provides the methods that can operate on this data type through `ListBoxRowClassProtocol` conformance.
/// Use `ListBoxRowClass` as a strong reference or owner of a `GtkListBoxRowClass` instance.
///

open class ListBoxRowClass: ListBoxRowClassProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxRowClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxRowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxRowClassProtocol`
    /// `GtkListBoxRowClass` does not allow reference counting.
    public convenience init<T: ListBoxRowClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkListBoxRowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkListBoxRowClass`.
    deinit {
        // no reference counting for GtkListBoxRowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxRowClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxRowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxRowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxRowClass>(opaquePointer))
    }



}

// MARK: - no ListBoxRowClass properties

// MARK: - no signals


public extension ListBoxRowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxRowClass> { return ptr.assumingMemoryBound(to: GtkListBoxRowClass.self) }

}



// MARK: - ListStoreClass Record

/// The `ListStoreClassProtocol` protocol exposes the methods and properties of an underlying `GtkListStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStoreClass`.
/// Alternatively, use `ListStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListStoreClassProtocol {
    /// Untyped pointer to the underlying `GtkListStoreClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListStoreClass> { get }
}

/// The `ListStoreClassRef` type acts as a lightweight Swift reference to an underlying `GtkListStoreClass` instance.
/// It exposes methods that can operate on this data type through `ListStoreClassProtocol` conformance.
/// Use `ListStoreClassRef` only as an `unowned` reference to an existing `GtkListStoreClass` instance.
///

public struct ListStoreClassRef: ListStoreClassProtocol {
    /// Untyped pointer to the underlying `GtkListStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListStoreClassProtocol`
    init<T: ListStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListStoreClass` type acts as an owner of an underlying `GtkListStoreClass` instance.
/// It provides the methods that can operate on this data type through `ListStoreClassProtocol` conformance.
/// Use `ListStoreClass` as a strong reference or owner of a `GtkListStoreClass` instance.
///

open class ListStoreClass: ListStoreClassProtocol {
    /// Untyped pointer to the underlying `GtkListStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListStoreClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkListStoreClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListStoreClassProtocol`
    /// `GtkListStoreClass` does not allow reference counting.
    public convenience init<T: ListStoreClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkListStoreClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkListStoreClass`.
    deinit {
        // no reference counting for GtkListStoreClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListStoreClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListStoreClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListStoreClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListStoreClass>(opaquePointer))
    }



}

// MARK: - no ListStoreClass properties

// MARK: - no signals


public extension ListStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListStoreClass> { return ptr.assumingMemoryBound(to: GtkListStoreClass.self) }

}



// MARK: - ListStorePrivate Record

/// The `ListStorePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkListStorePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStorePrivate`.
/// Alternatively, use `ListStorePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListStorePrivateProtocol {
    /// Untyped pointer to the underlying `GtkListStorePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListStorePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkListStorePrivate> { get }
}

/// The `ListStorePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkListStorePrivate` instance.
/// It exposes methods that can operate on this data type through `ListStorePrivateProtocol` conformance.
/// Use `ListStorePrivateRef` only as an `unowned` reference to an existing `GtkListStorePrivate` instance.
///

public struct ListStorePrivateRef: ListStorePrivateProtocol {
    /// Untyped pointer to the underlying `GtkListStorePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListStorePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListStorePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListStorePrivateProtocol`
    init<T: ListStorePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListStorePrivate` type acts as an owner of an underlying `GtkListStorePrivate` instance.
/// It provides the methods that can operate on this data type through `ListStorePrivateProtocol` conformance.
/// Use `ListStorePrivate` as a strong reference or owner of a `GtkListStorePrivate` instance.
///

open class ListStorePrivate: ListStorePrivateProtocol {
    /// Untyped pointer to the underlying `GtkListStorePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListStorePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkListStorePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListStorePrivateProtocol`
    /// `GtkListStorePrivate` does not allow reference counting.
    public convenience init<T: ListStorePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkListStorePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkListStorePrivate`.
    deinit {
        // no reference counting for GtkListStorePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListStorePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListStorePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListStorePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStorePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListStorePrivate>(opaquePointer))
    }



}

// MARK: - no ListStorePrivate properties

// MARK: - no signals


public extension ListStorePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListStorePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkListStorePrivate> { return ptr.assumingMemoryBound(to: GtkListStorePrivate.self) }

}



// MARK: - LockButtonAccessibleClass Record

/// The `LockButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonAccessibleClass`.
/// Alternatively, use `LockButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLockButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonAccessibleClass> { get }
}

/// The `LockButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LockButtonAccessibleClassProtocol` conformance.
/// Use `LockButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkLockButtonAccessibleClass` instance.
///

public struct LockButtonAccessibleClassRef: LockButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LockButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLockButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LockButtonAccessibleClassProtocol`
    init<T: LockButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LockButtonAccessibleClass` type acts as an owner of an underlying `GtkLockButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `LockButtonAccessibleClassProtocol` conformance.
/// Use `LockButtonAccessibleClass` as a strong reference or owner of a `GtkLockButtonAccessibleClass` instance.
///

open class LockButtonAccessibleClass: LockButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LockButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLockButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LockButtonAccessibleClassProtocol`
    /// `GtkLockButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: LockButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLockButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLockButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkLockButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLockButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLockButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLockButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLockButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no LockButtonAccessibleClass properties

// MARK: - no signals


public extension LockButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkLockButtonAccessibleClass.self) }

}



// MARK: - LockButtonAccessiblePrivate Record

/// The `LockButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonAccessiblePrivate`.
/// Alternatively, use `LockButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLockButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonAccessiblePrivate> { get }
}

/// The `LockButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `LockButtonAccessiblePrivateProtocol` conformance.
/// Use `LockButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkLockButtonAccessiblePrivate` instance.
///

public struct LockButtonAccessiblePrivateRef: LockButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LockButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLockButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LockButtonAccessiblePrivateProtocol`
    init<T: LockButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LockButtonAccessiblePrivate` type acts as an owner of an underlying `GtkLockButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `LockButtonAccessiblePrivateProtocol` conformance.
/// Use `LockButtonAccessiblePrivate` as a strong reference or owner of a `GtkLockButtonAccessiblePrivate` instance.
///

open class LockButtonAccessiblePrivate: LockButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LockButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLockButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LockButtonAccessiblePrivateProtocol`
    /// `GtkLockButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: LockButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLockButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLockButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkLockButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLockButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLockButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLockButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLockButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no LockButtonAccessiblePrivate properties

// MARK: - no signals


public extension LockButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkLockButtonAccessiblePrivate.self) }

}



// MARK: - LockButtonClass Record

/// The `LockButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonClass`.
/// Alternatively, use `LockButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLockButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonClass> { get }
}

/// The `LockButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonClass` instance.
/// It exposes methods that can operate on this data type through `LockButtonClassProtocol` conformance.
/// Use `LockButtonClassRef` only as an `unowned` reference to an existing `GtkLockButtonClass` instance.
///

public struct LockButtonClassRef: LockButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LockButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLockButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LockButtonClassProtocol`
    init<T: LockButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LockButtonClass` type acts as an owner of an underlying `GtkLockButtonClass` instance.
/// It provides the methods that can operate on this data type through `LockButtonClassProtocol` conformance.
/// Use `LockButtonClass` as a strong reference or owner of a `GtkLockButtonClass` instance.
///

open class LockButtonClass: LockButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LockButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLockButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LockButtonClassProtocol`
    /// `GtkLockButtonClass` does not allow reference counting.
    public convenience init<T: LockButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLockButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLockButtonClass`.
    deinit {
        // no reference counting for GtkLockButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLockButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLockButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLockButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLockButtonClass>(opaquePointer))
    }



}

// MARK: - no LockButtonClass properties

// MARK: - no signals


public extension LockButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonClass> { return ptr.assumingMemoryBound(to: GtkLockButtonClass.self) }

}



// MARK: - LockButtonPrivate Record

/// The `LockButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonPrivate`.
/// Alternatively, use `LockButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLockButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonPrivate> { get }
}

/// The `LockButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `LockButtonPrivateProtocol` conformance.
/// Use `LockButtonPrivateRef` only as an `unowned` reference to an existing `GtkLockButtonPrivate` instance.
///

public struct LockButtonPrivateRef: LockButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LockButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLockButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LockButtonPrivateProtocol`
    init<T: LockButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LockButtonPrivate` type acts as an owner of an underlying `GtkLockButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `LockButtonPrivateProtocol` conformance.
/// Use `LockButtonPrivate` as a strong reference or owner of a `GtkLockButtonPrivate` instance.
///

open class LockButtonPrivate: LockButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LockButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkLockButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LockButtonPrivateProtocol`
    /// `GtkLockButtonPrivate` does not allow reference counting.
    public convenience init<T: LockButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLockButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLockButtonPrivate`.
    deinit {
        // no reference counting for GtkLockButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLockButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLockButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLockButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLockButtonPrivate>(opaquePointer))
    }



}

// MARK: - no LockButtonPrivate properties

// MARK: - no signals


public extension LockButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonPrivate> { return ptr.assumingMemoryBound(to: GtkLockButtonPrivate.self) }

}



// MARK: - MenuAccessibleClass Record

/// The `MenuAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAccessibleClass`.
/// Alternatively, use `MenuAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenuAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuAccessibleClass> { get }
}

/// The `MenuAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuAccessibleClassProtocol` conformance.
/// Use `MenuAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuAccessibleClass` instance.
///

public struct MenuAccessibleClassRef: MenuAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenuAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuAccessibleClassProtocol`
    init<T: MenuAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuAccessibleClass` type acts as an owner of an underlying `GtkMenuAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `MenuAccessibleClassProtocol` conformance.
/// Use `MenuAccessibleClass` as a strong reference or owner of a `GtkMenuAccessibleClass` instance.
///

open class MenuAccessibleClass: MenuAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkMenuAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MenuAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenuAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuAccessibleClassProtocol`
    /// `GtkMenuAccessibleClass` does not allow reference counting.
    public convenience init<T: MenuAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkMenuAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkMenuAccessibleClass`.
    deinit {
        // no reference counting for GtkMenuAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenuAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenuAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenuAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenuAccessibleClass>(opaquePointer))
    }



}

// MARK: - no MenuAccessibleClass properties

// MARK: - no signals


public extension MenuAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuAccessibleClass> { return ptr.assumingMemoryBound(to: GtkMenuAccessibleClass.self) }

}



